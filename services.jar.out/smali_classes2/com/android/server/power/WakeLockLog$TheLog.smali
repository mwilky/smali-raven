.class Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TheLog"
.end annotation


# instance fields
.field private final mBuffer:[B

.field private mChangeCount:J

.field private mEnd:I

.field private mLatestTime:J

.field private final mReadWriteTempBuffer:[B

.field private mStart:I

.field private mStartTime:J

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

.field private final mTempBuffer:[B

.field private final mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iput v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getLogSize()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iput-object p3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;)V

    invoke-virtual {p3, v1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->setCallback(Lcom/android/server/power/WakeLockLog$TagDatabase$Callback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WakeLockLog$TheLog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog;->removeTagIndex(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/WakeLockLog$TheLog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/power/WakeLockLog$TheLog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/WakeLockLog$TheLog;IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/WakeLockLog$TheLog;)Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/WakeLockLog$TheLog;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    return-object v0
.end method

.method private getAvailableSpace()I
    .locals 3

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    sub-int v2, v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v0

    :goto_0
    return v2
.end method

.method private isBufferEmpty()Z
    .locals 2

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeSpace(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->removeOldestItem()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    iget v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    aget-byte v2, v2, v1

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    return-object v0
.end method

.method private removeOldestItem()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-wide v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v1

    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v2, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-void
.end method

.method private removeTagIndex(I)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    :goto_0
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v0, v4, :cond_3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry is unreadable - Unexpected @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget v5, v5, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v5, p1, :cond_2

    iput-object v6, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V

    :cond_2
    iget-wide v1, v4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v5

    add-int v6, v0, v5

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v7, v7

    rem-int v0, v6, v7

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private writeBytesAt(I[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v3, v2

    rem-int/2addr v1, v3

    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeEntryAt(ILcom/android/server/power/WakeLockLog$LogEntry;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-wide v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    :cond_2
    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    if-gtz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->makeSpace(I)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/power/WakeLockLog$TheLog;->writeBytesAt(I[BI)V

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-wide v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iget-object v1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-wide v2, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-static {v1, v2, v3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->updateTagTime(Lcom/android/server/power/WakeLockLog$TagData;J)V

    iget-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-void

    :cond_5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log entry size is out of expected range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/android/server/power/WakeLockLog$LogEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/power/WakeLockLog$TheLog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    return-object v0
.end method

.method getUsedBufferSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v0, v0

    invoke-direct {p0}, Lcom/android/server/power/WakeLockLog$TheLog;->getAvailableSpace()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
