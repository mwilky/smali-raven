.class Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;
.super Lcom/android/server/integrity/parser/RandomAccessObject;
.source "RandomAccessObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/integrity/parser/RandomAccessObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessFileObject"
.end annotation


# instance fields
.field private final mLength:I

.field private final mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/integrity/parser/RandomAccessObject;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    long-to-int v2, v0

    iput v2, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mLength:I

    return-void

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported file size (too big) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mLength:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public seek(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
