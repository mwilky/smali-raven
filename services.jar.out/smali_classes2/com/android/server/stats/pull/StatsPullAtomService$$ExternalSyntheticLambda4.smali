.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$k66nC0GgsFSmSC1Ioqfar2w3jiQ(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method
