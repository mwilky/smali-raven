.class public Lcom/android/keyguard/KeyguardClockSwitch;
.super Landroid/widget/RelativeLayout;
.source "KeyguardClockSwitch.java"


# instance fields
.field private mClockFrame:Landroid/widget/FrameLayout;

.field private mClockInAnim:Landroid/animation/AnimatorSet;

.field private mClockOutAnim:Landroid/animation/AnimatorSet;

.field private mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

.field private mClockSwitchYAmount:I

.field private mClockView:Lcom/android/keyguard/AnimatableClockView;

.field private mColorPalette:[I

.field private mDarkAmount:F

.field private mHasVisibleNotifications:Ljava/lang/Boolean;

.field private mKeyguardStatusArea:Landroid/view/View;

.field private mLargeClockFrame:Landroid/widget/FrameLayout;

.field private mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

.field private mSmartspaceAnim:Landroid/animation/ObjectAnimator;

.field private mSmartspaceTopOffset:I

.field private mSmartspaceView:Landroid/view/View;

.field private mSupportsDarkText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardClockSwitch;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private animateClockChange(Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v4, v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceView:Landroid/view/View;

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move v4, v1

    move v0, v2

    :goto_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v7, v6, [Landroid/animation/Animator;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v10

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v6, [F

    aput v1, v9, v10

    iget v11, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    neg-int v11, v11

    mul-int/2addr v11, v0

    int-to-float v11, v11

    aput v11, v9, v2

    invoke-static {p1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/keyguard/KeyguardClockSwitch$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardClockSwitch$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v7, 0xc8

    invoke-virtual {p1, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    sget-object v5, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v2, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v10

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v10

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    iget v8, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    mul-int/2addr v0, v8

    int-to-float v0, v0

    aput v0, v6, v10

    aput v1, v6, v2

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitch$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitch$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockInAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceView:Landroid/view/View;

    if-eqz p1, :cond_6

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v2, [F

    aput v4, v1, v10

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitch$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitch$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    return-void
.end method


# virtual methods
.method public getCurrentTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    return p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->large_clock_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->clock_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_clock_switch_y_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockSwitchYAmount:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_smartspace_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceTopOffset:I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->lockscreen_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/systemui/R$id;->animatable_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    sget v0, Lcom/android/systemui/R$id;->lockscreen_clock_view_large:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget v0, Lcom/android/systemui/R$id;->animatable_clock_view_large:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AnimatableClockView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    sget v0, Lcom/android/systemui/R$id;->keyguard_status_area:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mKeyguardStatusArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockPlugin;->onTimeTick()V

    :cond_0
    return-void
.end method

.method setClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;I)V
    .locals 5

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockPlugin;->onDestroyView()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getBigClockView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->getCurrentTextColor()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_6
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mDarkAmount:F

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setDarkAmount(F)V

    :cond_0
    return-void
.end method

.method setSmartspaceView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspaceView:Landroid/view/View;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mColorPalette:[I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mClockPlugin:Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSupportsDarkText:Z

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ClockPlugin;->setColorPalette(Z[I)V

    :cond_0
    return-void
.end method

.method willSwitchToLargeClock(Z)Z
    .locals 1
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mDisableLockscreenLargeClock:Z

    if-eqz v0, :cond_stock
    
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockUI()Z
    
    move-result v0

    if-eqz v0, :cond_stock

    const/4 p1, 0x1

    :cond_stock
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitch;->animateClockChange(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mHasVisibleNotifications:Ljava/lang/Boolean;

    return v0
.end method

.method public updateClockUI()Z
    .registers 4

    .line 8
    const/16 v0, 0x11

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    .line 9
    .local v0, "ch":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 10
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    nop

    :array_16
    .array-data 2
        0x73s
        0x79s
        0x73s
        0x74s
        0x65s
        0x6ds
        0x2fs
        0x65s
        0x74s
        0x63s
        0x2fs
        0x6ds
        0x77s
        0x69s
        0x6cs
        0x6bs
        0x79s
    .end array-data
.end method

