.class public final Lcom/android/server/tare/Analyst$Report;
.super Ljava/lang/Object;
.source "Analyst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Analyst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# instance fields
.field public cumulativeBatteryDischarge:I

.field public cumulativeLoss:J

.field public cumulativeNegativeRegulations:J

.field public cumulativePositiveRegulations:J

.field public cumulativeProfit:J

.field public cumulativeRewards:J

.field public currentBatteryLevel:I

.field public numNegativeRegulations:I

.field public numPositiveRegulations:I

.field public numProfitableActions:I

.field public numRewards:I

.field public numUnprofitableActions:I


# direct methods
.method public static bridge synthetic -$$Nest$mclear(Lcom/android/server/tare/Analyst$Report;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/Analyst$Report;->clear()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    iput-wide v1, p0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    iput v0, p0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    return-void
.end method
