.class final Lcom/google/zxing/datamatrix/encoder/X12Encoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "X12Encoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 2

    const/4 p0, 0x1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    if-lt p1, v0, :cond_4

    const/16 v1, 0x39

    if-gt p1, v1, :cond_4

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/16 v0, 0x41

    if-lt p1, v0, :cond_5

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_5

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    :goto_0
    return p0
.end method

.method public getEncodingMode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0xfe

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr p0, v2

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    iget p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    if-le p0, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_2
    :goto_0
    return-void
.end method
