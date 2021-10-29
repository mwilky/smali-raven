.class public Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UdfpsEnrollProgressBarDrawable.java"


# instance fields
.field private final mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;)V

    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v3, 0x0

    move v9, v2

    move v10, v3

    :goto_0
    if-ge v10, v1, :cond_0

    iget-object v11, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    new-instance v12, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/high16 v6, 0x429c0000    # 78.0f

    const/high16 v7, 0x41400000    # 12.0f

    move-object v2, v12

    move-object v3, p1

    move v5, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;-><init>(Landroid/content/Context;Landroid/graphics/Rect;FFFLjava/lang/Runnable;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v9, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setEnrollmentProgress(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnrollmentProgress: progressSteps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UdfpsProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThreshold(I)I

    move-result v4

    const-string v5, "setEnrollmentProgress: segment["

    if-lt p1, v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->isFilledOrFilling()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] complete"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(F)V

    goto :goto_1

    :cond_0
    if-lt p1, v2, :cond_1

    if-ge p1, v4, :cond_1

    sub-int v6, p1, v2

    sub-int/2addr v4, v2

    int-to-float v2, v6

    int-to-float v4, v4

    div-float/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] progress = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->updateProgress(F)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getLastStageThreshold()I

    move-result v0

    if-lt p1, v0, :cond_3

    const-string p1, "setEnrollmentProgress: startCompletionAnimation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->startCompletionAnimation()V

    goto :goto_2

    :cond_3
    const-string p1, "setEnrollmentProgress: cancelCompletionAnimation"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->mSegments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarSegment;->cancelCompletionAnimation()V

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "UdfpsProgressBar"

    const-string v1, "setEnrollmentProgress: draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method onLastStepAcquired()V
    .locals 2

    const-string v0, "UdfpsProgressBar"

    const-string v1, "setEnrollmentProgress: onLastStepAcquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getLastStageThreshold()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(I)V

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

.method setEnrollmentProgress(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(I)V

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;->setEnrollmentProgress(I)V

    :goto_0
    return-void
.end method
