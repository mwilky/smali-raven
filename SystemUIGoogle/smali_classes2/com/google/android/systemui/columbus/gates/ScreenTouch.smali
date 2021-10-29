.class public final Lcom/google/android/systemui/columbus/gates/ScreenTouch;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "ScreenTouch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/ScreenTouch$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/gates/ScreenTouch$Companion;


# instance fields
.field private final clearBlocking:Ljava/lang/Runnable;

.field private final gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

.field private final handler:Landroid/os/Handler;

.field private final inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

.field private inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final powerState:Lcom/google/android/systemui/columbus/gates/PowerState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->Companion:Lcom/google/android/systemui/columbus/gates/ScreenTouch$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$inputEventListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch$clearBlocking$1;-><init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getPowerState$p(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)Lcom/google/android/systemui/columbus/gates/PowerState;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    return-object p0
.end method

.method public static final synthetic access$onInputEvent(Lcom/google/android/systemui/columbus/gates/ScreenTouch;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static final synthetic access$startListeningForTouch(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->startListeningForTouch()V

    return-void
.end method

.method public static final synthetic access$stopListeningForTouch(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->stopListeningForTouch()V

    return-void
.end method

.method private final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->clearBlocking:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private final startListeningForTouch()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v1, 0x0

    const-string v2, "Quick Tap"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_0
    return-void
.end method

.method private final stopListeningForTouch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    :goto_1
    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->startListeningForTouch()V

    :cond_0
    return-void
.end method

.method protected onDeactivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->gateListener:Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->stopListeningForTouch()V

    return-void
.end method
