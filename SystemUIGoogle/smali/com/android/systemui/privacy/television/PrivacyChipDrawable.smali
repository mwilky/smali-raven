.class public Lcom/android/systemui/privacy/television/PrivacyChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PrivacyChipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBgAlpha:I

.field private final mBgHeight:I

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBgRadius:I

.field private final mBgWidth:I

.field private final mChipPaint:Landroid/graphics/Paint;

.field private final mCollapse:Landroid/animation/AnimatorSet;

.field private mDotAlpha:I

.field private final mDotSize:I

.field private final mExpand:Landroid/animation/AnimatorSet;

.field private final mFadeIn:Landroid/animation/AnimatorSet;

.field private final mFadeOut:Landroid/animation/AnimatorSet;

.field private mHeight:F

.field private final mIconPadding:I

.field private final mIconWidth:I

.field private mIsExpanded:Z

.field private mIsRtl:Z

.field private mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

.field private mMarginEnd:F

.field private final mMinWidth:I

.field private mRadius:F

.field private mTargetWidth:F

.field private mWidth:F

.field private mWidthAnimator:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->TAG:Ljava/lang/String;

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

    sget v2, Lcom/android/systemui/R$color;->privacy_circle:I

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

    sget v2, Lcom/android/systemui/R$color;->privacy_chip_dot_bg_tint:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_dot_bg_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_dot_bg_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_dot_bg_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMinWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->privacy_chip_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->privacy_chip_icon_margin_in_between:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->privacy_chip_dot_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidth:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mHeight:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->privacy_chip_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    sget v0, Lcom/android/systemui/R$anim;->tv_privacy_chip_expand:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget v0, Lcom/android/systemui/R$anim;->tv_privacy_chip_collapse:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget v0, Lcom/android/systemui/R$anim;->tv_privacy_chip_fade_in:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    sget v0, Lcom/android/systemui/R$anim;->tv_privacy_chip_fade_out:I

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

.method static synthetic access$000(Lcom/android/systemui/privacy/television/PrivacyChipDrawable;)Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

    return-object p0
.end method

.method private animateToNewTargetWidth(F)V
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

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method private expand()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->animateToNewTargetWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
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

    add-float/2addr v1, v5

    invoke-direct {v2, v4, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mRadius:F

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
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

.method public getOpacity()I
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

.method public setAlpha(I)V
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

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
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

.method public setListener(Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mListener:Lcom/android/systemui/privacy/television/PrivacyChipDrawable$PrivacyChipDrawableListener;

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

.method public setRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsRtl:Z

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

.method public startInitialFadeIn()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateIcons(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeOut:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mWidthAnimator:Landroid/animation/Animator;

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

    invoke-direct {p0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->expand()V

    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mMinWidth:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconWidth:I

    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIconPadding:I

    add-int/2addr v1, v2

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->animateToNewTargetWidth(F)V

    return-void
.end method
