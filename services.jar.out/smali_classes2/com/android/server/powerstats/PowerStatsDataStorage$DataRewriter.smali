.class Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRewriter"
.end annotation


# instance fields
.field mActiveFileData:[B

.field mNewData:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
