.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;->f$0:Landroid/util/SparseArray;

    check-cast p1, Landroid/app/ProcessMemoryState;

    invoke-static {v0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullProcessMemorySnapshotLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V

    return-void
.end method
