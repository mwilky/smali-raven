.class public final Lcom/google/android/systemui/columbus/gates/UsbState;
.super Lcom/google/android/systemui/columbus/gates/TransientGate;
.source "UsbState.kt"


# instance fields
.field public final gateDuration:J

.field public usbConnected:Z

.field public final usbReceiver:Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-wide p3, p0, Lcom/google/android/systemui/columbus/gates/UsbState;->gateDuration:J

    new-instance p1, Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/UsbState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-string v3, "connected"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/UsbState;->usbConnected:Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/gates/UsbState$usbReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
