.class public Lcom/android/server/integrity/parser/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessInputStream.java"


# instance fields
.field private mPosition:I

.field private final mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/parser/RandomAccessObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->close()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/integrity/parser/RandomAccessObject;->read([BII)I

    move-result v1

    iget v2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return v1
.end method

.method public seek(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0, p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_1

    return-wide v0

    :cond_1
    int-to-long v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    iget-object v3, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v3, v1}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    int-to-long v3, v0

    return-wide v3
.end method
