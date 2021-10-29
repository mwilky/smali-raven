.class Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;
.super Ljava/lang/Object;
.source "SharesheetModelScorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/prediction/SharesheetModelScorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareTargetRankingScore"
.end annotation


# instance fields
.field private mFrequencyScore:F

.field private mMimeFrequencyScore:F

.field private mRecencyScore:F

.field private mTotalScore:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/prediction/SharesheetModelScorer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;-><init>()V

    return-void
.end method


# virtual methods
.method getFrequencyScore()F
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return v0
.end method

.method getMimeFrequencyScore()F
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return v0
.end method

.method getRecencyScore()F
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    return v0
.end method

.method getTotalScore()F
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return v0
.end method

.method incrementFrequencyScore(F)V
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return-void
.end method

.method incrementMimeFrequencyScore(F)V
    .locals 1

    iget v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return-void
.end method

.method setFrequencyScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    return-void
.end method

.method setMimeFrequencyScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    return-void
.end method

.method setRecencyScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    return-void
.end method

.method setTotalScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mTotalScore:F

    return-void
.end method
