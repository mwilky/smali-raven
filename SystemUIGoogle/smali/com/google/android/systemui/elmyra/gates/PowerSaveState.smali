.class public final Lcom/google/android/systemui/elmyra/gates/PowerSaveState;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "PowerSaveState.java"


# instance fields
.field public mBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mIsDeviceInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/PowerSaveState;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    const-class p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBatterySaverEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mIsDeviceInteractive:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onActivate()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBatterySaverEnabled:Z

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mIsDeviceInteractive:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->mReceiver:Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
