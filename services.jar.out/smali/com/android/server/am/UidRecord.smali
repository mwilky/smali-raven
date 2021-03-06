.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_CACHED:I = 0x8

.field static final CHANGE_CAPABILITY:I = 0x20

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_IDLE:I = 0x2

.field static final CHANGE_PROCSTATE:I = 0x0

.field static final CHANGE_UNCACHED:I = 0x10

.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field curProcStateSeq:J

.field volatile hasInternetPermission:Z

.field lastDispatchedProcStateSeq:J

.field lastNetworkUpdatedProcStateSeq:J

.field private mCurAllowList:Z

.field private mCurCapability:I

.field private mCurProcState:I

.field private mEphemeral:Z

.field private mForegroundServices:Z

.field private mIdle:Z

.field private mLastBackgroundTime:J

.field private mLastReportedChange:I

.field private mNumProcs:I

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcRecords:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAllowList:Z

.field private mSetCapability:I

.field private mSetIdle:Z

.field private mSetProcState:I

.field private final mUid:I

.field final networkStateLock:Ljava/lang/Object;

.field final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field volatile waitingForNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    return-void
.end method


# virtual methods
.method addProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v8, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide v6, 0x10b00000006L

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v8, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v8, :cond_0

    const-wide v6, 0x20e00000008L

    sget-object v9, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    :cond_0
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10300000001L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000002L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000003L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getCurCapability()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return v0
.end method

.method getLastBackgroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method getNumOfProcs()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method getSetCapability()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return v0
.end method

.method hasForegroundServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return v0
.end method

.method isCurAllowListed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return v0
.end method

.method isEphemeral()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return v0
.end method

.method isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return v0
.end method

.method isSetAllowListed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return v0
.end method

.method isSetIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return v0
.end method

.method removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method reset()V
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method setCurAllowListed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return-void
.end method

.method setCurCapability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return-void
.end method

.method setCurProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return-void
.end method

.method setEphemeral(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return-void
.end method

.method setForegroundServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return-void
.end method

.method setIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return-void
.end method

.method setLastBackgroundTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-void
.end method

.method setLastReportedChange(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    return-void
.end method

.method setSetAllowListed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return-void
.end method

.method setSetCapability(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return-void
.end method

.method setSetIdle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return-void
.end method

.method setSetProcState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_0

    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_1

    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_2

    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_4

    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_d

    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    const-string v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v1, 0x1

    const-string v2, "idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x1

    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v1, 0x1

    const-string v2, "cached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v2, "uncached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateHasInternetPermission()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    return-void
.end method

.method public updateLastDispatchedProcStateSeq(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    iput-wide v0, p0, Lcom/android/server/am/UidRecord;->lastDispatchedProcStateSeq:J

    :cond_0
    return-void
.end method
