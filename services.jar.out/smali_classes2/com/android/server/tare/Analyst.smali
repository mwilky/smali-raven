.class public Lcom/android/server/tare/Analyst;
.super Ljava/lang/Object;
.source "Analyst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Analyst$Report;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mPeriodIndex:I

.field public final mReports:[Lcom/android/server/tare/Analyst$Report;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Analyst;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Analyst;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Analyst;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/tare/Analyst$Report;

    iput-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Reports:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "      Total Discharge"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Profit (avg/action : avg/discharge)"

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loss (avg/action : avg/discharge)"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Rewards (avg/reward : avg/discharge)"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "+Regs (avg/reg : avg/discharge)"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-Regs (avg/reg : avg/discharge)"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_b

    iget v6, v0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    rem-int/2addr v6, v5

    iget-object v5, v0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    move v6, v2

    goto/16 :goto_a

    :cond_0
    const-string v6, "t-"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, ":  "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v0, v6, v7}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const/4 v7, 0x2

    const/4 v8, 0x3

    const-string v9, "%s (%s : %s)"

    const/4 v10, 0x1

    const-string v11, "N/A"

    if-lez v6, :cond_2

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v6, :cond_1

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    int-to-long v14, v6

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v11

    :goto_1
    new-array v12, v8, [Ljava/lang/Object;

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    iget-wide v13, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget v15, v5, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    int-to-long v2, v15

    div-long/2addr v13, v2

    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v10

    aput-object v6, v12, v7

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    if-lez v2, :cond_4

    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_3

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v11

    :goto_3
    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v3, 0x2f

    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    if-lez v2, :cond_6

    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_5

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v11

    :goto_5
    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const/16 v3, 0x2f

    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    if-lez v2, :cond_8

    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_7

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    int-to-long v2, v2

    div-long/2addr v12, v2

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_7
    move-object v2, v11

    :goto_7
    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v3, v12

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget v6, v5, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    int-to-long v14, v6

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    aput-object v2, v3, v7

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const/16 v3, 0x2f

    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_8
    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    if-lez v2, :cond_a

    iget v2, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    if-lez v2, :cond_9

    iget-wide v11, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    int-to-long v2, v2

    div-long/2addr v11, v2

    invoke-static {v11, v12}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v11

    :cond_9
    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    iget-wide v12, v5, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget v3, v5, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    int-to-long v14, v3

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    aput-object v11, v2, v7

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    const/16 v3, 0x2f

    const/4 v6, 0x0

    invoke-virtual {v0, v11, v3}, Lcom/android/server/tare/Analyst;->padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getReports()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    iget v3, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    add-int/2addr v3, v2

    rem-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public loadReports(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/tare/Analyst$Report;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    :goto_0
    const/16 v1, 0x8

    if-ge v2, v1, :cond_1

    if-ge v2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tare/Analyst$Report;

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public noteBatteryLevelChange(I)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/tare/Analyst$Report;->-$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V

    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    iget-object v1, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aput-object v0, v1, p0

    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void

    :cond_1
    iget p0, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    if-ge p1, p0, :cond_2

    iget v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    sub-int/2addr p0, p1

    add-int/2addr v1, p0

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    :cond_2
    iput p1, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    return-void
.end method

.method public noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget v1, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v2}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    iget p0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    aget-object p0, v0, p0

    iget v0, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    neg-long v2, v0

    iget-wide v4, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    neg-long v0, v0

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    goto :goto_0

    :cond_2
    neg-long v2, v0

    cmp-long p1, v2, v4

    if-gez p1, :cond_6

    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    goto :goto_0

    :cond_4
    cmp-long p1, v0, v2

    if-gez p1, :cond_6

    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    goto :goto_0

    :cond_5
    iget-wide v0, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    iget-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iget p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final padStringWithSpaces(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p2, p0

    const/4 p0, 0x2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/String;->repeat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tearDown()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/Analyst;->mReports:[Lcom/android/server/tare/Analyst$Report;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/tare/Analyst;->mPeriodIndex:I

    return-void
.end method
