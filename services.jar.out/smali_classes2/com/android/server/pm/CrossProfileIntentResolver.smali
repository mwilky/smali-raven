.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "CrossProfileIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/WatchedIntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentResolver$1;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method protected getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 1

    new-array v0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
