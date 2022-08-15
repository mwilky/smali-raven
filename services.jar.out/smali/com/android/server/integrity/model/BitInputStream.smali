.class public Lcom/android/server/integrity/model/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"


# instance fields
.field public mBitsRead:J

.field public mCurrentByte:B

.field public mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getNext(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    if-ge v0, p1, :cond_1

    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    const-wide/16 v5, 0x8

    rem-long/2addr v3, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/integrity/model/BitInputStream;->getNextByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    :cond_0
    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    rem-long v5, v3, v5

    long-to-int v0, v5

    rsub-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, v1, 0x1

    iget-byte v5, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    ushr-int v0, v5, v0

    and-int/lit8 v0, v0, 0x1

    or-int/2addr v1, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getNextByte()B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public hasNext()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
