.class Lcom/android/server/BluetoothModeChangeHelper$1;
.super Ljava/lang/Object;
.source "BluetoothModeChangeHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothModeChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothModeChangeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothModeChangeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/BluetoothModeChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/BluetoothModeChangeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothModeChangeHelper;->access$102(Lcom/android/server/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/BluetoothModeChangeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothModeChangeHelper;->access$002(Lcom/android/server/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/BluetoothModeChangeHelper;

    invoke-static {v1, v0}, Lcom/android/server/BluetoothModeChangeHelper;->access$102(Lcom/android/server/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/BluetoothModeChangeHelper;

    invoke-static {v1, v0}, Lcom/android/server/BluetoothModeChangeHelper;->access$002(Lcom/android/server/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method
