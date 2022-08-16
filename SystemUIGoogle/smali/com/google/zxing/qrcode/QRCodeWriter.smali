.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/HashMap;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_53

    if-ltz v1, :cond_52

    if-ltz v2, :cond_52

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v5, :cond_0

    move-object v4, v5

    :cond_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v7, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    if-nez v3, :cond_2

    move-object v3, v7

    :cond_2
    const-string v8, "Shift_JIS"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0x60

    const/4 v11, -0x1

    if-eqz v9, :cond_8

    :try_start_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v10, v9

    rem-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x81

    if-lt v12, v13, :cond_4

    const/16 v13, 0x9f

    if-le v12, v13, :cond_5

    :cond_4
    const/16 v13, 0xe0

    if-lt v12, v13, :cond_7

    const/16 v13, 0xeb

    if-le v12, v13, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    :catch_0
    :cond_7
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_d

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_b

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-lt v14, v15, :cond_9

    const/16 v15, 0x39

    if-gt v14, v15, :cond_9

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    sget-object v12, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    if-ge v14, v10, :cond_a

    aget v12, v12, v14

    goto :goto_5

    :cond_a
    move v12, v11

    :goto_5
    if-eq v12, v11, :cond_d

    const/4 v12, 0x1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    if-eqz v12, :cond_c

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_d

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_7

    :cond_d
    move-object v9, v6

    :goto_7
    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v11, 0x8

    if-ne v9, v6, :cond_e

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    sget-object v7, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/common/CharacterSetECI;

    if-eqz v7, :cond_e

    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v10, v12, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v7}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v7

    invoke-virtual {v10, v7, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_8

    :cond_e
    const/4 v13, 0x4

    :goto_8
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v7

    invoke-virtual {v10, v7, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v12, v15, :cond_1a

    const/4 v15, 0x6

    if-eq v12, v14, :cond_14

    if-eq v12, v13, :cond_13

    if-ne v12, v15, :cond_12

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v8, v3

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v8, :cond_1d

    aget-byte v13, v3, v12

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v12, 0x1

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v13, v11

    or-int/2addr v13, v14

    const v14, 0x8140

    if-lt v13, v14, :cond_f

    const v14, 0x9ffc

    if-gt v13, v14, :cond_f

    const v14, 0x8140

    goto :goto_a

    :cond_f
    const v14, 0xe040

    if-lt v13, v14, :cond_10

    const v14, 0xebbf

    if-gt v13, v14, :cond_10

    const v14, 0xc140

    :goto_a
    sub-int/2addr v13, v14

    goto :goto_b

    :cond_10
    const/4 v13, -0x1

    :goto_b
    const/4 v14, -0x1

    if-eq v13, v14, :cond_11

    shr-int/lit8 v14, v13, 0x8

    mul-int/lit16 v14, v14, 0xc0

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v14, v13

    const/16 v13, 0xd

    invoke-virtual {v7, v14, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_9

    :cond_11
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    array-length v8, v3

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v8, :cond_1d

    aget-byte v13, v3, v12

    invoke-virtual {v7, v13, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0

    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_1d

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sget-object v12, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    const/16 v13, 0x60

    if-ge v11, v13, :cond_15

    aget v11, v12, v11

    goto :goto_e

    :cond_15
    const/4 v11, -0x1

    :goto_e
    const/4 v13, -0x1

    if-eq v11, v13, :cond_19

    add-int/lit8 v13, v8, 0x1

    if-ge v13, v3, :cond_18

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x60

    if-ge v13, v14, :cond_16

    aget v12, v12, v13

    goto :goto_f

    :cond_16
    const/4 v12, -0x1

    :goto_f
    const/4 v13, -0x1

    if-eq v12, v13, :cond_17

    mul-int/lit8 v11, v11, 0x2d

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-virtual {v7, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_d

    :cond_17
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_18
    invoke-virtual {v7, v11, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v8, v13

    goto :goto_d

    :cond_19
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v3, :cond_1d

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    add-int/lit8 v12, v8, 0x2

    if-ge v12, v3, :cond_1b

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v11, v11, 0x64

    const/16 v14, 0xa

    mul-int/2addr v13, v14

    add-int/2addr v13, v11

    add-int/2addr v13, v12

    invoke-virtual {v7, v13, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x3

    goto :goto_10

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v3, :cond_1c

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v8

    const/4 v8, 0x7

    invoke-virtual {v7, v11, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v8, v12

    goto :goto_10

    :cond_1c
    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_10

    :cond_1d
    iget v3, v10, Lcom/google/zxing/common/BitArray;->size:I

    sget-object v8, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v11, 0x0

    aget-object v8, v8, v11

    invoke-virtual {v9, v8}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v8

    add-int/2addr v8, v3

    iget v3, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v8, v3

    invoke-static {v8, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v3

    iget v8, v10, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v9, v3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    add-int/2addr v3, v8

    iget v8, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v3, v8

    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v3

    new-instance v8, Lcom/google/zxing/common/BitArray;

    invoke-direct {v8}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v11, v10, Lcom/google/zxing/common/BitArray;->size:I

    iget v12, v8, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v12, v11

    invoke-virtual {v8, v12}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v11, :cond_1e

    invoke-virtual {v10, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v13

    invoke-virtual {v8, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_1e
    if-ne v9, v6, :cond_1f

    iget v0, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    goto :goto_12

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_12
    invoke-virtual {v9, v3}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    const/4 v9, 0x1

    shl-int/2addr v9, v6

    if-ge v0, v9, :cond_51

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v0, v7, Lcom/google/zxing/common/BitArray;->size:I

    iget v6, v8, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v6, v0

    invoke-virtual {v8, v6}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v0, :cond_20

    invoke-virtual {v7, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_20
    iget-object v0, v3, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v0, v0, v6

    iget v6, v3, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget v7, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    iget-object v9, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_14
    if-ge v11, v10, :cond_21

    aget-object v13, v9, v11

    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_21
    mul-int/2addr v12, v7

    sub-int/2addr v6, v12

    shl-int/lit8 v7, v6, 0x3

    iget v9, v8, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v9, v7, :cond_50

    const/4 v9, 0x0

    :goto_15
    const/4 v10, 0x4

    if-ge v9, v10, :cond_22

    iget v10, v8, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v10, v7, :cond_22

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_22
    const/4 v9, 0x0

    iget v10, v8, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v10, v10, 0x7

    if-lez v10, :cond_23

    :goto_16
    const/16 v11, 0x8

    if-ge v10, v11, :cond_23

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto :goto_16

    :cond_23
    iget v9, v8, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    sub-int v9, v6, v9

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v9, :cond_25

    and-int/lit8 v11, v10, 0x1

    if-nez v11, :cond_24

    const/16 v11, 0xec

    goto :goto_18

    :cond_24
    const/16 v11, 0x11

    :goto_18
    const/16 v12, 0x8

    invoke-virtual {v8, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_25
    iget v9, v8, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v9, v7, :cond_4f

    iget v7, v3, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_19
    if-ge v10, v9, :cond_26

    aget-object v12, v0, v10

    iget v12, v12, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_26
    iget v0, v8, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-ne v0, v6, :cond_4e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1a
    if-ge v9, v11, :cond_31

    const/4 v14, 0x1

    new-array v15, v14, [I

    new-array v14, v14, [I

    if-ge v9, v11, :cond_30

    rem-int v16, v7, v11

    sub-int v2, v11, v16

    div-int v17, v7, v11

    add-int/lit8 v18, v17, 0x1

    div-int v19, v6, v11

    add-int/lit8 v20, v19, 0x1

    sub-int v1, v17, v19

    move/from16 p0, v5

    sub-int v5, v18, v20

    if-ne v1, v5, :cond_2f

    move-object/from16 v17, v4

    add-int v4, v2, v16

    if-ne v11, v4, :cond_2e

    add-int v4, v19, v1

    mul-int/2addr v4, v2

    add-int v18, v20, v5

    mul-int v18, v18, v16

    add-int v4, v18, v4

    if-ne v7, v4, :cond_2d

    if-ge v9, v2, :cond_27

    const/4 v2, 0x0

    aput v19, v15, v2

    aput v1, v14, v2

    goto :goto_1b

    :cond_27
    const/4 v2, 0x0

    aput v20, v15, v2

    aput v5, v14, v2

    :goto_1b
    aget v1, v15, v2

    new-array v2, v1, [B

    mul-int/lit8 v4, v10, 0x8

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v1, :cond_2a

    const/16 v16, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p2, v3

    move/from16 p1, v11

    move/from16 v11, v16

    move/from16 v3, v18

    move/from16 v16, v7

    move/from16 v7, v19

    :goto_1d
    if-ge v7, v11, :cond_29

    invoke-virtual {v8, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_28

    rsub-int/lit8 v11, v7, 0x7

    const/16 v18, 0x1

    shl-int v11, v18, v11

    or-int/2addr v3, v11

    :cond_28
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x8

    goto :goto_1d

    :cond_29
    add-int/lit8 v7, v5, 0x0

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, p1

    move-object/from16 v3, p2

    move/from16 v7, v16

    goto :goto_1c

    :cond_2a
    move-object/from16 p2, v3

    move/from16 v16, v7

    move/from16 p1, v11

    const/4 v3, 0x0

    aget v3, v14, v3

    add-int v4, v1, v3

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v1, :cond_2b

    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2b
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v5, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode(I[I)V

    new-array v5, v3, [B

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v3, :cond_2c

    add-int v11, v1, v7

    aget v11, v4, v11

    int-to-byte v11, v11

    aput-byte v11, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_2c
    new-instance v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v4, v2, v5}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v1, 0x0

    aget v1, v15, v1

    add-int/2addr v10, v1

    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p0

    move/from16 v11, p1

    move-object/from16 v3, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v7, v16

    move-object/from16 v4, v17

    goto/16 :goto_1a

    :cond_2d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 p2, v3

    move-object/from16 v17, v4

    move/from16 p0, v5

    move/from16 v16, v7

    if-ne v6, v10, :cond_4d

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v12, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    array-length v5, v4

    if-ge v2, v5, :cond_32

    aget-byte v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_21

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_34
    const/4 v2, 0x0

    :goto_22
    if-ge v2, v13, :cond_37

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    array-length v5, v4

    if-ge v2, v5, :cond_35

    aget-byte v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_23

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_37
    iget v0, v1, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    move/from16 v2, v16

    if-ne v2, v0, :cond_4c

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x11

    new-instance v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v3, v2, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const v2, 0x7fffffff

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_24
    if-ge v5, v4, :cond_48

    move-object/from16 v4, v17

    invoke-static {v1, v4, v0, v5, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v7, 0x1

    invoke-static {v3, v7}, Landroidx/core/R$id;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroidx/core/R$id;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v9

    add-int/2addr v9, v7

    iget-object v7, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    iget v10, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v11, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    move v12, v8

    move v13, v12

    :goto_25
    add-int/lit8 v14, v11, -0x1

    if-ge v8, v14, :cond_3a

    :goto_26
    add-int/lit8 v14, v10, -0x1

    if-ge v13, v14, :cond_39

    aget-object v14, v7, v8

    aget-byte v15, v14, v13

    add-int/lit8 v16, v13, 0x1

    aget-byte v14, v14, v16

    if-ne v15, v14, :cond_38

    add-int/lit8 v14, v8, 0x1

    aget-object v14, v7, v14

    aget-byte v13, v14, v13

    if-ne v15, v13, :cond_38

    aget-byte v13, v14, v16

    if-ne v15, v13, :cond_38

    add-int/lit8 v12, v12, 0x1

    :cond_38
    move/from16 v13, v16

    goto :goto_26

    :cond_39
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x0

    goto :goto_25

    :cond_3a
    mul-int/lit8 v12, v12, 0x3

    add-int/2addr v12, v9

    iget-object v7, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    iget v8, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v9, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_27
    if-ge v10, v9, :cond_43

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v8, :cond_42

    add-int/lit8 v14, v13, 0x6

    if-ge v14, v8, :cond_3d

    aget-object v15, v7, v10

    move-object/from16 p2, v0

    aget-byte v0, v15, v13

    move-object/from16 p1, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v15, v0

    if-nez v0, :cond_3e

    add-int/lit8 v0, v13, 0x2

    aget-byte v0, v15, v0

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, v13, 0x3

    aget-byte v0, v15, v0

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, v13, 0x4

    aget-byte v0, v15, v0

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, v13, 0x5

    aget-byte v0, v15, v0

    if-nez v0, :cond_3e

    aget-byte v0, v15, v14

    if-ne v0, v1, :cond_3e

    add-int/lit8 v0, v13, 0xa

    if-ge v0, v8, :cond_3b

    add-int/lit8 v1, v13, 0x7

    aget-byte v1, v15, v1

    if-nez v1, :cond_3b

    add-int/lit8 v1, v13, 0x8

    aget-byte v1, v15, v1

    if-nez v1, :cond_3b

    add-int/lit8 v1, v13, 0x9

    aget-byte v1, v15, v1

    if-nez v1, :cond_3b

    aget-byte v0, v15, v0

    if-eqz v0, :cond_3c

    :cond_3b
    add-int/lit8 v0, v13, -0x4

    if-ltz v0, :cond_3e

    add-int/lit8 v1, v13, -0x1

    aget-byte v1, v15, v1

    if-nez v1, :cond_3e

    add-int/lit8 v1, v13, -0x2

    aget-byte v1, v15, v1

    if-nez v1, :cond_3e

    add-int/lit8 v1, v13, -0x3

    aget-byte v1, v15, v1

    if-nez v1, :cond_3e

    aget-byte v0, v15, v0

    if-nez v0, :cond_3e

    :cond_3c
    add-int/lit8 v11, v11, 0x28

    goto :goto_29

    :cond_3d
    move-object/from16 p2, v0

    move-object/from16 p1, v1

    :cond_3e
    :goto_29
    add-int/lit8 v0, v10, 0x6

    if-ge v0, v9, :cond_41

    aget-object v1, v7, v10

    aget-byte v1, v1, v13

    const/4 v14, 0x1

    if-ne v1, v14, :cond_41

    add-int/lit8 v1, v10, 0x1

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_41

    add-int/lit8 v1, v10, 0x2

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-ne v1, v14, :cond_41

    add-int/lit8 v1, v10, 0x3

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-ne v1, v14, :cond_41

    add-int/lit8 v1, v10, 0x4

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-ne v1, v14, :cond_41

    add-int/lit8 v1, v10, 0x5

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_41

    aget-object v0, v7, v0

    aget-byte v0, v0, v13

    if-ne v0, v14, :cond_41

    add-int/lit8 v0, v10, 0xa

    if-ge v0, v9, :cond_3f

    add-int/lit8 v1, v10, 0x7

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_3f

    add-int/lit8 v1, v10, 0x8

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_3f

    add-int/lit8 v1, v10, 0x9

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_3f

    aget-object v0, v7, v0

    aget-byte v0, v0, v13

    if-eqz v0, :cond_40

    :cond_3f
    add-int/lit8 v0, v10, -0x4

    if-ltz v0, :cond_41

    add-int/lit8 v1, v10, -0x1

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_41

    add-int/lit8 v1, v10, -0x2

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_41

    add-int/lit8 v1, v10, -0x3

    aget-object v1, v7, v1

    aget-byte v1, v1, v13

    if-nez v1, :cond_41

    aget-object v0, v7, v0

    aget-byte v0, v0, v13

    if-nez v0, :cond_41

    :cond_40
    add-int/lit8 v11, v11, 0x28

    :cond_41
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    goto/16 :goto_28

    :cond_42
    move-object/from16 p2, v0

    move-object/from16 p1, v1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_27

    :cond_43
    move-object/from16 p2, v0

    move-object/from16 p1, v1

    add-int/2addr v12, v11

    iget-object v0, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    iget v1, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v7, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2a
    if-ge v8, v7, :cond_46

    aget-object v10, v0, v8

    const/4 v11, 0x0

    :goto_2b
    if-ge v11, v1, :cond_45

    aget-byte v13, v10, v11

    const/4 v14, 0x1

    if-ne v13, v14, :cond_44

    add-int/lit8 v9, v9, 0x1

    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    :cond_46
    iget v0, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    iget v1, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/2addr v0, v1

    int-to-double v7, v9

    int-to-double v0, v0

    div-double/2addr v7, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v7

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v12

    if-ge v0, v2, :cond_47

    move v2, v0

    move v6, v5

    :cond_47
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x8

    move-object/from16 v1, p1

    move-object/from16 v17, v4

    move v4, v0

    move-object/from16 v0, p2

    goto/16 :goto_24

    :cond_48
    move-object/from16 v4, v17

    invoke-static {v1, v4, v0, v6, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iget v0, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget v1, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    shl-int/lit8 v2, p0, 0x1

    add-int v4, v0, v2

    add-int/2addr v2, v1

    move/from16 v5, p3

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int v4, v5, v4

    div-int v2, v6, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v4, v0, v2

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    mul-int v7, v1, v2

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v5, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v1, :cond_4b

    const/4 v6, 0x0

    move v9, v4

    :goto_2d
    if-ge v6, v0, :cond_4a

    invoke-virtual {v3, v6, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_49

    invoke-virtual {v8, v9, v7, v2, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_49
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v9, v2

    goto :goto_2d

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v7, v2

    goto :goto_2c

    :cond_4b
    return-object v8

    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v3, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v3, v2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "data bits cannot fit in the QR Code"

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    move v5, v1

    move v6, v2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested dimensions are too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
