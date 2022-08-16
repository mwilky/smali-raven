.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;
.implements Lcom/google/android/systemui/smartspace/InterceptingViewPager$EventProxy;
.implements Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;
.implements Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delegateEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->$r8$lambda$Kinb8UkpjhBhKntC-OQxRM-Ndiw(Lcom/google/android/systemui/smartspace/InterceptingViewPager;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onChange(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsLowLight:Z

    if-ne p1, v2, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsLowLight:Z

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->AMBIENT_LIGHT_TO_DARK:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->AMBIENT_LIGHT_TO_LIGHT:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    :goto_1
    invoke-interface {p1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsLowLight:Z

    const-string v2, "LowLightDockManager"

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "enter low light, start dozing"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_2

    :cond_5
    sget-boolean p1, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "exit low light, stop dozing"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "Exit low light condition"

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->dispatchDockStateToClients()V

    :goto_3
    return-void
.end method

.method public requestTopUi(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda27;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHeadsUpGoingAwayAnimationsAllowed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHeadsUpGoingAwayAnimationsAllowed:Z

    return-void
.end method
