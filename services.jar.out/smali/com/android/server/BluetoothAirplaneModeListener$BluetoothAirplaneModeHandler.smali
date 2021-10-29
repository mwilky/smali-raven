.class Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
.super Landroid/os/Handler;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothAirplaneModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothAirplaneModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAirplaneModeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener;->handleAirplaneModeChange()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
