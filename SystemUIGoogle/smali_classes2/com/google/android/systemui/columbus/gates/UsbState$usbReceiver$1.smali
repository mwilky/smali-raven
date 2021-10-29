.class public final Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/UsbState;-><init>(Landroid/content/Context;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/UsbState;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/UsbState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/UsbState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/UsbState;

    const/4 p1, 0x0

    const-string v0, "connected"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/UsbState;->access$getUsbConnected$p(Lcom/google/android/systemui/columbus/gates/UsbState;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-static {p0, p1}, Lcom/google/android/systemui/columbus/gates/UsbState;->access$setUsbConnected$p(Lcom/google/android/systemui/columbus/gates/UsbState;Z)V

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/UsbState;->access$getGateDuration$p(Lcom/google/android/systemui/columbus/gates/UsbState;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;->blockForMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method
