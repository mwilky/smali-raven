.class public Lcom/google/common/collect/Maps$SortedKeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$KeySet<",
        "TK;TV;>;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/Maps$NavigableKeySet;

    iget-object p0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    check-cast p0, Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/Maps$NavigableKeySet;

    iget-object p0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    check-cast p0, Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/Maps$NavigableKeySet;

    iget-object p0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    check-cast p0, Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
