.class public Lcom/android/settings/network/TetherEnabler;
.super Ljava/lang/Object;
.source "TetherEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;,
        Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnableForTether:Z

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothTetheringStoppedByUser:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private final mEthernetRegex:Ljava/lang/String;

.field final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTetheringManager:Landroid/net/TetheringManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherEnabler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/widget/SwitchWidgetController;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/network/TetherEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$2;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const p3, 0x104023f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/TetherEnabler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->handleWifiApStateChanged(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/TetherEnabler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->handleBluetoothStateChanged(I)Z

    move-result p0

    return p0
.end method

.method private handleBluetoothStateChanged(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->startTethering(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    const/4 p0, 0x1

    return p0
.end method

.method private handleWifiApStateChanged(I)Z
    .locals 0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xe

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "TetherEnabler"

    const-string p1, "Wifi AP is failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isTethering(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSwitchCheckedInternal(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    return-void

    :catch_0
    const-string p0, "TetherEnabler"

    const-string p1, "failed to stop switch widget listener when set check internally"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSwitchEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;->onTetherStateUpdated(I)V

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getTetheringState([Ljava/lang/String;)I
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    array-length v6, v1

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v1, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/network/TetherEnabler;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverEnabled:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/settings/network/TetherEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$1;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    new-instance v0, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;-><init>(Lcom/android/settings/network/TetherEnabler;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mTetheringEventCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->startTethering(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    :goto_0
    return v1
.end method

.method public removeListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public startTethering(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    sget-boolean p1, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "TetherEnabler"

    const-string v0, "Turn on bluetooth first."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothEnableForTether:Z

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/TetherEnabler;->mBluetoothTetheringStoppedByUser:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateState([Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/network/TetherEnabler;->getTetheringState([Ljava/lang/String;)I

    move-result p1

    sget-boolean v0, Lcom/android/settings/network/TetherEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/network/TetherEnabler;->setSwitchCheckedInternal(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/network/TetherEnabler;->setSwitchEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/network/TetherEnabler;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

    invoke-interface {v2, p1}, Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;->onTetherStateUpdated(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
