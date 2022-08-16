.class public final Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;
.super Ljava/lang/Object;
.source "ScreenTouch.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/ScreenTouch;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/ScreenTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->powerState:Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->mReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver$1;

    invoke-virtual {p1}, Landroid/view/BatchedInputEventReceiver;->dispose()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    :goto_1
    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;->startListeningForTouch()V

    :goto_2
    return-void
.end method
