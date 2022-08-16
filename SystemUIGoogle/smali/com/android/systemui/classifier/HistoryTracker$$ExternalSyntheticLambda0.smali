.class public final synthetic Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Lcom/android/systemui/classifier/HistoryTracker$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;

    iget-wide v2, p1, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mExpiryMs:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iget-wide p0, p1, Lcom/android/systemui/classifier/HistoryTracker$CombinedResult;->mScore:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p0, v2

    sget-wide v4, Lcom/android/systemui/classifier/HistoryTracker;->HISTORY_DECAY:D

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
