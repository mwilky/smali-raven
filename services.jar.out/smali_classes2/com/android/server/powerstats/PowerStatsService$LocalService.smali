.class final Lcom/android/server/powerstats/PowerStatsService$LocalService;
.super Landroid/power/PowerStatsInternal;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/power/PowerStatsInternal;-><init>()V

    new-instance p1, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$getEnergyConsumedAsync$0(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->access$700(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic lambda$getStateResidencyAsync$1(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->access$600(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic lambda$readEnergyMeterAsync$2(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->access$500(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method


# virtual methods
.method public getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0
.end method

.method public getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    return-object v0
.end method

.method public getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    return-object v0
.end method

.method public getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/StateResidencyResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0
.end method

.method public readEnergyMeterAsync([I)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyMeasurement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v0
.end method
