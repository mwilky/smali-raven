.class public Lcom/android/systemui/privacy/television/PrivacyChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PrivacyChipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;
    }
.end annotation


# instance fields
.field public mBgAlpha:I

.field public final mBgHeight:I

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mBgRadius:I

.field public final mBgWidth:I

.field public final mChipPaint:Landroid/graphics/Paint;

.field public final mCollapse:Landroid/animation/AnimatorSet;

.field public mDotAlpha:I

.field public final mDotSize:I

.field public final mExpand:Landroid/animation/AnimatorSet;

.field public final mFadeIn:Landroid/animation/AnimatorSet;

.field public final mFadeOut:Landroid/animation/AnimatorSet;

.field public mHeight:F

.field public final mIconPadding:I

.field public final mIconWidth:I

.field public mIsExpanded:Z

.field public mIsRtl:Z

.field public mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

.field public mMarginEnd:F

.field public final mMinWidth:I

.field public mRadius:F

.field public mTargetWidth:F

.field public mWidth:F

.field public mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x7f06035c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x7f06035b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070680

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07067e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07067f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070689

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMinWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070686

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070683

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070684

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07068b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    const v0, 0x7f010259

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f010258

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f01025a

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f01025b

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable$1;-><init>(Lcom/android/systemui/privacy/television/PrivacyChipDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final animateToNewTargetWidth(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTargetWidth:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTargetWidth:F

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string/jumbo p1, "width"

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsRtl:Z

    if-eqz v3, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    sub-int/2addr v4, v5

    :goto_0
    int-to-float v4, v4

    int-to-float v1, v1

    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    int-to-float v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v6, v1, v6

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    add-int/2addr v3, v8

    goto :goto_1

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->right:I

    :goto_1
    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v5, v7

    add-float/2addr v5, v1

    invoke-direct {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/RectF;

    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsRtl:Z

    if-eqz v3, :cond_2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    add-float/2addr v4, v5

    goto :goto_2

    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    sub-float/2addr v4, v5

    :goto_2
    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mHeight:F

    div-float v6, v5, v7

    sub-float v6, v1, v6

    if-eqz v3, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    add-float/2addr v0, v3

    goto :goto_3

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    sub-float/2addr v0, v3

    :goto_3
    div-float/2addr v5, v7

    add-float/2addr v5, v1

    invoke-direct {v2, v4, v6, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotAlpha:I

    return p0
.end method

.method public getBgAlpha()I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgAlpha:I

    return p0
.end method

.method public getDotAlpha()I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotAlpha:I

    return p0
.end method

.method public getHeight()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mHeight:F

    return p0
.end method

.method public getMarginEnd()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getRadius()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    return p0
.end method

.method public getWidth()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->setDotAlpha(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->setBgAlpha(I)V

    return-void
.end method

.method public setBgAlpha(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgAlpha:I

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDotAlpha(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotAlpha:I

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mHeight:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setMarginEnd(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMarginEnd:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updateIcons(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_0
    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMinWidth:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconWidth:I

    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconPadding:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-float p1, v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->animateToNewTargetWidth(F)V

    return-void
.end method
