.class Lcom/android/server/pm/AppsFilter$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AppsFilter;->makeCache()Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/SnapshotCache<",
        "Lcom/android/server/pm/AppsFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AppsFilter;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter;Lcom/android/server/utils/Watchable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$1;->this$0:Lcom/android/server/pm/AppsFilter;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/AppsFilter;
    .locals 3

    new-instance v0, Lcom/android/server/pm/AppsFilter;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$1;->mSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/AppsFilter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/AppsFilter$1;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilter$1;->createSnapshot()Lcom/android/server/pm/AppsFilter;

    move-result-object v0

    return-object v0
.end method
