.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 8

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1

    add-long v4, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_1

    :cond_0
    move-wide p1, v4

    :cond_1
    if-nez p3, :cond_2

    return v0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_6

    if-nez p3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_5

    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-wide p1, v2

    goto :goto_0

    :cond_5
    :goto_2
    return v5

    :cond_6
    const/16 v6, -0x10

    if-ge v1, v6, :cond_b

    const/4 v6, 0x2

    if-ge p3, v6, :cond_7

    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_7
    add-int/lit8 p3, p3, -0x2

    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_a

    const/16 p2, -0x60

    if-ne v1, v0, :cond_8

    if-lt p1, p2, :cond_a

    :cond_8
    const/16 v0, -0x13

    if-ne v1, v0, :cond_9

    if-ge p1, p2, :cond_a

    :cond_9
    add-long/2addr v2, v6

    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_4

    :cond_a
    return v5

    :cond_b
    const/4 v0, 0x3

    if-ge p3, v0, :cond_c

    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 p3, p3, -0x3

    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_d

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_d

    add-long p1, v6, v2

    invoke-static {p0, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v4, :cond_d

    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_4

    :cond_d
    return v5
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ge p3, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_2

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v1

    goto :goto_0

    :cond_2
    return p3
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method decodeUtf8([BII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int p0, p2, p3

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_b

    add-int p0, p2, p3

    new-array p3, p3, [C

    move v2, v0

    :goto_0
    if-ge p2, p0, :cond_1

    int-to-long v3, p2

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, p3, v2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    move v7, v2

    :goto_2
    if-ge p2, p0, :cond_a

    add-int/lit8 v2, p2, 0x1

    int-to-long v3, p2

    invoke-static {p1, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v7, 0x1

    invoke-static {p2, p3, v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3
    if-ge v2, p0, :cond_3

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    invoke-static {p2, p3, v3}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v3, v4

    goto :goto_3

    :cond_3
    :goto_4
    move p2, v2

    move v7, v3

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ge v2, p0, :cond_5

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    add-int/lit8 v4, v7, 0x1

    invoke-static {p2, v2, p3, v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v3

    move v7, v4

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {p2}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v5, v7, 0x1

    invoke-static {p2, v2, v3, p3, v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v4

    move v7, v5

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_8
    add-int/lit8 v3, p0, -0x2

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    add-int/lit8 v2, v3, 0x1

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v5

    add-int/lit8 v8, v2, 0x1

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v6

    add-int/lit8 v9, v7, 0x1

    move v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/2addr v9, v1

    move p2, v8

    move v7, v9

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v0, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 10

    or-int p0, p3, p4

    array-length v0, p2

    sub-int/2addr v0, p4

    or-int/2addr p0, v0

    const/4 v0, 0x0

    if-ltz p0, :cond_11

    int-to-long v1, p3

    int-to-long p3, p4

    if-eqz p1, :cond_10

    cmp-long p0, v1, p3

    if-ltz p0, :cond_0

    return p1

    :cond_0
    int-to-byte p0, p1

    const/16 v3, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge p0, v3, :cond_3

    const/16 p1, -0x3e

    if-lt p0, p1, :cond_2

    add-long/2addr v6, v1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    if-le p0, v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v6

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/16 v8, -0x10

    if-ge p0, v8, :cond_a

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_5

    add-long v8, v1, v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v0, v8, p3

    if-ltz v0, :cond_4

    invoke-static {p0, p1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_4
    move-wide v1, v8

    :cond_5
    if-gt p1, v5, :cond_9

    const/16 v0, -0x60

    if-ne p0, v3, :cond_6

    if-lt p1, v0, :cond_9

    :cond_6
    const/16 v3, -0x13

    if-ne p0, v3, :cond_7

    if-ge p1, v0, :cond_9

    :cond_7
    add-long p0, v1, v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v5, :cond_8

    goto :goto_1

    :cond_8
    move-wide v1, p0

    goto :goto_3

    :cond_9
    :goto_1
    return v4

    :cond_a
    shr-int/lit8 v3, p1, 0x8

    not-int v3, v3

    int-to-byte v3, v3

    if-nez v3, :cond_c

    add-long v8, v1, v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    cmp-long p1, v8, p3

    if-ltz p1, :cond_b

    invoke-static {p0, v3}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    :cond_b
    move-wide v1, v8

    goto :goto_2

    :cond_c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v0, p1

    :goto_2
    if-nez v0, :cond_e

    add-long v8, v1, v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    cmp-long p1, v8, p3

    if-ltz p1, :cond_d

    invoke-static {p0, v3, v0}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    :cond_d
    move-wide v1, v8

    :cond_e
    if-gt v3, v5, :cond_f

    shl-int/lit8 p0, p0, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr p0, v3

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_f

    if-gt v0, v5, :cond_f

    add-long p0, v1, v6

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v5, :cond_8

    :cond_f
    return v4

    :cond_10
    :goto_3
    sub-long/2addr p3, v1

    long-to-int p0, p3

    invoke-static {p2, v1, v2, p0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p0

    return p0

    :cond_11
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
