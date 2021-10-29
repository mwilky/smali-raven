.class public Lcom/android/server/utils/WatchedArraySet;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArraySet.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field private final mObserver:Lcom/android/server/utils/Watcher;

.field private final mStorage:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1, p2}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method private onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedArraySet;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->seal()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/Watchable;

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {v0, v1}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return v0
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAll(Lcom/android/server/utils/WatchedArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public clear()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copyTo(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    move-object v1, p1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, v1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->registeredObserverCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->registeredObserverCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    :cond_1
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
