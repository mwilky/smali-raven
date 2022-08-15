.class public Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryByteTranslator"
.end annotation


# instance fields
.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    return-void
.end method


# virtual methods
.method public fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p4}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    :goto_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shr-int/lit8 v2, v1, 0x6

    const/4 v3, 0x3

    and-int/2addr v2, v3

    and-int/lit8 v4, v2, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v2, v5

    :cond_2
    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_5

    if-eq v2, v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Type not recognized ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "PowerManagerService.WLLog"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    array-length v2, p1

    if-ge v2, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    and-int/lit8 v0, v1, 0x7f

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v5

    aget-byte p0, p1, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long v2, p0, p2

    const/4 v4, 0x2

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object p4

    :cond_5
    array-length v2, p1

    if-ge v2, v3, :cond_6

    goto :goto_1

    :cond_6
    and-int/lit8 v6, v1, 0x3f

    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0x7f

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object p0

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    add-long v2, v0, p2

    const/4 v4, 0x1

    move-object v1, p4

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object p4

    :cond_7
    array-length p0, p1

    const/16 p2, 0x9

    if-ge p0, p2, :cond_8

    :goto_1
    return-object v0

    :cond_8
    aget-byte p0, p1, v4

    int-to-long p2, p0

    const-wide/16 v0, 0xff

    and-long/2addr p2, v0

    const/16 p0, 0x38

    shl-long/2addr p2, p0

    aget-byte p0, p1, v5

    int-to-long v4, p0

    and-long/2addr v4, v0

    const/16 p0, 0x30

    shl-long/2addr v4, p0

    or-long/2addr p2, v4

    aget-byte p0, p1, v3

    int-to-long v2, p0

    and-long/2addr v2, v0

    const/16 p0, 0x28

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x4

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x5

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v0

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x6

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v0

    const/16 p0, 0x10

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    const/4 p0, 0x7

    aget-byte p0, p1, p0

    int-to-long v2, p0

    and-long/2addr v2, v0

    const/16 p0, 0x8

    shl-long/2addr v2, p0

    or-long/2addr p2, v2

    aget-byte p0, p1, p0

    int-to-long p0, p0

    and-long/2addr p0, v0

    or-long v2, p2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object p4

    :cond_9
    :goto_2
    return-object v0
.end method

.method public final getRelativeTime(JJ)I
    .locals 0

    cmp-long p0, p3, p1

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sub-long/2addr p3, p1

    const-wide/16 p0, 0xff

    cmp-long p0, p3, p0

    if-lez p0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    long-to-int p0, p3

    return p0
.end method

.method public toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 9

    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lt v0, v3, :cond_1

    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_0

    return p3

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v2

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    aput-byte p0, p2, v4

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p2, :cond_7

    array-length v0, p2

    if-lt v0, v1, :cond_7

    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-virtual {p0, p3, p4, v5, v6}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result p3

    if-gez p3, :cond_4

    return p3

    :cond_4
    iget p4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 p4, p4, 0x3f

    or-int/lit8 p4, p4, 0x40

    int-to-byte p4, p4

    aput-byte p4, p2, v2

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p2, v4

    and-int/lit16 p0, p3, 0xff

    int-to-byte p0, p0

    aput-byte p0, p2, v3

    goto :goto_0

    :cond_5
    const/16 p0, 0x9

    iget-wide p3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    if-eqz p2, :cond_6

    array-length p1, p2

    if-lt p1, p0, :cond_6

    aput-byte v2, p2, v2

    const/16 p1, 0x38

    shr-long v5, p3, p1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int p1, v5

    int-to-byte p1, p1

    aput-byte p1, p2, v4

    const/16 p1, 0x30

    shr-long v4, p3, p1

    and-long/2addr v4, v7

    long-to-int p1, v4

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    const/16 p1, 0x28

    shr-long v2, p3, p1

    and-long/2addr v2, v7

    long-to-int p1, v2

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    const/4 p1, 0x4

    const/16 v0, 0x20

    shr-long v0, p3, v0

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    const/4 p1, 0x5

    const/16 v0, 0x18

    shr-long v0, p3, v0

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    const/4 p1, 0x6

    const/16 v0, 0x10

    shr-long v0, p3, v0

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    const/4 p1, 0x7

    const/16 v0, 0x8

    shr-long v1, p3, v0

    and-long/2addr v1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    and-long/2addr p3, v7

    long-to-int p1, p3

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    :cond_6
    move v1, p0

    :cond_7
    :goto_0
    return v1
.end method
