.class public Lcom/android/server/utils/WatchedSparseBooleanArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseBooleanArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field private final mStorage:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iget-object v0, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private onChanged()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->seal()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snapshot destination is not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public append(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public copyFrom(Landroid/util/SparseBooleanArray;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->clear()V

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copyTo(Landroid/util/SparseBooleanArray;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    iget-object v2, v0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public get(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOfKey(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public put(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public removeAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    return-void
.end method

.method public setKeyAt(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->setKeyAt(II)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    :cond_0
    return-void
.end method

.method public setValueAt(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->onChanged()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseBooleanArray;
    .locals 1

    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->seal()V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;->snapshot()Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->snapshot(Lcom/android/server/utils/WatchedSparseBooleanArray;Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public untrackedStorage()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public valueAt(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    return v0
.end method
