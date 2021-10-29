.class final Lcom/android/server/appop/AppOpsService$AttributedOp;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedOp"
.end annotation


# instance fields
.field private mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPausedInProgressEvents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/appop/AppOpsService$AttributedOp;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    :cond_2
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method private deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-gez v3, :cond_1

    invoke-direct {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    return-void

    :cond_1
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    const/4 v5, 0x1

    if-nez v2, :cond_2

    iget v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    sub-int/2addr v6, v5

    iput v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    :cond_2
    iget v6, v4, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-eqz v6, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v6, :cond_5

    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_5
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    new-instance v5, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v13, v5

    goto :goto_1

    :cond_6
    move-object v13, v6

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v9

    sub-long v14, v7, v9

    new-instance v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    move-object v8, v5

    move-wide v11, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v9

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v9, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v21

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v22

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v23

    invoke-virtual {v5}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v25

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v27

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v28

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    if-nez v2, :cond_7

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v7}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    iput-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p2, :cond_7

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v7, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v9, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v22

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v23

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-static/range {v16 .. v23}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_7
    return-void
.end method

.method private finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_0

    const-string v0, "No ops running or paused"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v2, "No op running or paused for the client"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    iget v2, v1, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_3
    return-void
.end method

.method private finished(Landroid/os/IBinder;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method static synthetic lambda$startedOrPaused$0(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->access$1300(Lcom/android/server/appop/AppOpsService$AttributedOp;Landroid/os/IBinder;)V

    return-void
.end method

.method private started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method private startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p5

    if-eqz p7, :cond_0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p8, :cond_0

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_0
    const/4 v13, 0x1

    if-eqz p8, :cond_1

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    if-nez p8, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_2
    :goto_0
    if-eqz p8, :cond_3

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_1
    move-object v12, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-nez v18, :cond_4

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    sget-object v2, Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/appop/AppOpsService$AttributedOp$$ExternalSyntheticLambda0;

    invoke-static {v2, v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    move-wide/from16 v2, v16

    move-object/from16 v6, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v0, v12

    move/from16 v12, p5

    move/from16 v19, v13

    move/from16 v13, p6

    move/from16 v14, p9

    move-object/from16 v20, v0

    move-object v0, v15

    move/from16 v15, p10

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p0

    move-object v15, v1

    move-object v14, v2

    goto :goto_3

    :cond_4
    move-object v2, v12

    move/from16 v19, v13

    move-object v0, v15

    invoke-static/range {v18 .. v18}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v1

    move/from16 v12, p5

    if-eq v12, v1, :cond_5

    move-object/from16 v13, p0

    move-object v14, v2

    invoke-virtual {v13, v12}, Lcom/android/server/appop/AppOpsService$AttributedOp;->onUidStateChanged(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v13, p0

    move-object v14, v2

    :goto_2
    move-object/from16 v15, v18

    :goto_3
    iget v1, v15, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    if-eqz p8, :cond_6

    iget-object v1, v13, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v2, v13, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, v13, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v13, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, v13, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, v16

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    :cond_6
    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 24

    move-object/from16 v10, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v13, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v15, v10, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v16, p4

    move/from16 v17, p5

    move-wide/from16 v18, v22

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static/range {p8 .. p9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    :goto_0
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v5, :cond_2

    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v14

    move-object v8, v5

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-virtual/range {v8 .. v14}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_1

    :cond_2
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v15, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v8, v15

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v14, v2, v3, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->finish()V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->access$600(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEventPool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    return-void
.end method

.method createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v0, :cond_0

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v0, v4

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v14, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v6, v7, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method hasAnyTime()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onClientDeath(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUidStateChanged(I)V
    .locals 21

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, v12, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    move-object v14, v0

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v15, :cond_5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getUidState()I

    move-result v0

    move/from16 v8, p1

    if-eq v0, v8, :cond_4

    :try_start_0
    iget v0, v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    move-object/from16 v16, v1

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finished(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v16, :cond_2

    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    const/16 v17, 0x0

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v18

    invoke-virtual {v9}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v19
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v8, v17

    move-object/from16 v17, v9

    move v9, v13

    move/from16 v20, v10

    move/from16 v10, v18

    move-object v12, v11

    move/from16 v11, v19

    :try_start_2
    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move/from16 v1, v20

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v17, v9

    move-object v12, v11

    move v1, v10

    goto :goto_3

    :cond_2
    move-object/from16 v17, v9

    move/from16 v20, v10

    move-object v12, v11

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    move-object/from16 v1, p0

    move/from16 v6, p1

    move v9, v13

    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/AppOpsService$AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move/from16 v1, v20

    :try_start_4
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    if-eqz v2, :cond_3

    iget v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->numUnfinishedStarts:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v1, v20

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v17, v9

    move v1, v10

    move-object v12, v11

    goto :goto_3

    :cond_4
    move-object/from16 v17, v9

    move v1, v10

    move-object v12, v11

    :goto_3
    add-int/lit8 v10, v1, 0x1

    move-object v11, v12

    move-object/from16 v12, p0

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public pause()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$800(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$800(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v3, v1, v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    invoke-static/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public rejected(II)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AppOpsService$AttributedOp;->rejected(JII)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public rejected(JII)V
    .locals 11

    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v2, :cond_1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$100(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsService$OpEventProxyInfoPool;

    move-result-object v9

    move-object v3, v2

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v10, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v4, v10

    move-wide v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 36

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x0

    move v15, v2

    :goto_1
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$800(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v12, v2, v3}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$902(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)J

    invoke-static {v12, v13, v14}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$1002(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;J)J

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$700(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v7

    invoke-static {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->access$1100(Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;)I

    move-result v8

    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v11

    invoke-virtual {v12}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v16

    move-wide v9, v13

    move-object/from16 v17, v12

    move/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    const/16 v23, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-static/range {v18 .. v25}, Lcom/android/server/appop/AppOpsService;->access$500(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->tag:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getFlags()I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v34

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AppOpsService$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v35

    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    invoke-static/range {v26 .. v35}, Lcom/android/server/appop/AppOpsService;->access$1200(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IIIII)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/appop/AppOpsService$AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appop/AppOpsService$AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V

    return-void
.end method
