.class public Lcom/android/server/tare/Ledger;
.super Ljava/lang/Object;
.source "Ledger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Ledger$Transaction;
    }
.end annotation


# instance fields
.field public final mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

.field public mCurrentBalance:J

.field public mEarliestSumTime:J

.field public final mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iput-wide p1, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int p2, v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {p1, v2, v3}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    const-string v2, "--"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {p1, v2, v3}, Lcom/android/server/tare/TareUtils;->dumpTime(Landroid/util/IndentingPrintWriter;J)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v2}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-string v3, ")"

    if-eqz v2, :cond_0

    const-string v2, "("

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v2, " --> "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    invoke-static {v4, v5}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " (ctp="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    invoke-static {v1, v2}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get24HourSum(IJ)J
    .locals 12

    const-wide/32 v0, 0x5265c00

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v2, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v3, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    cmp-long v6, v4, p2

    if-ltz v6, :cond_1

    iget-wide v4, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-wide v8, v1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    sub-long v10, v8, p2

    long-to-double v10, v10

    mul-double/2addr v10, v6

    iget-wide v6, v1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    long-to-double v6, v6

    mul-double/2addr v10, v6

    double-to-long v6, v10

    sub-long/2addr v8, v4

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    :goto_1
    iget-object v4, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v1, v1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v4, v1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    iput-wide p2, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    :cond_3
    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getCurrentBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    return-wide v0
.end method

.method public getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/Ledger$Transaction;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Ledger$Transaction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    return-object p0
.end method

.method public recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mCurrentBalance:J

    iget-object v0, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v1, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/tare/Ledger;->mCumulativeDeltaPerReason:Landroid/util/SparseLongArray;

    iget v3, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/tare/Ledger;->mEarliestSumTime:J

    return-void
.end method

.method public removeOldTransactions(J)V
    .locals 4

    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    :goto_0
    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    cmp-long p1, v2, v0

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/tare/Ledger;->mTransactions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
