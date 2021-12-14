.class public Lcom/android/systemui/qs/QuickStatusBarHeader;
.super Landroid/widget/FrameLayout;
.source "QuickStatusBarHeader.java"


# instance fields
.field private mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

.field private mClockContainer:Landroid/view/ViewGroup;

.field private mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

.field private mClockIconsSeparator:Landroid/view/View;

.field private mClockIconsView:Landroid/view/View;

.field private mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mConfigShowBatteryEstimate:Z

.field private mContainer:Landroid/view/View;

.field private mCutOutPaddingLeft:I

.field private mCutOutPaddingRight:I

.field private mDateContainer:Landroid/view/View;

.field private mDatePrivacySeparator:Landroid/widget/Space;

.field private mDatePrivacyView:Landroid/view/View;

.field private mDateView:Landroid/view/View;

.field private mExpanded:Z

.field private mHasCenterCutout:Z

.field protected mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

.field private mIsSingleCarrier:Z

.field private mKeyguardExpansionFraction:F

.field private mPrivacyChip:Landroid/view/View;

.field private mPrivacyContainer:Landroid/view/View;

.field private mQSCarriers:Landroid/view/View;

.field private mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private mQsDisabled:Z

.field private mRightLayout:Landroid/view/View;

.field private mRoundedCornerPadding:I

.field private mRssiIgnoredSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityHeaderView:Landroid/view/View;

.field private mShowClockIconsSeparator:Z

.field private mTextColorPrimary:I

.field private mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mTopViewMeasureHeight:I

.field private mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mWaterfallTopInset:I


# direct methods
.method public static synthetic $r8$lambda$5iY7OvdvqQZzZKLQ956waMXDU1M(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    return-void
.end method

.method public static synthetic $r8$lambda$jfxpiBbHcWts__YTTSLpACq44xM(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateEverything$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSingleCarrier:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/policy/VariableDateView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    return p0
.end method

.method private synthetic lambda$updateEverything$0()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method private setContentMargins(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setDatePrivacyContainersWidth(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSecurityHeaderContainerVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setSeparatorVisibility(Z)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAlphaAnimator()V
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Landroid/view/View;

    const/4 v3, 0x3

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAnimators()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V

    iget v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContainer:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    const-string/jumbo v0, "translationY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateBatteryMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mConfigShowBatteryEstimate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    :goto_0
    return-void
.end method

.method private updateClockDatePadding()V
    .locals 5

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_left_clock_starting_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_left_clock_end_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateHeadersPadding()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    if-lez v3, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-lez v3, :cond_1

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    invoke-virtual {v3, v2, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    iget-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setDisabledByPolicy(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public getOffsetTranslation()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->paddingNeededForCutoutAndRoundedCorner(Landroid/view/DisplayCutout;Landroid/util/Pair;I)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v3}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v6}, Landroid/widget/Space;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-nez v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    iput-boolean v5, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    goto :goto_3

    :cond_4
    :goto_2
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Space;->setVisibility(I)V

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    iput-boolean v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    iput-boolean v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHasCenterCutout:Z

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingLeft:I

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mCutOutPaddingRight:I

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Insets;->top:I

    :goto_4
    iput v6, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mWaterfallTopInset:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateBatteryMode()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;Lcom/android/systemui/qs/QSExpansionPathInterpolator;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;",
            "Lcom/android/systemui/qs/QSExpansionPathInterpolator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x1010036

    invoke-static {p3, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setDatePrivacyContainersWidth(Z)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSecurityHeaderContainerVisibility(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    sget v0, Lcom/android/systemui/R$id;->quick_status_bar_date_privacy:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQSCarriers:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->qs_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->date_clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/VariableDateView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    sget v0, Lcom/android/systemui/R$id;->header_text_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mSecurityHeaderView:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->separator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsSeparator:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->rightLayout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRightLayout:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->date_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDateContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->privacy_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->clock_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    sget v0, Lcom/android/systemui/R$id;->space:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacySeparator:Landroid/widget/Space;

    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setDatePrivacyContainersWidth(Z)V

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSecurityHeaderContainerVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/BatteryMeterView;->setIgnoreTunerUpdates(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setPercentShowMode(I)V

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTopViewMeasureHeight:I

    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method setChipVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mPrivacyChip:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimatorFixed:Lcom/android/systemui/qs/TouchAnimator;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public setExpanded(ZLcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mExpanded:Z

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpandedScrollAmount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollY(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

.method public setExpansion(ZFF)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconsAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    iput p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mKeyguardExpansionFraction:F

    return-void
.end method

.method setIsSingleCarrier(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSingleCarrier:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V

    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResources()V
    .locals 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_showBatteryEstimateQSBH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mConfigShowBatteryEstimate:Z

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRoundedCornerPadding:I

    const v1, 0x1050244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mQsDisabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockIconsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010038

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mBatteryRemainingIcon:Lcom/android/systemui/BatteryMeterView;

    iget v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mTextColorPrimary:I

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/BatteryMeterView;->updateColors(III)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qqs_layout_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateBatteryMode()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateHeadersPadding()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAnimators()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateClockDatePadding()V

    return-void
.end method
