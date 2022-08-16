.class public final Lcom/android/systemui/util/collection/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRingBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RingBuffer.kt\ncom/android/systemui/util/collection/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"
.end annotation


# instance fields
.field public final buffer:Ljava/util/ArrayList;

.field public final factory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final maxSize:I

.field public omega:J


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/collection/RingBuffer;->maxSize:I

    iput-object p2, p0, Lcom/android/systemui/util/collection/RingBuffer;->factory:Lkotlin/jvm/functions/Function0;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/util/collection/RingBuffer;->buffer:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final advance()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->omega:J

    iget v2, p0, Lcom/android/systemui/util/collection/RingBuffer;->maxSize:I

    int-to-long v2, v2

    rem-long v2, v0, v2

    long-to-int v2, v2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->omega:J

    iget-object v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->factory:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/collection/RingBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/collection/RingBuffer;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->omega:J

    iget v2, p0, Lcom/android/systemui/util/collection/RingBuffer;->maxSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/collection/RingBuffer;->buffer:Ljava/util/ArrayList;

    int-to-long v3, p1

    add-long/2addr v0, v3

    iget p0, p0, Lcom/android/systemui/util/collection/RingBuffer;->maxSize:I

    int-to-long p0, p0

    rem-long/2addr v0, p0

    long-to-int p0, v0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index "

    const-string v1, " is out of bounds"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSize()I
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/util/collection/RingBuffer;->omega:J

    iget p0, p0, Lcom/android/systemui/util/collection/RingBuffer;->maxSize:I

    int-to-long v2, p0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int p0, v0

    :cond_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/collection/RingBuffer$iterator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/collection/RingBuffer$iterator$1;-><init>(Lcom/android/systemui/util/collection/RingBuffer;)V

    return-object v0
.end method
