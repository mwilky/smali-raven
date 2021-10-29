.class public Lcom/android/server/utils/SnapshotCache$Auto;
.super Lcom/android/server/utils/SnapshotCache;
.source "SnapshotCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/utils/Snappable<",
        "TT;>;>",
        "Lcom/android/server/utils/SnapshotCache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/utils/Watchable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/utils/Snappable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/SnapshotCache$Auto;->mSource:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/Snappable;

    invoke-interface {v0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/Snappable;

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache$Auto;->createSnapshot()Lcom/android/server/utils/Snappable;

    move-result-object v0

    return-object v0
.end method
