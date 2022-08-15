.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.super Ljava/lang/Object;
.source "BleCompanionDeviceScanner.java"

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
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;,
        Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;
    }
.end annotation


# static fields
.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

.field public final mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

.field public final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field public mScanning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    new-instance p1, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    invoke-direct {p1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-void
.end method

.method public static nameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "MATCH_LOST"

    goto :goto_0

    :cond_1
    const-string v0, "FIRST_MATCH"

    goto :goto_0

    :cond_2
    const-string v0, "ALL_MATCHES"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBleState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :goto_0
    return-void
.end method

.method public final enforceInitialized()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceFound(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceLost(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->restartScan()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    new-instance p2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restartScan()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    return-void
.end method

.method public final startScan()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v1}, Lcom/android/server/companion/AssociationStore;->getAssociations()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BLE is not available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scan is already in progress."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopScanIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompanionDevice_PresenceMonitor_BLE"

    const-string v2, "Exception while stopping BLE scanning"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method
