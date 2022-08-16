.class public final Lcom/google/android/systemui/elmyra/gates/UsbState;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source "UsbState.java"


# instance fields
.field public mUsbConnected:Z

.field public final mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Landroid/content/Context;J)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/UsbState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/UsbState;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "connected"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbConnected:Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
