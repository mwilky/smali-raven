.class public final synthetic Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkStatsService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/NetworkStatsService;

    check-cast p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsService;->lambda$registerGlobalAlert$1$NetworkStatsService(Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V

    return-void
.end method
