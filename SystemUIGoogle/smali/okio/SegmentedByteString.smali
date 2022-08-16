.class public final Lokio/SegmentedByteString;
.super Lokio/ByteString;
.source "SegmentedByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/SegmentedByteStringKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n59#2,12:133\n59#2,12:145\n100#2:157\n101#2,26:159\n130#2,5:185\n137#2:190\n140#2,3:191\n59#2,8:194\n143#2,6:202\n67#2,4:208\n149#2:212\n59#2,12:213\n153#2:225\n81#2,10:226\n154#2,9:236\n91#2,4:245\n163#2,2:249\n172#2,4:251\n81#2,10:255\n176#2,3:265\n91#2,4:268\n179#2:272\n188#2,8:273\n81#2,10:281\n196#2,3:291\n91#2,4:294\n199#2:298\n203#2,4:299\n211#2,6:303\n59#2,8:309\n217#2,7:317\n67#2,4:324\n224#2,2:328\n1#3:158\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n53#1:133,12\n65#1:145,12\n77#1:157\n77#1:159,26\n79#1:185,5\n81#1:190\n83#1:191,3\n83#1:194,8\n83#1:202,6\n83#1:208,4\n83#1:212\n89#1:213,12\n95#1:225\n95#1:226,10\n95#1:236,9\n95#1:245,4\n95#1:249,2\n102#1:251,4\n102#1:255,10\n102#1:265,3\n102#1:268,4\n102#1:272\n109#1:273,8\n109#1:281,10\n109#1:291,3\n109#1:294,4\n109#1:298\n123#1:299,4\n125#1:303,6\n125#1:309,8\n125#1:317,7\n125#1:324,4\n125#1:328,2\n77#1:158\n*E\n"
.end annotation


# instance fields
.field public final transient directory:[I

.field public final transient segments:[[B


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    iput-object p1, p0, Lokio/SegmentedByteString;->segments:[[B

    iput-object p2, p0, Lokio/SegmentedByteString;->directory:[I

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/SegmentedByteString;->rangeEquals(Lokio/ByteString;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getSize$external__okio__android_common__okio_lib()I
    .locals 1

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v5, v0, v1

    aget v5, v4, v5

    aget v4, v4, v1

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    sub-int v3, v4, v3

    add-int/2addr v3, v5

    :goto_1
    if-ge v5, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v5

    add-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    iput v2, p0, Lokio/ByteString;->hashCode:I

    move v0, v2

    :goto_2
    return v0
.end method

.method public final hex()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final internalGet$external__okio__android_common__okio_lib(I)B
    .locals 7

    iget-object v0, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    iget-object v2, p0, Lokio/SegmentedByteString;->directory:[I

    iget-object p0, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v3, p0

    add-int/2addr v3, v0

    aget v2, v2, v3

    aget-object p0, p0, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    return p0
.end method

.method public final rangeEquals(III[B)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v2

    sub-int/2addr v2, p3

    if-gt p1, v2, :cond_6

    if-ltz p2, :cond_6

    array-length v2, p4

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_0

    goto :goto_4

    :cond_0
    add-int/2addr p3, p1

    invoke-static {p0, p1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v2

    :goto_0
    if-ge p1, p3, :cond_5

    if-nez v2, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    :goto_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    aget v5, v4, v2

    sub-int/2addr v5, v3

    iget-object v6, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v6, v6

    add-int/2addr v6, v2

    aget v4, v4, v6

    add-int/2addr v5, v3

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v5, p1

    sub-int v3, p1, v3

    add-int/2addr v3, v4

    iget-object v4, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_3

    add-int/lit8 v7, v6, 0x1

    add-int v8, v6, v3

    aget-byte v8, v4, v8

    add-int/2addr v6, p2

    aget-byte v6, p4, v6

    if-eq v8, v6, :cond_2

    move v3, v0

    goto :goto_3

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr p2, v5

    add-int/2addr p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_4
    return v0
.end method

.method public final rangeEquals(Lokio/ByteString;I)Z
    .locals 8

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p2, v1

    invoke-static {p0, v1}, Lokio/internal/SegmentedByteStringKt;->segment(Lokio/SegmentedByteString;I)I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lokio/SegmentedByteString;->directory:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    :goto_1
    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    aget v6, v5, v0

    sub-int/2addr v6, v4

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v7, v7

    add-int/2addr v7, v0

    aget v5, v5, v7

    add-int/2addr v6, v4

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int v4, v2, v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v0

    invoke-virtual {p1, v3, v4, v6, v5}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v6

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public final toByteArray()[B
    .locals 9

    invoke-virtual {p0}, Lokio/SegmentedByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lokio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lokio/SegmentedByteString;->directory:[I

    add-int v6, v1, v2

    aget v6, v5, v6

    aget v5, v5, v2

    iget-object v7, p0, Lokio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v2

    sub-int v3, v5, v3

    add-int v8, v6, v3

    sub-int/2addr v8, v6

    invoke-static {v7, v6, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/SegmentedByteString;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
