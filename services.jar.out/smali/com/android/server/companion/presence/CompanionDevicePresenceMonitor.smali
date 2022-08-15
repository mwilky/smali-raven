.class public Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
.super Ljava/lang/Object;
.source "CompanionDevicePresenceMonitor.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;
.implements Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
.implements Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;,
        Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;
    }
.end annotation


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

.field public final mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

.field public final mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

.field public final mConnectedBtDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mNearbyBleDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mReportedSelfManagedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

.field public final mSimulated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSimulated(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monDeviceGone(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    new-instance v0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;-><init>(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    iput-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    new-instance p2, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-direct {p2, p1, p0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V

    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    new-instance p2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p2, p1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V

    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither Shell nor Root"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "Companion Device Present: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "<empty>\n"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, "  Connected Bluetooth Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "    "

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "  Nearby BLE Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_4
    :goto_3
    const-string v2, "  Self-Reported Devices: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v2, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public final enforceAssociationExists(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->init(Landroid/bluetooth/BluetoothAdapter;)V

    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    :cond_0
    const-string p1, "CompanionDevice_PresenceMonitor"

    const-string v0, "BluetoothAdapter is NOT available."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public isDevicePresent(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBleCompanionDeviceFound(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBleCompanionDeviceLost(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceConnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public final onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceDisappeared(I)V

    return-void
.end method

.method public final onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceAppeared(I)V

    return-void
.end method

.method public onSelfManagedDeviceConnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceReporterBinderDied(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public simulateDeviceAppeared(I)V
    .locals 2

    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    return-void
.end method

.method public simulateDeviceDisappeared(I)V
    .locals 2

    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method
