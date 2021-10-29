.class public Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidObserverController$UidObserverRegistration;,
        Lcom/android/server/am/UidObserverController$ChangeRecord;
    }
.end annotation


# static fields
.field private static final SLOW_UID_OBSERVER_THRESHOLD_MS:I = 0x14

.field private static final VALIDATE_UID_STATES:Z = true


# instance fields
.field private mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field private final mAvailUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mDispatchRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingUidChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUidChangeDispatchCount:I

.field final mUidObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ActiveUids;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method private dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V
    .locals 18

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v9, p3

    if-ge v0, v9, :cond_15

    move-object/from16 v10, p0

    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v1, v1, v0

    move-object v11, v1

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    move v12, v1

    const/4 v13, 0x1

    if-nez v12, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/2addr v1, v13

    if-nez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-wide v14, v1

    and-int/lit8 v1, v12, 0x2

    if-eqz v1, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1}, Landroid/app/IUidObserver;->onUidActive(I)V

    :cond_3
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_4

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v13}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_5

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_5
    :goto_2
    and-int/lit8 v1, v12, 0x1

    const/16 v6, 0x14

    if-eqz v1, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v7, v1, v2}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    :cond_6
    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_7

    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->delete(I)V

    move v13, v6

    goto/16 :goto_a

    :cond_7
    move v13, v6

    goto/16 :goto_a

    :cond_8
    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v3

    if-ltz v3, :cond_e

    iget-object v3, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v5, :cond_c

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v4

    if-gt v3, v4, :cond_9

    move v4, v13

    goto :goto_3

    :cond_9
    move v4, v2

    :goto_3
    iget v5, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    if-gt v5, v2, :cond_a

    move v2, v13

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eq v4, v2, :cond_b

    move v5, v13

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    move v1, v5

    goto :goto_7

    :cond_c
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v2, v6, :cond_d

    move v2, v13

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    move v1, v2

    :cond_e
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_10

    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_f

    move v2, v13

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    or-int/2addr v1, v2

    move/from16 v16, v1

    goto :goto_9

    :cond_10
    move/from16 v16, v1

    :goto_9
    if-eqz v16, :cond_12

    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_11

    iget-object v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_11
    iget v2, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v3, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iget-wide v4, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iget v1, v11, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v17, v1

    move-object/from16 v1, p1

    move v13, v6

    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_a

    :cond_12
    move v13, v6

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v14

    long-to-int v1, v1

    iget v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v2, v1, :cond_13

    iput v1, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_13
    if-lt v1, v13, :cond_14

    iget v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v8, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_15
    move-object/from16 v10, p0

    nop

    :goto_c
    return-void
.end method

.method private getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v1}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    :goto_0
    return-object v1
.end method

.method static mergeWithPendingChange(II)I
    .locals 1

    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0xd

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    return p0
.end method


# virtual methods
.method dispatchUidsChanged()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v2, v2

    if-ge v2, v1, :cond_0

    new-array v2, v1, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v2, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$ChangeRecord;

    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    iput-boolean v3, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IUidObserver;

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/am/UidObserverController;->dispatchUidsChangedForObserver(Landroid/app/IUidObserver;Lcom/android/server/am/UidObserverController$UidObserverRegistration;I)V

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v0

    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveUids;->remove(I)V

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v7, Lcom/android/server/am/UidRecord;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v5, v7

    iget-object v7, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v8, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_4
    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    goto :goto_3

    :cond_5
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    invoke-virtual {v5, v3}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    :cond_6
    :goto_3
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    iget-wide v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput-wide v6, v5, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_8

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v5, v5, v0

    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    invoke-static {v4}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$200(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    if-nez v2, :cond_1

    const-string v5, "  mUidObservers:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  mUidChangeDispatchCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Slow UID dispatches:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/app/IUidObserver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " / Max "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, "ms"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    invoke-static {v3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->access$200(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    return-void
.end method

.method enqueueUidChange(Lcom/android/server/am/UidObserverController$ChangeRecord;IIIJIZ)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/UidObserverController;->getOrCreateChangeRecordLocked()Lcom/android/server/am/UidObserverController$ChangeRecord;

    move-result-object v1

    :goto_0
    iget-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    invoke-static {p3, v2}, Lcom/android/server/am/UidObserverController;->mergeWithPendingChange(II)I

    move-result v2

    move p3, v2

    :goto_1
    iput p2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iput p3, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iput p4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iput-wide p5, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    iput p7, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iput-boolean p8, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    iget v2, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPendingUidChangesForTest()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidObserverController$ChangeRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method getValidateUidRecord(I)Lcom/android/server/am/UidRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method getValidateUidsForTest()Lcom/android/server/am/ActiveUids;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-object v0
.end method

.method register(Landroid/app/IUidObserver;IILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    invoke-direct {v2, p5, p4, p2, p3}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregister(Landroid/app/IUidObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
