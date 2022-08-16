.class public final Lcom/android/keyguard/KeyguardHostViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardHostView;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mCancelAction:Ljava/lang/Runnable;

.field public mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mOnKeyListener:Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;

.field public final mSecurityCallback:Lcom/android/keyguard/KeyguardHostViewController$2;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTranslationY:I

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardHostViewController$1;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostViewController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/android/keyguard/KeyguardHostViewController$1;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardHostViewController$1;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardHostViewController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardHostViewController$2;

    move-object v12, v2

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardHostViewController$2;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mSecurityCallback:Lcom/android/keyguard/KeyguardHostViewController$2;

    new-instance v2, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardHostViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-object v3, v2

    iget-object v4, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v5, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mAdminSecondaryLockScreenControllerFactory:Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;

    iget-object v6, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v9, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v11, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v13, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object v14, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v15, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v20, v0

    invoke-direct/range {v3 .. v20}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardHostViewController$2;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    return-void
.end method


# virtual methods
.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x7f

    const/16 v3, 0x7e

    const/16 v4, 0xde

    const/16 v5, 0x82

    const/16 v6, 0x4f

    const/4 v7, 0x1

    if-nez v1, :cond_2

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    return v7

    :cond_1
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_3
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v7

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateResources()V

    return-void
.end method

.method public final onResume()V
    .locals 7

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostViewController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen on, instance "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/4 v1, 0x2

    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget v5, v4, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    if-ne v5, v3, :cond_2

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->isOneHandedModeLeftAligned()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :cond_2
    :goto_0
    const/16 v4, 0x3f

    invoke-static {v4, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController()Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFaceAuthEnabled()Z

    move-result v0

    iget-object v5, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v6, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mWindowInsetsAnimationCallback:Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-virtual {v5, v6}, Landroid/widget/ViewFlipper;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v4, v0, :cond_4

    if-eq v4, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardHostViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardHostViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardHostViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public final resetSecurityContainer()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    const v2, 0x7f0702a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mTranslationY:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController;->mKeyguardSecurityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    :cond_2
    return-void
.end method
