.class Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "CallLogQueryHelper.java"


# static fields
.field private static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    return-void
.end method

.method private addEvent(Ljava/lang/String;JJI)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/people/data/CallLogQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    new-instance v1, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {v2, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    return v2
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getLastCallTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 23

    move-object/from16 v8, p0

    const-string v0, "normalized_number"

    const-string v9, "date"

    const-string v10, "duration"

    const-string v11, "type"

    filled-new-array {v0, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v14

    const-string v18, "date > ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object/from16 v16, v1

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v17, "date DESC"

    move-object/from16 v15, v18

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_1

    :try_start_0
    const-string v0, "CallLogQueryHelper"

    const-string v2, "Cursor is null when querying call log."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    return v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    move v13, v1

    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v15, v1

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    move-wide v9, v4

    move-wide v5, v6

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v20, v0

    move/from16 v21, v1

    iget-wide v0, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    move/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v21, v3

    move/from16 v22, v4

    move-wide v3, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/people/data/CallLogQueryHelper;->addEvent(Ljava/lang/String;JJI)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    :cond_2
    move-object/from16 v9, v17

    move-object/from16 v10, v19

    move-object/from16 v0, v20

    goto :goto_0

    :cond_3
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    return v13

    :catchall_1
    move-exception v0

    move-object v2, v0

    move v1, v13

    :goto_1
    if-eqz v12, :cond_5

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v2
.end method
