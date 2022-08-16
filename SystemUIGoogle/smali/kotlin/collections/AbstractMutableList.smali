.class public abstract Lkotlin/collections/AbstractMutableList;
.super Ljava/util/AbstractList;
.source "AbstractMutableList.kt"

# interfaces
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    check-cast p0, Lkotlin/collections/ArrayDeque;

    iget v0, p0, Lkotlin/collections/ArrayDeque;->size:I

    if-ltz p1, :cond_9

    if-ge p1, v0, :cond_9

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, p1

    if-lt v0, v2, :cond_0

    array-length v2, p1

    sub-int/2addr v0, v2

    :cond_0
    aget-object v2, p1, v0

    aput-object v1, p1, v0

    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ArrayDeque is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_3

    :cond_3
    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int v2, v0, p1

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v4, v3

    if-lt v2, v4, :cond_4

    array-length v4, v3

    sub-int/2addr v2, v4

    :cond_4
    aget-object v4, v3, v2

    iget v5, p0, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v6, 0x1

    shr-int/2addr v5, v6

    const/4 v7, 0x0

    if-ge p1, v5, :cond_6

    if-lt v2, v0, :cond_5

    add-int/lit8 p1, v0, 0x1

    sub-int/2addr v2, v0

    invoke-static {v3, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    sub-int/2addr v2, v7

    invoke-static {v3, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v6

    aget-object v0, p1, v0

    aput-object v0, p1, v7

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v6

    sub-int/2addr v3, v0

    invoke-static {p1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    aput-object v1, p1, v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->incremented(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->head:I

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    iget v0, p0, Lkotlin/collections/ArrayDeque;->head:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v3, p1

    if-lt v0, v3, :cond_7

    array-length v3, p1

    sub-int/2addr v0, v3

    :cond_7
    if-gt v2, v0, :cond_8

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v3

    invoke-static {p1, v3, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_8
    add-int/lit8 v3, v2, 0x1

    array-length v5, p1

    sub-int/2addr v5, v3

    invoke-static {p1, v3, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v6

    aget-object v3, p1, v7

    aput-object v3, p1, v2

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, v6

    invoke-static {p1, v6, p1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    aput-object v1, p1, v0

    :goto_2
    iget p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    sub-int/2addr p1, v6

    iput p1, p0, Lkotlin/collections/ArrayDeque;->size:I

    move-object v2, v4

    :goto_3
    return-object v2

    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lkotlin/collections/ArrayDeque;

    iget p0, p0, Lkotlin/collections/ArrayDeque;->size:I

    return p0
.end method
