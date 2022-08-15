.class public Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppIdleHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUsageHistory"
.end annotation


# instance fields
.field public bucketExpiryTimesMs:Landroid/util/SparseLongArray;

.field public bucketingReason:I

.field public currentBucket:I

.field public lastInformedBucket:I

.field public lastJobRunTime:J

.field public lastPredictedBucket:I

.field public lastPredictedTime:J

.field public lastRestrictAttemptElapsedTime:J

.field public lastRestrictReason:I

.field public lastUsedByUserElapsedTime:J

.field public lastUsedElapsedTime:J

.field public lastUsedScreenTime:J

.field public nextEstimatedLaunchTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method
