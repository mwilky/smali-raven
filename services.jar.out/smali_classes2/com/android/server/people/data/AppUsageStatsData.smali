.class public Lcom/android/server/people/data/AppUsageStatsData;
.super Ljava/lang/Object;
.source "AppUsageStatsData.java"


# instance fields
.field public mChosenCount:I

.field public mLaunchCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    iput p2, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return-void
.end method


# virtual methods
.method public getChosenCount()I
    .locals 0

    iget p0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    return p0
.end method

.method public getLaunchCount()I
    .locals 0

    iget p0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return p0
.end method

.method public incrementChosenCountBy(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    return-void
.end method

.method public incrementLaunchCountBy(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    return-void
.end method
