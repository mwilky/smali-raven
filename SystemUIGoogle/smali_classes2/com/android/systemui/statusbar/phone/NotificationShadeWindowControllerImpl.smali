.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mFaceAuthDisplayBrightness:F

.field private final mForceOpenTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardMaxRefreshRate:F

.field private final mKeyguardPreferredRefreshRate:F

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationShadeView:Landroid/view/ViewGroup;

.field private mScreenBrightnessDoze:F

.field private mScrimsVisibilityListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$Tg5Yd-VBoVucIEgNnXwTq3hSNJo(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->lambda$apply$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/AuthController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    const-class p2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p10, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    check-cast p5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 p2, 0x1

    invoke-interface {p5, v1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    invoke-interface {p6, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p3, p2, v0

    if-lez p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object p6, p3, p5

    invoke-virtual {p6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p7

    sub-float/2addr p7, p2

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result p7

    float-to-double p7, p7

    const-wide p9, 0x3fb999999999999aL    # 0.1

    cmpg-double p7, p7, p9

    if-gtz p7, :cond_0

    invoke-virtual {p6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->config_keyguardMaxRefreshRate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardScreenRotationAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_1

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mFaceAuthDisplayBrightness:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-nez v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffAnimationPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceUserActivity:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 5

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    if-nez v3, :cond_3

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_4
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    if-ne v0, v2, :cond_8

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_8

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    if-nez p1, :cond_8

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    :goto_6
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    float-to-long p0, p0

    const-string v0, "display_set_preferred_refresh_rate"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    goto :goto_9

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    if-ne v0, v2, :cond_b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez v0, :cond_b

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    if-nez v0, :cond_b

    move v1, v2

    :cond_b
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    if-nez p1, :cond_d

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    goto :goto_8

    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    :goto_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    float-to-long p0, p0

    const-string v0, "display_max_refresh_rate"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_e
    :goto_9
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x2710

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    :goto_0
    iput-wide p0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_1
    return-void
.end method

.method private applyVisibility(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result v0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    if-nez p0, :cond_2

    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    if-nez p0, :cond_2

    :cond_0
    iget p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-gtz p0, :cond_2

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$apply$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationShadeWindowController"

    const-string v2, "Failed to call setHasTopUi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    return-void
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mStatusBarState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f8

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "NotificationShade"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/InsetsFlags;->behavior:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationShadeWindowController:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardMaxRefreshRate="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardPreferredRefreshRate="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const-string p1, "  "

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getForcePluginOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    return p0
.end method

.method public getPanelExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    return p0
.end method

.method public isLaunchingActivity()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    return p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStateChangedCallbacks()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mRemoteInputActive:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackdropShowing:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBackgroundBlurRadius(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBackgroundBlurRadius:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mBouncerShowing:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mDozing:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceDozeBrightness:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setForcePluginOpen(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForceOpenTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForcePluginOpen:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_1
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mForceCollapsed:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mHeadsUpShowing:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardFadingAway:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardGoingAway:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardNeedsInput:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardOccluded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mKeyguardShowing:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setLaunchingActivity(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLaunchingActivity:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setLightRevealScrimOpaque(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mLightRevealScrimOpaque:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotTouchable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setNotificationShadeView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mPanelVisible:Z

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mNotificationShadeFocusable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mQsExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setRequestTopUi(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mComponentsForcingTopUi:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mScrimsVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setScrimsVisibilityListener(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;->mWallpaperSupportsAmbientMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
