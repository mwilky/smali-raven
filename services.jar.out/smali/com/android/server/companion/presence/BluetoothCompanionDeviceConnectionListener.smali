.class public Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothCompanionDeviceConnectionListener.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
    }
.end annotation


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/MacAddress;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    iput-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    iget-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    :cond_0
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 0

    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Address changes are not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceDisconnected(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
