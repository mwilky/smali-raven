.class public final synthetic Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/clock/ClockManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/clock/ClockManager;

    check-cast p1, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    check-cast p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    iget-object p2, p2, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    instance-of p0, p2, Lcom/android/keyguard/clock/DefaultClockController;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1, p2}, Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;->onClockChanged(Lcom/android/systemui/plugins/ClockPlugin;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
