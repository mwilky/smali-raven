.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "UdfpsKeyguardViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/biometrics/UdfpsAnimationViewController<",
        "Lcom/android/systemui/biometrics/UdfpsKeyguardView;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final mActivityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;

.field public mActivityLaunchProgress:F

.field public final mAlternateAuthInterceptor:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

.field public mInputBouncerHiddenAmount:F

.field public mIsGenericBouncerShowing:Z

.field public mIsLaunchingActivity:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mLastDozeAmount:F

.field public mLastUdfpsBouncerShowTime:J

.field public mLaunchTransitionFadingAway:Z

.field public final mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mPanelExpansionFraction:F

.field public final mPanelExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

.field public mQsExpansion:F

.field public mShowingUdfpsBouncer:Z

.field public final mStateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

.field public mStatusBarState:I

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mTransitionToFullShadeProgress:F

.field public final mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public mUdfpsRequested:Z

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final mUnlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static -$$Nest$mshowUdfpsBouncer(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->shouldPauseAuth()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastUdfpsBouncerShowTime:J

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_5

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFullyInflated:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v2

    iget-object v1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;

    invoke-direct {v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFace:Z

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(I)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFace:Z

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateGenericBouncerVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    move v1, v2

    :goto_2
    return v1

    nop

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

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/animation/ActivityLaunchAnimator;)V
    .locals 7

    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p12

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUnlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, -0x1

    iput-wide v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastUdfpsBouncerShowTime:J

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mPanelExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;

    move-object v1, p4

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object v1, p5

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p7

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object v1, p8

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p9

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p10

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p13

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    move-object/from16 v1, p11

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v1, p14

    iput-object v1, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p2, "mShowingUdfpsBouncer="

    invoke-static {p2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mFaceDetectRunning=false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStatusBarState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    invoke-static {v0}, Lokio/Okio;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTransitionToFullShadeProgress="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    const-string v1, "mQsExpansion="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpansion:F

    const-string v1, "mIsGenericBouncerShowing="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsGenericBouncerShowing:Z

    const-string v1, "mInputBouncerHiddenAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const-string v1, "mPanelExpansionFraction="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mPanelExpansionFraction:F

    const-string/jumbo v1, "unpausedAlpha="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget v0, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    const-string v1, "mUdfpsRequested="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline2;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    const-string v1, "mLaunchTransitionFadingAway="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    const-string v1, "mLastDozeAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UdfpsKeyguardView ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mPauseAuth="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    const-string v1, "    mUnpausedAlpha="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    const-string v1, "    mUdfpsRequested="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline2;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    const-string v1, "    mInterpolatedDarkAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mInterpolatedDarkAmount:F

    const-string v1, "    mAnimationType="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline1;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAnimationType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsKeyguardViewController"

    return-object p0
.end method

.method public final onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    return-void
.end method

.method public final onTouchOutsideView()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastUdfpsBouncerShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_1
    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->onDozeAmountChanged(FF)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpansion:F

    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpansion:F

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateGenericBouncerVisibility()V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->panelExpansionStateManager:Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mPanelExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->addExpansionListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget v1, v1, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->scaleFactor:F

    iput v1, v2, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mScaleFactor:F

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updatePadding()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsKeyguardViewController:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$6;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFace:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(I)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->panelExpansionStateManager:Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mPanelExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsKeyguardViewController:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    if-ne v1, p0, :cond_1

    iput-object v2, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->udfpsKeyguardViewController:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$7;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldPauseAuth()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsGenericBouncerShowing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    return v3

    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    return v3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    int-to-double v4, p0

    const-wide v6, 0x4039800000000000L    # 25.5

    cmpg-double p0, v4, v6

    if-gez p0, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method public final updateAlpha()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mPanelExpansionFraction:F

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {v1, v2, v3, v4, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-nez v1, :cond_3

    int-to-float v0, v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/PathInterpolator;

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpansion:F

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsLaunchingActivity:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-nez v1, :cond_2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mActivityLaunchProgress:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    :cond_2
    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget v1, v1, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mDialogSuggestedAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAlpha:I

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateAlpha()I

    return-void
.end method

.method public final updateGenericBouncerVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsGenericBouncerShowing:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowingAlternateAuth()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsGenericBouncerShowing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    :cond_2
    :goto_1
    return-void
.end method
