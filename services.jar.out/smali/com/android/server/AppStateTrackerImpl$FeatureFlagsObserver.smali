.class Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureFlagsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method isForcedAppStandbyEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string v1, "forced_app_standby_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method isForcedAppStandbyForSmallBatteryEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const-string v0, "forced_app_standby_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v2, v2, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    if-ne v2, v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iput-boolean v0, v2, Lcom/android/server/AppStateTrackerImpl;->mForcedAppStandbyEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$200(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForcedAppStandbyFeatureFlagChanged()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const-string v0, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v1}, Lcom/android/server/AppStateTrackerImpl;->access$100(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-boolean v2, v2, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-ne v2, v0, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iput-boolean v0, v2, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v2}, Lcom/android/server/AppStateTrackerImpl;->access$300(Lcom/android/server/AppStateTrackerImpl;)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    const-string v0, "AppStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feature flag uri encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method register()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$000(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->access$000(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "forced_app_standby_for_small_battery_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
