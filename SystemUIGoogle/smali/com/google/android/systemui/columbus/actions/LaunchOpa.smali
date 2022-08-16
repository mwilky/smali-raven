.class public final Lcom/google/android/systemui/columbus/actions/LaunchOpa;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchOpa.kt"


# instance fields
.field public final assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public enableForAnyAssistant:Z

.field public isGestureEnabled:Z

.field public isOpaEnabled:Z

.field public final keyguardManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field public final opaEnabledListener:Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;

.field public final tag:Ljava/lang/String;

.field public final tunable:Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Ldagger/Lazy<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->keyguardManager:Ldagger/Lazy;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p2, "Columbus/LaunchOpa"

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tag:Ljava/lang/String;

    instance-of p2, p4, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz p2, :cond_0

    check-cast p4, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    new-instance p2, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->opaEnabledListener:Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;

    const-string p3, "assist_gesture_enabled"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/columbus/actions/LaunchOpa$settingsObserver$1;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$settingsObserver$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object v1, p7, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v4, p7, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v5, p7, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p7, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    move-object v0, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    new-instance p7, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;

    invoke-direct {p7, p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tunable:Lcom/google/android/systemui/columbus/actions/LaunchOpa$tunable$1;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p8

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-static {p8, p3, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    move p3, p8

    :goto_1
    iput-boolean p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "assist_gesture_any_assistant"

    invoke-static {p1, p3, p8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, p8

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->enableForAnyAssistant:Z

    iget-object p1, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;

    iget-object v2, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p1, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v0, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    iget-object v2, p5, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v2

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0, p8, p5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p7, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p4, p2}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->addOpaEnabledListener(Lcom/google/android/systemui/assist/OpaEnabledListener;)V

    :goto_3
    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, p8

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->collapseShade()V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;->actionId:J

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->keyguardManager:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x78

    goto :goto_1

    :cond_1
    const/16 v2, 0x77

    :goto_1
    const-string/jumbo v3, "triggered_by"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "latency_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x2

    const-string v1, "invocation_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isGestureEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isOpaEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
