.class public Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsEnrollProgressBarDrawable.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private mIsShowingHelp:Z

.field private mProgressSteps:I

.field private mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressSteps:I

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsShowingHelp:Z

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getProgressSteps(II)I
    .locals 0

    sub-int/2addr p1, p0

    const/4 p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private updateFillColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsShowingHelp:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mIsShowingHelp:Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateFillColor(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateProgress(I)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressSteps:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mProgressSteps:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-nez v0, :cond_1

    const-string p0, "UdfpsProgressBar"

    const-string/jumbo p1, "updateState: UDFPS enroll helper was null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->getProgress()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    invoke-virtual {v2, v5}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(F)V

    goto :goto_1

    :cond_2
    if-lt p1, v1, :cond_3

    if-ge p1, v3, :cond_3

    sub-int v0, p1, v1

    sub-int/2addr v3, v1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(F)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    if-lt p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->startCompletionAnimation()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->cancelCompletionAnimation()V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private updateState(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateProgress(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateFillColor(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onEnrollmentHelp(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->getProgressSteps(II)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IZ)V

    return-void
.end method

.method onEnrollmentProgress(II)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    invoke-static {p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->getProgressSteps(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IZ)V

    return-void
.end method

.method onLastStepAcquired()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mTotalSteps:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->updateState(IZ)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 14

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageCount()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v2, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    sub-float/2addr v1, v2

    new-instance v10, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-ge v11, p1, :cond_0

    iget-object v12, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    new-instance v13, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/high16 v8, 0x41400000    # 12.0f

    move-object v3, v13

    move v6, v0

    move v7, v1

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FFFLjava/lang/Runnable;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float v3, v1, v2

    add-float/2addr v0, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
