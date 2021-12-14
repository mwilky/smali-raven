.class Lcom/android/server/am/CacheOomRanker$1;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CacheOomRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CacheOomRanker;


# direct methods
.method constructor <init>(Lcom/android/server/am/CacheOomRanker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v0}, Lcom/android/server/am/CacheOomRanker;->access$500(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "use_oom_re_ranking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$600(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "oom_re_ranking_number_to_re_rank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$700(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "oom_re_ranking_preserve_top_n_apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$800(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "oom_re_ranking_rss_use_frequent_rss"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$900(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "oom_re_ranking_rss_update_rate_ms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$1000(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "oom_re_ranking_lru_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$1100(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "oom_re_ranking_uses_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$1200(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "oom_re_ranking_rss_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->access$1300(Lcom/android/server/am/CacheOomRanker;)V

    :cond_7
    :goto_1
    goto/16 :goto_0

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
