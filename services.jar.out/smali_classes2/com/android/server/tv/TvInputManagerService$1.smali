.class Lcom/android/server/tv/TvInputManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v0, p1}, Lcom/android/server/tv/TvInputManagerService;->access$500(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2, v0}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    return-void
.end method
