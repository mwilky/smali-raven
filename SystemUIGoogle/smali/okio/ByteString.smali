.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/ByteStringKt\n+ 3 -Util.kt\nokio/-Util\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,355:1\n39#2,7:356\n49#2:363\n52#2:364\n59#2,4:365\n63#2:370\n65#2:372\n71#2,23:373\n99#2,23:396\n126#2:419\n127#2,9:421\n139#2:430\n142#2:431\n145#2:432\n148#2:433\n156#2:434\n166#2,3:435\n165#2:438\n174#2:439\n178#2:440\n182#2:441\n186#2:442\n190#2,7:443\n203#2:450\n207#2,7:451\n218#2,4:458\n227#2,5:462\n236#2,6:467\n242#2,9:474\n304#2,8:483\n126#2:491\n127#2,9:493\n315#2,9:502\n68#3:369\n74#3:371\n74#3:473\n1#4:420\n1#4:492\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n65#1:356,7\n70#1:363\n107#1:364\n109#1:365,4\n109#1:370\n109#1:372\n111#1:373,23\n113#1:396,23\n117#1:419\n117#1:421,9\n119#1:430\n127#1:431\n129#1:432\n131#1:433\n150#1:434\n157#1:435,3\n157#1:438\n159#1:439\n161#1:440\n163#1:441\n165#1:442\n171#1:443,7\n174#1:450\n177#1:451,7\n179#1:458,4\n181#1:462,5\n183#1:467,6\n183#1:474,9\n185#1:483,8\n185#1:491\n185#1:493,9\n185#1:502,9\n109#1:369\n109#1:371\n183#1:473\n117#1:420\n185#1:492\n*E\n"
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    new-array v3, v0, [B

    :goto_1
    if-ge v1, v0, :cond_2

    sub-int v4, v0, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, v3}, Lokio/ByteString;-><init>([B)V

    const-class v0, Lokio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "byteCount < 0: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v6, v7, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lokio/ByteString;

    if-eqz v2, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v2

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v3, p0

    if-ne v2, v3, :cond_1

    array-length v2, p0

    invoke-virtual {p1, v1, v1, v2, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final getData$external__okio__android_common__okio_lib()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->hashCode:I

    :goto_0
    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lokio/internal/ByteStringKt;->HEX_DIGIT_CHARS:[C

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public rangeEquals(III[B)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v2, p0

    sub-int/2addr v2, p3

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_2

    array-length v2, p4

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_2

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int v4, v2, p1

    aget-byte v4, p0, v4

    add-int/2addr v2, p2

    aget-byte v2, p4, v2

    if-eq v4, v2, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public rangeEquals(Lokio/ByteString;I)Z
    .locals 1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Lokio/ByteString;->rangeEquals(III[B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lokio/ByteString;->data:[B

    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v0, "[size=0]"

    goto/16 :goto_28

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    const/16 v6, 0x40

    if-ge v3, v2, :cond_47

    aget-byte v7, v1, v3

    const/16 v8, 0xa

    const/16 v9, 0xd

    const/16 v10, 0x7f

    const/16 v11, 0xa0

    const/16 v12, 0x20

    const v14, 0xfffd

    const/high16 v15, 0x10000

    if-ltz v7, :cond_13

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_3

    goto/16 :goto_25

    :cond_3
    if-eq v7, v8, :cond_8

    if-eq v7, v9, :cond_8

    if-ltz v7, :cond_4

    if-ge v7, v12, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    if-gt v10, v7, :cond_5

    if-ge v7, v11, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_46

    :cond_8
    if-ne v7, v14, :cond_9

    goto/16 :goto_24

    :cond_9
    if-ge v7, v15, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x2

    :goto_6
    add-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_7
    move/from16 v4, v16

    if-ge v3, v2, :cond_2

    aget-byte v7, v1, v3

    if-ltz v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v16, v4, 0x1

    if-ne v4, v6, :cond_b

    goto/16 :goto_25

    :cond_b
    if-eq v7, v8, :cond_10

    if-eq v7, v9, :cond_10

    if-ltz v7, :cond_c

    if-ge v7, v12, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_f

    if-gt v10, v7, :cond_d

    if-ge v7, v11, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_46

    :cond_10
    if-ne v7, v14, :cond_11

    goto/16 :goto_24

    :cond_11
    if-ge v7, v15, :cond_12

    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    const/4 v4, 0x2

    :goto_c
    add-int/2addr v5, v4

    goto :goto_7

    :cond_13
    shr-int/lit8 v14, v7, 0x5

    const/4 v15, -0x2

    const/16 v13, 0x80

    if-ne v14, v15, :cond_20

    add-int/lit8 v14, v3, 0x1

    if-gt v2, v14, :cond_14

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_14
    aget-byte v14, v1, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_15

    const/4 v15, 0x1

    goto :goto_d

    :cond_15
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_16

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_16
    xor-int/lit16 v14, v14, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v7, v14

    if-ge v7, v13, :cond_17

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_17
    add-int/lit8 v13, v4, 0x1

    if-ne v4, v6, :cond_18

    goto/16 :goto_25

    :cond_18
    if-eq v7, v8, :cond_1d

    if-eq v7, v9, :cond_1d

    if-ltz v7, :cond_19

    if-ge v7, v12, :cond_19

    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    if-nez v4, :cond_1c

    if-gt v10, v7, :cond_1a

    if-ge v7, v11, :cond_1a

    const/4 v4, 0x1

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    goto :goto_11

    :cond_1c
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-nez v4, :cond_46

    :cond_1d
    const v4, 0xfffd

    if-ne v7, v4, :cond_1e

    goto/16 :goto_24

    :cond_1e
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_1f

    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_12

    :cond_1f
    const/16 v16, 0x2

    :goto_12
    add-int v5, v5, v16

    add-int/lit8 v3, v3, 0x2

    move v4, v13

    goto/16 :goto_1

    :cond_20
    shr-int/lit8 v10, v7, 0x4

    const v11, 0xe000

    const v12, 0xd800

    if-ne v10, v15, :cond_31

    add-int/lit8 v10, v3, 0x2

    if-gt v2, v10, :cond_21

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_21
    add-int/lit8 v14, v3, 0x1

    aget-byte v14, v1, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_22

    const/4 v15, 0x1

    goto :goto_13

    :cond_22
    const/4 v15, 0x0

    :goto_13
    if-nez v15, :cond_23

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_23
    aget-byte v10, v1, v10

    and-int/lit16 v15, v10, 0xc0

    if-ne v15, v13, :cond_24

    const/4 v13, 0x1

    goto :goto_14

    :cond_24
    const/4 v13, 0x0

    :goto_14
    if-nez v13, :cond_25

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_25
    const v13, -0x1e080

    xor-int/2addr v10, v13

    shl-int/lit8 v13, v14, 0x6

    xor-int/2addr v10, v13

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v7, v10

    const/16 v10, 0x800

    if-ge v7, v10, :cond_26

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_26
    if-gt v12, v7, :cond_27

    if-ge v7, v11, :cond_27

    const/4 v10, 0x1

    goto :goto_15

    :cond_27
    const/4 v10, 0x0

    :goto_15
    if-eqz v10, :cond_28

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_28
    add-int/lit8 v10, v4, 0x1

    if-ne v4, v6, :cond_29

    goto/16 :goto_25

    :cond_29
    if-eq v7, v8, :cond_2e

    if-eq v7, v9, :cond_2e

    if-ltz v7, :cond_2a

    const/16 v4, 0x20

    if-ge v7, v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_16

    :cond_2a
    const/4 v4, 0x0

    :goto_16
    if-nez v4, :cond_2d

    const/16 v4, 0x7f

    if-gt v4, v7, :cond_2b

    const/16 v4, 0xa0

    if-ge v7, v4, :cond_2b

    const/4 v4, 0x1

    goto :goto_17

    :cond_2b
    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v4, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    const/4 v4, 0x1

    :goto_19
    if-nez v4, :cond_46

    :cond_2e
    const v4, 0xfffd

    if-ne v7, v4, :cond_2f

    goto/16 :goto_24

    :cond_2f
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_30

    const/4 v13, 0x1

    goto :goto_1a

    :cond_30
    const/4 v13, 0x2

    :goto_1a
    add-int/2addr v5, v13

    add-int/lit8 v3, v3, 0x3

    move v4, v10

    goto/16 :goto_1

    :cond_31
    shr-int/lit8 v9, v7, 0x3

    if-ne v9, v15, :cond_45

    add-int/lit8 v9, v3, 0x3

    if-gt v2, v9, :cond_32

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_32
    add-int/lit8 v10, v3, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v14, v10, 0xc0

    if-ne v14, v13, :cond_33

    const/4 v14, 0x1

    goto :goto_1b

    :cond_33
    const/4 v14, 0x0

    :goto_1b
    if-nez v14, :cond_34

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_34
    add-int/lit8 v14, v3, 0x2

    aget-byte v14, v1, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_35

    const/4 v15, 0x1

    goto :goto_1c

    :cond_35
    const/4 v15, 0x0

    :goto_1c
    if-nez v15, :cond_36

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_36
    aget-byte v9, v1, v9

    and-int/lit16 v15, v9, 0xc0

    if-ne v15, v13, :cond_37

    const/4 v13, 0x1

    goto :goto_1d

    :cond_37
    const/4 v13, 0x0

    :goto_1d
    if-nez v13, :cond_38

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_38
    const v13, 0x381f80

    xor-int/2addr v9, v13

    shl-int/lit8 v13, v14, 0x6

    xor-int/2addr v9, v13

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v9, v10

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v7, v9

    const v9, 0x10ffff

    if-le v7, v9, :cond_39

    if-ne v4, v6, :cond_46

    goto/16 :goto_25

    :cond_39
    if-gt v12, v7, :cond_3a

    if-ge v7, v11, :cond_3a

    const/4 v9, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v9, 0x0

    :goto_1e
    if-eqz v9, :cond_3b

    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_3b
    const/high16 v9, 0x10000

    if-ge v7, v9, :cond_3c

    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_3c
    add-int/lit8 v9, v4, 0x1

    if-ne v4, v6, :cond_3d

    goto :goto_25

    :cond_3d
    if-eq v7, v8, :cond_42

    const/16 v4, 0xd

    if-eq v7, v4, :cond_42

    if-ltz v7, :cond_3e

    const/16 v4, 0x20

    if-ge v7, v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x0

    :goto_1f
    if-nez v4, :cond_41

    const/16 v4, 0x7f

    if-gt v4, v7, :cond_3f

    const/16 v4, 0xa0

    if-ge v7, v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_20

    :cond_3f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_40

    goto :goto_21

    :cond_40
    const/4 v4, 0x0

    goto :goto_22

    :cond_41
    :goto_21
    const/4 v4, 0x1

    :goto_22
    if-nez v4, :cond_46

    :cond_42
    const v4, 0xfffd

    if-ne v7, v4, :cond_43

    goto :goto_24

    :cond_43
    const/high16 v4, 0x10000

    if-ge v7, v4, :cond_44

    const/4 v13, 0x1

    goto :goto_23

    :cond_44
    const/4 v13, 0x2

    :goto_23
    add-int/2addr v5, v13

    add-int/lit8 v3, v3, 0x4

    move v4, v9

    goto/16 :goto_1

    :cond_45
    if-ne v4, v6, :cond_46

    goto :goto_25

    :cond_46
    :goto_24
    const/4 v5, -0x1

    :cond_47
    :goto_25
    const-string/jumbo v1, "\u2026]"

    const-string v2, "[size="

    const/16 v3, 0x5d

    const/4 v4, -0x1

    if-ne v5, v4, :cond_4d

    iget-object v4, v0, Lokio/ByteString;->data:[B

    array-length v4, v4

    if-gt v4, v6, :cond_48

    const-string v1, "[hex="

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    :cond_48
    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lokio/ByteString;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lokio/ByteString;->data:[B

    array-length v4, v3

    if-gt v6, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_26

    :cond_49
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_4c

    array-length v4, v3

    if-ne v6, v4, :cond_4a

    goto :goto_27

    :cond_4a
    new-instance v0, Lokio/ByteString;

    array-length v4, v3

    if-gt v6, v4, :cond_4b

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lokio/ByteString;-><init>([B)V

    :goto_27
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    :cond_4b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toIndex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const-string v1, "endIndex > length("

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lokio/ByteString;->data:[B

    array-length v0, v0

    const/16 v2, 0x29

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    iget-object v4, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-nez v4, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v4

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    move-object v4, v7

    :cond_4e
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\"

    const-string v8, "\\\\"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r"

    const-string v8, "\\r"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4f

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0
.end method
