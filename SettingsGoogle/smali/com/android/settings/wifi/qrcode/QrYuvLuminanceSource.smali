.class public Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "QrYuvLuminanceSource.java"


# instance fields
.field private mHeight:I

.field private mWidth:I

.field private mYuvData:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput p2, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    iput p3, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mHeight:I

    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 3

    mul-int v0, p3, p4

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    mul-int v2, p2, v1

    add-int/2addr v2, p1

    add-int/2addr p1, p3

    if-gt p1, v1, :cond_1

    add-int/2addr p2, p4

    iget p1, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mHeight:I

    if-gt p2, p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    mul-int v1, p1, p3

    invoke-static {p2, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    add-int/2addr v2, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;-><init>([BII)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cropped rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMatrix()[B
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    return-object p0
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mHeight:I

    if-ge p1, v0, :cond_2

    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    new-array p2, p2, [B

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mYuvData:[B

    iget p0, p0, Lcom/android/settings/wifi/qrcode/QrYuvLuminanceSource;->mWidth:I

    mul-int/2addr p1, p0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested row is outside the image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
