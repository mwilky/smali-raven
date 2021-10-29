.class final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"


# instance fields
.field private mBlurDisabledSetting:Z

.field private volatile mBlurEnabled:Z

.field private final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ICrossWindowBlurEnabledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCriticalThermalStatus:Z

.field private mInPowerSaveMode:Z

.field private final mLock:Ljava/lang/Object;

.field private mTunnelModeEnabled:Z

.field private mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    new-instance v1, Lcom/android/server/wm/BlurController$1;

    sget-object v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/wm/BlurController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "disable_window_blurs"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/BlurController$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/Handler;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    new-instance v2, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BlurController;)V

    invoke-virtual {p2, v2}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    invoke-virtual {p2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeListener:Landroid/view/TunnelModeEnabledListener;

    invoke-static {v0}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/BlurController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/wm/BlurController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/BlurController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->getBlurDisabledSetting()Z

    move-result v0

    return v0
.end method

.method private getBlurDisabledSetting()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_window_blurs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private notifyBlurEnabledChangedLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/ICrossWindowBlurEnabledListener;

    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private updateBlurEnabled()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    if-ne v2, v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/BlurController;->notifyBlurEnabledChangedLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getBlurEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    return v0
.end method

.method public synthetic lambda$new$0$BlurController(I)V
    .locals 1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    invoke-direct {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method

.method registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->getBlurEnabled()Z

    move-result v0

    return v0
.end method

.method unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
