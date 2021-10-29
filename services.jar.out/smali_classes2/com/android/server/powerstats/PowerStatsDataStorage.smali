.class public Lcom/android/server/powerstats/PowerStatsDataStorage;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;,
        Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
    }
.end annotation


# static fields
.field private static final DELETE_AGE_MILLIS:J = 0xa4cb800L

.field private static final MILLISECONDS_PER_HOUR:J = 0x36ee80L

.field private static final ROTATE_AGE_MILLIS:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDataStorageDir:Ljava/io/File;

.field private final mDataStorageFilename:Ljava/lang/String;

.field private final mFileRotator:Lcom/android/internal/util/FileRotator;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataStorageDir does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/internal/util/FileRotator;

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const-wide/32 v5, 0xdbba00

    const-wide/32 v7, 0xa4cb800

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    :goto_1
    return-void
.end method


# virtual methods
.method public deleteLogs()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;

    invoke-direct {v1, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;-><init>(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V

    return-void
.end method

.method public write([B)V
    .locals 6

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([BLcom/android/server/powerstats/PowerStatsDataStorage$1;)V

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    new-instance v4, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->access$200(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;-><init>([B)V

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/server/powerstats/PowerStatsDataStorage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to on-device storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method
