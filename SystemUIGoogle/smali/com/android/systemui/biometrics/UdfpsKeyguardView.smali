.class public Lcom/android/systemui/biometrics/UdfpsKeyguardView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsKeyguardView.java"


# instance fields
.field public mAlpha:I

.field public mAnimationType:I

.field public mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public mBackgroundInAnimator:Landroid/animation/AnimatorSet;

.field public mBgProtection:Landroid/widget/ImageView;

.field public mBurnInOffsetX:F

.field public mBurnInOffsetY:F

.field public mBurnInProgress:F

.field public mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

.field public mFullyInflated:Z

.field public mInterpolatedDarkAmount:F

.field public final mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;

.field public mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mMaxBurnInOffsetX:I

.field public final mMaxBurnInOffsetY:I

.field public mScaleFactor:F

.field public mTextColorPrimary:I

.field public mUdfpsRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mScaleFactor:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070863

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070864

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetY:I

    return-void
.end method


# virtual methods
.method public final calculateAlpha()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    return p0
.end method

.method public final dozeTimeTick()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateBurnInOffsets()V

    const/4 p0, 0x1

    return p0
.end method

.method public final getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLayoutInflaterFinishListener:Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;

    const v2, 0x7f0e02bf

    invoke-virtual {v0, v2, p0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public final onIlluminationStarting()V
    .locals 0

    return-void
.end method

.method public final onIlluminationStopped()V
    .locals 0

    return-void
.end method

.method public final updateAlpha()I
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->updateAlpha()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateBurnInOffsets()V

    return v0
.end method

.method public final updateBurnInOffsets()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFullyInflated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    :goto_0
    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetX:I

    mul-int/2addr v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result v3

    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetX:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetX:F

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetY:I

    mul-int/2addr v3, v1

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result v3

    iget v7, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mMaxBurnInOffsetY:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-float v3, v7

    const v7, 0x476a6000    # 60000.0f

    div-float/2addr v3, v7

    const/high16 v7, 0x42b20000    # 89.0f

    invoke-static {v3, v2, v7}, Lkotlinx/atomicfu/AtomicFU;->zigzag(FFF)F

    move-result v3

    invoke-static {v5, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInProgress:F

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetX:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetY:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    sub-float v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    sub-float v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    cmpl-float v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    int-to-float v3, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    sub-float v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetX:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInOffsetY:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBurnInProgress:F

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    if-ne v0, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_4

    cmpl-float v3, v3, v2

    if-nez v3, :cond_5

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v6

    :goto_3
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    iput v6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    :cond_8
    return-void
.end method

.method public final updateColor()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFullyInflated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mTextColorPrimary:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08043c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final updatePadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
