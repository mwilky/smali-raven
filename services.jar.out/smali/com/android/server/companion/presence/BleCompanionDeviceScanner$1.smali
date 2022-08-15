.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;
.super Landroid/content/BroadcastReceiver;
.source "BleCompanionDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;->this$0:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->-$$Nest$mcheckBleState(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    return-void
.end method
