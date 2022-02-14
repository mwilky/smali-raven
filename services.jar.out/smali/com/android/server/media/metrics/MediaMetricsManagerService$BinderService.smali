.class final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "MediaMetricsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/metrics/MediaMetricsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;Lcom/android/server/media/metrics/MediaMetricsManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    return-void
.end method

.method private getSessionIdInternal(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$100(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v3, "metrics.manager"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v4, "create"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return-object v1
.end method

.method private inList([Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private listNameToLoggingLevel(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "player_metrics_per_app_attribution_allowlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "player_metrics_app_blocklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "player_metrics_app_allowlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v2, 0x1869f

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 v0, 0x3e8

    return v0

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_3
        -0x4cdbea91 -> :sswitch_2
        -0x2f080b4d -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loggingLevel()I
    .locals 9

    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$200(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v6, "media"

    const-string/jumbo v7, "media_metrics_mode"

    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$302(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    monitor-exit v0

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x1869f

    if-nez v2, :cond_2

    monitor-exit v0

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    array-length v7, v6

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$400(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "player_metrics_app_blocklist"

    invoke-static {v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$500(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$402(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$400(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    monitor-exit v0

    return v4

    :cond_4
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$400(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v7, "player_metrics_app_blocklist"

    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    :cond_5
    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$600(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v8, "player_metrics_per_app_attribution_blocklist"

    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$500(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$602(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$600(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_6

    monitor-exit v0

    return v4

    :cond_6
    iget-object v4, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$600(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "player_metrics_per_app_attribution_blocklist"

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    :cond_7
    monitor-exit v0

    return v5

    :cond_8
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_d

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$700(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v5, "player_metrics_per_app_attribution_allowlist"

    invoke-static {v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$500(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$702(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$700(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9

    monitor-exit v0

    return v4

    :cond_9
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v3}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$700(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v5, "player_metrics_per_app_attribution_allowlist"

    invoke-direct {p0, v6, v3, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    :cond_a
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$800(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    const-string/jumbo v7, "player_metrics_app_allowlist"

    invoke-static {v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$500(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$802(Lcom/android/server/media/metrics/MediaMetricsManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$800(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_b

    monitor-exit v0

    return v4

    :cond_b
    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$800(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/util/List;

    move-result-object v5

    const-string/jumbo v7, "player_metrics_app_allowlist"

    invoke-direct {p0, v6, v5, v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    monitor-exit v0

    return v4

    :cond_c
    monitor-exit v0

    return v4

    :cond_d
    monitor-exit v0

    return v4

    :cond_e
    :goto_1
    const-string v5, "MediaMetricsManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty package from uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->access$300(Lcom/android/server/media/metrics/MediaMetricsManagerService;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_f

    const/16 v4, 0x3e8

    goto :goto_2

    :cond_f
    nop

    :goto_2
    monitor-exit v0

    return v4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->inList([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->listNameToLoggingLevel(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPlaybackSessionId(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingSessionId(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x143

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x142

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    const/16 v2, 0x144

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
