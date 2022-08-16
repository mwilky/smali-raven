.class public abstract Lcom/google/common/collect/Maps$DescendingMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient comparator:Lcom/google/common/collect/Ordering;

.field public transient entrySet:Lcom/google/common/collect/Maps$DescendingMap$1EntrySetImpl;

.field public transient navigableKeySet:Lcom/google/common/collect/Maps$NavigableKeySet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->comparator:Lcom/google/common/collect/Ordering;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    :cond_0
    instance-of v1, v0, Lcom/google/common/collect/Ordering;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/common/collect/Ordering;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/common/collect/ComparatorOrdering;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->comparator:Lcom/google/common/collect/Ordering;

    :cond_2
    return-object v0
.end method

.method public final delegate()Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object p0
.end method

.method public final delegate()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object p0
.end method

.method public final descendingKeySet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public final descendingMap()Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->entrySet:Lcom/google/common/collect/Maps$DescendingMap$1EntrySetImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$DescendingMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$DescendingMap$1EntrySetImpl;-><init>(Lcom/google/common/collect/Maps$DescendingMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->entrySet:Lcom/google/common/collect/Maps$DescendingMap$1EntrySetImpl;

    :cond_0
    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$DescendingMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet:Lcom/google/common/collect/Maps$NavigableKeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$NavigableKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet:Lcom/google/common/collect/Maps$NavigableKeySet;

    :cond_0
    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Maps$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/google/common/collect/AbstractNavigableMap;

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Maps$DescendingMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
