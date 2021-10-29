.class public Lcom/google/android/systemui/assist/LockscreenOpaLayout;
.super Landroid/widget/FrameLayout;
.source "LockscreenOpaLayout.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private final INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

.field private final RED_YELLOW_START_DELAY:I

.field private final mAnimatedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBlue:Landroid/view/View;

.field private mCannedAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAnimatorSet:Landroid/animation/AnimatorSet;

.field private mGestureState:I

.field private mGreen:Landroid/view/View;

.field private mLineAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRed:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mYellow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->RED_YELLOW_START_DELAY:I

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    invoke-direct {p1, v0, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->RED_YELLOW_START_DELAY:I

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    invoke-direct {p1, p2, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->RED_YELLOW_START_DELAY:I

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-direct {p1, p2, p3, v0, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->RED_YELLOW_START_DELAY:I

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const p4, 0x3f733333    # 0.95f

    invoke-direct {p1, p2, p3, p4, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/assist/LockscreenOpaLayout;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/assist/LockscreenOpaLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->getLineAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method private endCurrentAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    return-void
.end method

.method private getCannedAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v1, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_40:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->opa_lockscreen_canned_ry:I

    invoke-static {v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v2

    neg-float v2, v2

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    const/16 v5, 0x53

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {v4, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v2, v1, v3, v4, v5}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->opa_lockscreen_canned_bg:I

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    iget-object v5, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    const/16 v6, 0xa7

    invoke-static {v2, v1, v3, v5, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v2, v1, v3, v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x32

    const/16 v5, 0x82

    invoke-static {v1, v3, v4, v5, v2}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {v1, v3, v4, v5, v2}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    const/16 v5, 0x71

    invoke-static {v1, v3, v4, v5, v2}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {v1, v3, v4, v5, v2}, Lcom/google/android/systemui/assist/OpaUtils;->getAlphaObjectAnimator(Landroid/view/View;FIILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCannedAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/16 v3, 0x85

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    const/16 v4, 0x96

    invoke-static {v1, v2, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {v1, v2, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/systemui/assist/OpaUtils;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$3;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->opa_lockscreen_translation_ry:I

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    iget-object v5, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    const/16 v6, 0x16e

    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->opa_lockscreen_translation_bg:I

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    iget-object v5, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->INTERPOLATOR_5_100:Landroid/view/animation/Interpolator;

    iget-object v3, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    invoke-static {v3, v4}, Lcom/google/android/systemui/assist/OpaUtils;->getPxVal(Landroid/content/res/Resources;I)F

    move-result v3

    neg-float v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    invoke-static {v1, v2, v3, v4, v6}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationObjectAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mLineAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget-object v2, Lcom/google/android/systemui/assist/OpaUtils;->INTERPOLATOR_40_OUT:Landroid/view/animation/Interpolator;

    const/16 v3, 0xbe

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/google/android/systemui/assist/OpaUtils;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/systemui/assist/OpaUtils;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$2;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private skipToStartingValue()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startCannedAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->getCannedAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$1;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->skipToStartingValue()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$id;->blue:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->red:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->yellow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->green:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mRed:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mYellow:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mAnimatedViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGreen:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProgress(FI)V
    .locals 5

    iget p2, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->endCurrentAnimation()V

    :cond_1
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    const p2, 0x44054000    # 533.0f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0xa7

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    return-void

    :cond_3
    cmp-long v0, p1, v2

    if-gez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :cond_5
    return-void

    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startCannedAnimation()V

    return-void
.end method

.method public onRelease()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/LockscreenOpaLayout$4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$4;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->startRetractAnimation()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    iget p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$5;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureState:I

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/google/android/systemui/assist/LockscreenOpaLayout$6;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/LockscreenOpaLayout$6;-><init>(Lcom/google/android/systemui/assist/LockscreenOpaLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/assist/LockscreenOpaLayout;->mGestureAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void
.end method
