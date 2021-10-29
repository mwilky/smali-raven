.class public Lcom/android/server/integrity/model/ByteTrackedOutputStream;
.super Ljava/io/OutputStream;
.source "ByteTrackedOutputStream.java"


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWrittenBytesCount:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    iput-object p1, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getWrittenBytesCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    iget-object v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    iget-object v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
