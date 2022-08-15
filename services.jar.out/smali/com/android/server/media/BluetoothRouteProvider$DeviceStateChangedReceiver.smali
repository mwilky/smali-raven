.class public Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public final handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object p1

    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p2, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    iget-object p2, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p1, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mremoveActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :sswitch_4
    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x17

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveHearingAidDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    :cond_6
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_7

    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object p2, p1, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveRoute(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x15

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    const/16 p2, 0x1a

    invoke-static {p1, p2}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/BluetoothRouteProvider;I)V

    if-eqz p3, :cond_8

    iget-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p1, p3}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$maddActiveLeAudioDevices(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V

    :cond_8
    iget-object p0, p0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {p0}, Lcom/android/server/media/BluetoothRouteProvider;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothRouteProvider;)V

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x16

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;->handleConnectionStateChanged(ILandroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_5
        -0x2caca392 -> :sswitch_4
        -0x2486726f -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x461dab18 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
