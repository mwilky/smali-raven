.class abstract Lcom/google/common/collect/AbstractMapBasedMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient totalSize:I


# direct methods
.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)V

    return-void
.end method

.method private static iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private removeValuesForKey(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return-void
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method final setMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return p0
.end method

.method abstract wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method
