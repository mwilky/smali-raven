.class Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "MmsQueryHelper.java"


# static fields
.field private static final MILLIS_PER_SECONDS:J = 0x3e8L

.field private static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "MmsQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

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

.field private mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 1
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

    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method

.method private addEvent(Ljava/lang/String;JI)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/MmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method private getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    invoke-static {p1}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "address"

    const-string/jumbo v8, "type"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    const-string v3, "MmsQueryHelper"

    const-string v4, "Cursor is null when querying MMS address table."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    const/16 v5, 0x89

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_4

    const/16 v5, 0x97

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v10

    :cond_4
    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v1
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

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
.method getLastMessageTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "date"

    const-string/jumbo v3, "msg_box"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "date > ?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const-wide/16 v11, 0x3e8

    div-long v4, p1, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v8, v13

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    :try_start_0
    iget-object v4, v1, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v4, :cond_1

    :try_start_1
    const-string v0, "MmsQueryHelper"

    const-string v2, "Cursor is null when querying MMS table."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v6

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return v13

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v13, v6

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v17, v5

    move-object v13, v6

    mul-long v5, v15, v11

    :try_start_4
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v18, v16

    iget-wide v11, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    move/from16 v11, v18

    invoke-direct {v1, v7, v11}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-direct {v1, v12, v5, v6, v11}, Lcom/android/server/people/data/MmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v16, :cond_2

    const/4 v14, 0x1

    :cond_2
    move-object v6, v13

    const-wide/16 v11, 0x3e8

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v13, v6

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_4
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    nop

    return v14

    :catchall_3
    move-exception v0

    move-object v13, v6

    move-object v2, v0

    :goto_2
    if-eqz v4, :cond_5

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v13, v6

    :goto_4
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    throw v0
.end method
