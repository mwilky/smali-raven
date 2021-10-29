.class final Lcom/android/server/am/ProcessCachedOptimizerRecord;
.super Ljava/lang/Object;
.source "ProcessCachedOptimizerRecord.java"


# static fields
.field static final IS_FROZEN:Ljava/lang/String; = "isFrozen"


# instance fields
.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mFreezeExempt:Z

.field private mFreezeUnfreezeTime:J

.field mFreezerOverride:Z

.field private mFrozen:Z

.field private mLastCompactAction:I

.field private mLastCompactTime:J

.field private mPendingCompact:Z

.field private mPendingFreeze:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mReqCompactAction:I

.field private mShouldNotFreeze:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastCompactTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " lastCompactAction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isFreezeExempt="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPendingFreeze="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method getFreezeUnfreezeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-wide v0
.end method

.method getLastCompactAction()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return v0
.end method

.method getLastCompactTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-wide v0
.end method

.method getReqCompactAction()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return v0
.end method

.method hasFreezerOverride()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return v0
.end method

.method hasPendingCompact()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return v0
.end method

.method init(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method isFreezeExempt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return v0
.end method

.method isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return v0
.end method

.method isPendingFreeze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return v0
.end method

.method setFreezeExempt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    return-void
.end method

.method setFreezeUnfreezeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    return-void
.end method

.method setFreezerOverride(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    return-void
.end method

.method setFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    return-void
.end method

.method setHasPendingCompact(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    return-void
.end method

.method setLastCompactAction(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactAction:I

    return-void
.end method

.method setLastCompactTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    return-void
.end method

.method setPendingFreeze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    return-void
.end method

.method setReqCompactAction(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactAction:I

    return-void
.end method

.method setShouldNotFreeze(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return-void
.end method

.method shouldNotFreeze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    return v0
.end method
