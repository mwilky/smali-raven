.class public final Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;
.super Lcom/android/systemui/animation/LaunchAnimator$State;
.source "ExpandAnimationParameters.kt"


# instance fields
.field private linearProgress:F

.field private parentStartClipTopAmount:I

.field private parentStartRoundedTopClipping:I

.field private progress:F

.field private startClipTopAmount:I

.field private startNotificationTop:F

.field private startRoundedTopClipping:I

.field private startTranslationZ:F


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;-><init>(IIIIFF)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    return-void
.end method


# virtual methods
.method public final getParentStartClipTopAmount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartClipTopAmount:I

    return p0
.end method

.method public final getParentStartRoundedTopClipping()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartRoundedTopClipping:I

    return p0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->progress:F

    return p0
.end method

.method public final getProgress(JJ)F
    .locals 7

    sget-object v0, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    sget-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result p0

    return p0
.end method

.method public final getStartClipTopAmount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startClipTopAmount:I

    return p0
.end method

.method public final getStartNotificationTop()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startNotificationTop:F

    return p0
.end method

.method public final getStartRoundedTopClipping()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startRoundedTopClipping:I

    return p0
.end method

.method public final getStartTranslationZ()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startTranslationZ:F

    return p0
.end method

.method public final setLinearProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->linearProgress:F

    return-void
.end method

.method public final setParentStartClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartClipTopAmount:I

    return-void
.end method

.method public final setParentStartRoundedTopClipping(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->parentStartRoundedTopClipping:I

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->progress:F

    return-void
.end method

.method public final setStartClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startClipTopAmount:I

    return-void
.end method

.method public final setStartNotificationTop(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startNotificationTop:F

    return-void
.end method

.method public final setStartRoundedTopClipping(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startRoundedTopClipping:I

    return-void
.end method

.method public final setStartTranslationZ(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->startTranslationZ:F

    return-void
.end method
