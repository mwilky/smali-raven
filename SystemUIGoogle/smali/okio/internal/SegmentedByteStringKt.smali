.class public final Lokio/internal/SegmentedByteStringKt;
.super Ljava/lang/Object;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n59#1,12:229\n81#1,14:241\n81#1,14:255\n81#1,14:269\n59#1,12:283\n1#2:228\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n*L\n142#1:229,12\n153#1:241,14\n175#1:255,14\n195#1:269,14\n216#1:283,12\n*E\n"
.end annotation


# direct methods
.method public static final segment(Lokio/SegmentedByteString;I)I
    .locals 4

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    not-int v2, v2

    :goto_1
    return v2
.end method
