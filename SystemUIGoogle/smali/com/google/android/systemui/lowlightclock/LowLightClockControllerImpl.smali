.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;
.super Ljava/lang/Object;
.source "LowLightClockControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/lowlightclock/LowLightClockController;


# instance fields
.field public mAnimationInAnimator:Landroid/animation/AnimatorSet;

.field public mAnimationOutAnimator:Landroid/animation/AnimatorSet;

.field public final mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

.field public final mBurmeseLineSpacing:F

.field public final mBurmeseNumerals:Ljava/lang/String;

.field public final mBurnInProtector:Lcom/google/android/systemui/lowlightclock/BurnInProtector;

.field public final mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

.field public final mChargingStatusProviderCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;

.field public mChargingStatusTextView:Landroid/widget/TextView;

.field public final mClockTextColor:I

.field public mClockView:Lcom/android/keyguard/AnimatableClockView;

.field public final mDefaultLineSpacing:F

.field public final mIsLowLightClockEnabled:Z

.field public mIsShowing:Z

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLocale:Ljava/util/Locale;

.field public mParent:Landroid/view/ViewGroup;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mView:Landroid/view/View;

.field public final mViewsToHide:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/os/PowerManager;Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;Lcom/google/android/systemui/lowlightclock/BurnInProtector;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mViewsToHide:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;)V

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusProviderCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    iput-object p5, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iput-object p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurnInProtector:Lcom/google/android/systemui/lowlightclock/BurnInProtector;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const p2, 0x7f05003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsLowLightClockEnabled:Z

    const p2, 0x7f060132

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockTextColor:I

    const-string p2, "my"

    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    const-wide/32 p3, 0x499602d2

    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurmeseNumerals:Ljava/lang/String;

    const p2, 0x7f0702a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurmeseLineSpacing:F

    const p2, 0x7f0702a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mDefaultLineSpacing:F

    return-void
.end method


# virtual methods
.method public final attachLowLightClockView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Attempting to attach low-light clock when it is already attached."

    invoke-static {v3, v0}, Landroidx/preference/R$drawable;->checkState(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsLowLightClockEnabled:Z

    const-string v3, "Attempting to attach low-light clock when it is not enabled."

    invoke-static {v3, v0}, Landroidx/preference/R$drawable;->checkState(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mParent:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0124

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v0, v3, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mParent:Landroid/view/ViewGroup;

    const v0, 0x7f0b04a7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "NotificationPanel must not be null"

    invoke-static {p1, v0}, Landroidx/preference/R$drawable;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mViewsToHide:Ljava/util/WeakHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v0, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mParent:Landroid/view/ViewGroup;

    const v0, 0x7f0b034b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mViewsToHide:Ljava/util/WeakHashMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    const v0, 0x7f0b0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusProvider:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mChargingStatusProviderCallback:Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda0;

    iput-object v0, p1, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mCallback:Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$Callback;

    iget-object v0, p1, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v1, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider$ChargingStatusCallback;-><init>(Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p1}, Lcom/google/android/systemui/lowlightclock/ChargingStatusProvider;->reportStatusToCallback()V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    const v0, 0x7f0b0196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/AnimatableClockView;

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    iget v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockTextColor:I

    iput v0, p1, Lcom/android/keyguard/AnimatableClockView;->dozingColor:I

    iput v0, p1, Lcom/android/keyguard/AnimatableClockView;->lockScreenColor:I

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    invoke-virtual {p1, v0, v2}, Lcom/android/keyguard/AnimatableClockView;->animateDoze(ZZ)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p1}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->updateLocale()V

    return-void
.end method

.method public final dozeTimeTick()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurnInProtector:Lcom/google/android/systemui/lowlightclock/BurnInProtector;

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mJitterStartTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mTimeUntilFullJitterMillis:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mMaxBurnInOffset:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mMaxBurnInOffset:I

    :goto_0
    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mView:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mView:Landroid/view/View;

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    return-void
.end method

.method public getClockView()Landroid/view/View;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final isLowLightClockEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsLowLightClockEnabled:Z

    return p0
.end method

.method public final showLowLightClock(Z)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    if-ne v0, p1, :cond_1

    return v0

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationInAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->updateLocale()V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p1}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mViewsToHide:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v5, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationInAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iget-object v4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInStartDelayMillis:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationInDurationMillis:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v8, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v3, [F

    iget v10, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInStartOffset:I

    int-to-float v10, v10

    aput v10, v9, v1

    aput v2, v9, v0

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationInDurationMillis:J

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v7, p1, v1

    aput-object v2, p1, v0

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$1;

    invoke-direct {p1, v5}, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda5;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationInAnimator:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mViewsToHide:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance v5, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurnInProtector:Lcom/google/android/systemui/lowlightclock/BurnInProtector;

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/google/android/systemui/lowlightclock/BurnInProtector;->mView:Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationOutAnimator:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationProvider:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    iget-object v4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mView:Landroid/view/View;

    new-instance v5, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationOutStartDelayMillis:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mAlphaAnimationOutDurationMillis:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v8, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v3, [F

    aput v2, v9, v1

    iget v2, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationOutEndOffset:I

    int-to-float v2, v2

    aput v2, v9, v0

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-wide v8, p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;->mYTranslationAnimationOutDurationMillis:J

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v7, p1, v1

    aput-object v2, p1, v0

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$2;

    invoke-direct {p1, v5}, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$2;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationOutAnimator:Landroid/animation/AnimatorSet;

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mAnimationOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->LOW_LIGHT_STARTED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;->LOW_LIGHT_STOPPED:Lcom/google/android/systemui/lowlightclock/LowLightDockEvent;

    :goto_1
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mIsShowing:Z

    return p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateLocale()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const-wide/32 v1, 0x499602d2

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurmeseNumerals:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mBurmeseLineSpacing:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mDefaultLineSpacing:F

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl;->mClockView:Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    :cond_1
    return-void
.end method
