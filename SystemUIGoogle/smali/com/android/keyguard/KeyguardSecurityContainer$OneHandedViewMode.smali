.class public final Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneHandedViewMode"
.end annotation


# instance fields
.field public mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

.field public mView:Landroid/view/ViewGroup;

.field public mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChildWidthMeasureSpec(I)I
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public final handleTap(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->isLeftAligned()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    xor-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    xor-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "one_handed_keyguard_side"

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(ILjava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    :goto_0
    const/16 v2, 0x3f

    invoke-static {v2, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    :cond_3
    return-void
.end method

.method public final init(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/keyguard/KeyguardSecurityViewFlipper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-virtual {p3}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x53

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p2, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->isLeftAligned()Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final isLeftAligned()Z
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 v0, 0x0

    const-string/jumbo v1, "one_handed_keyguard_side"

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final updatePositionByTouchX(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    xor-int/lit8 v2, p1, 0x1

    const-string/jumbo v3, "one_handed_keyguard_side"

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updateSecurityViewLocation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->isLeftAligned()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->updateSecurityViewLocation(ZZ)V

    return-void
.end method

.method public final updateSecurityViewLocation(ZZ)V
    .locals 14

    move-object v11, p0

    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    iget-object v2, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    move v9, v2

    :goto_0
    if-eqz p2, :cond_4

    iget-object v2, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10c001a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/PathInterpolator;

    sget-object v8, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getTranslationX()F

    move-result v4

    float-to-int v7, v4

    iget-object v4, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0705fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v6, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->hasOverlappingRendering()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getLayerType()I

    move-result v6

    if-eq v6, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v10, v0

    if-eqz v10, :cond_3

    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v3, v1}, Landroid/widget/ViewFlipper;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getAlpha()F

    move-result v6

    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v12, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;

    move-object v0, v13

    move-object v1, p0

    move v3, v4

    move v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;Landroid/view/animation/Interpolator;IZLandroid/view/animation/PathInterpolator;FILandroid/view/animation/PathInterpolator;IZ)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mRunningOneHandedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_4
    iget-object v0, v11, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    int-to-float v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setTranslationX(F)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
