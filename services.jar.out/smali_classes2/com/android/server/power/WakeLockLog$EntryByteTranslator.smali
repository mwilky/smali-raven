.class Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryByteTranslator"
.end annotation


# static fields
.field static final ERROR_TIME_IS_NEGATIVE:I = -0x1

.field static final ERROR_TIME_TOO_LARGE:I = -0x2


# instance fields
.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    return-void
.end method

.method private getRelativeTime(JJ)I
    .locals 4

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sub-long v0, p3, p1

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, -0x2

    return v2

    :cond_1
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method fromBytes([BJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    array-length v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v3, p4

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v3}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    :goto_0
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    const/4 v7, 0x3

    and-int/2addr v5, v7

    and-int/lit8 v8, v5, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    const/4 v5, 0x2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v5

    :goto_1
    const/4 v5, 0x1

    packed-switch v10, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type not recognized ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    const-string v6, "PowerManagerService.WLLog"

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :pswitch_0
    array-length v6, v1

    if-ge v6, v9, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x0

    aget-byte v4, v1, v4

    and-int/lit8 v11, v4, 0x7f

    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    aget-byte v4, v1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    const/4 v7, 0x2

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v3

    :pswitch_1
    array-length v6, v1

    if-ge v6, v7, :cond_4

    goto/16 :goto_2

    :cond_4
    aget-byte v2, v1, v4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v4, v1, v5

    and-int/lit8 v11, v4, 0x7f

    iget-object v4, v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v4, v11}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTag(I)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v12

    aget-byte v4, v1, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v13, v4, p2

    const/4 v7, 0x1

    move-object v4, v3

    move-wide v5, v13

    move-object v8, v12

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v3

    :pswitch_2
    array-length v4, v1

    const/16 v8, 0x9

    if-ge v4, v8, :cond_5

    goto :goto_2

    :cond_5
    aget-byte v2, v1, v5

    int-to-long v4, v2

    const-wide/16 v11, 0xff

    and-long/2addr v4, v11

    const/16 v2, 0x38

    shl-long/2addr v4, v2

    aget-byte v2, v1, v9

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long/2addr v4, v8

    aget-byte v2, v1, v7

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v11

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v4, v7

    aget-byte v2, v1, v6

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x10

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/4 v2, 0x7

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    const/16 v2, 0x8

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    aget-byte v2, v1, v2

    int-to-long v6, v2

    and-long/2addr v6, v11

    or-long v11, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-wide v5, v11

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;->set(JILcom/android/server/power/WakeLockLog$TagData;I)V

    return-object v3

    :goto_2
    return-object v2

    :cond_6
    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .locals 10

    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lt v1, v0, :cond_2

    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v1

    if-gez v1, :cond_0

    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v4, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    array-length v4, p2

    if-lt v4, v0, :cond_2

    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    invoke-direct {p0, p3, p4, v4, v5}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->getRelativeTime(JJ)I

    move-result v4

    if-gez v4, :cond_1

    return v4

    :cond_1
    iget v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 v5, v5, 0x3f

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget-object v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$TagDatabase;->getTagIndex(Lcom/android/server/power/WakeLockLog$TagData;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    and-int/lit16 v2, v4, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    iget-wide v4, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    if-eqz p2, :cond_2

    array-length v6, p2

    if-lt v6, v0, :cond_2

    aput-byte v3, p2, v3

    const/16 v3, 0x38

    shr-long v6, v4, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/16 v2, 0x30

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x3

    const/16 v2, 0x28

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x5

    const/16 v2, 0x18

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x6

    const/16 v2, 0x10

    shr-long v2, v4, v2

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    shr-long v6, v4, v2

    and-long/2addr v6, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    and-long v6, v4, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
