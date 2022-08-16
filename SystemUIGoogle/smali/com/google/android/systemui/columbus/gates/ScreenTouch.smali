.class public final Lcom/google/android/systemui/columbus/gates/ScreenTouch;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "ScreenTouch.kt"


# instance fields
.field public final clearBlocking:Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

.field public final gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

.field public final handler:Landroid/os/Handler;

.field public final inputEventListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public final powerState:Lcom/google/android/systemui/columbus/gates/PowerState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->startListeningForTouch()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    invoke-virtual {v0}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->dispose()V

    :goto_1
    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 p1, 0xfa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    add-int/lit16 p1, p1, 0x1f4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final startListeningForTouch()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    const-string v1, "Quick Tap"

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;

    new-instance v4, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v4, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_0
    return-void
.end method
