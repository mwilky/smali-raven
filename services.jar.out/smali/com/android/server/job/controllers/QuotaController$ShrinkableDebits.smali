.class final Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShrinkableDebits"
.end annotation


# instance fields
.field private mDebitTally:J

.field private mStandbyBucket:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return-void
.end method


# virtual methods
.method dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getStandbyBucketLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return v0
.end method

.method getTallyLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    return-wide v0
.end method

.method setStandbyBucketLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShrinkableDebits { debit tally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bucket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transactLocked(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-long/2addr v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide v2, v4

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    add-long/2addr v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    return-wide v2
.end method
