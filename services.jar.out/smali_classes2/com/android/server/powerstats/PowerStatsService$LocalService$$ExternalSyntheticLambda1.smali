.class public final synthetic Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/powerstats/PowerStatsService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/powerstats/PowerStatsService;

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    check-cast p2, [I

    invoke-static {v0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->lambda$getStateResidencyAsync$1(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method
