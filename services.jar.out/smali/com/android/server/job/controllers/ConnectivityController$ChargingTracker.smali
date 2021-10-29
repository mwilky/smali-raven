.class final Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mCharging:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isCharging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    goto :goto_0

    :cond_1
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/server/job/controllers/ConnectivityController;->access$600(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startTracking()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$ChargingTracker;->mCharging:Z

    return-void
.end method
