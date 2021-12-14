.class public Lcom/android/keyguard/LockIconViewController;
.super Lcom/android/systemui/util/ViewController;
.source "LockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/LockIconView;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field private static final VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final sDefaultDensity:F

.field private static final sDistAboveKgBottomAreaPx:F

.field private static final sLockIconRadiusPx:I


# instance fields
.field private final mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private final mAuthControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

.field private final mAuthRippleController:Lcom/android/systemui/biometrics/AuthRippleController;

.field private mBottomPadding:I

.field private mCanDismissLockScreen:Z

.field private mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mDetectedLongPress:Z

.field private mDownDetected:Z

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFpToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHeightPixels:F

.field private mInterpolatedDarkAmount:F

.field private mIsBouncerShowing:Z

.field private mIsDozing:Z

.field private mIsKeyguardShowing:Z

.field private final mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private final mLockIcon:Landroid/graphics/drawable/Drawable;

.field private final mLockToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mLockedLabel:Ljava/lang/CharSequence;

.field private final mMaxBurnInOffsetX:I

.field private final mMaxBurnInOffsetY:I

.field private mOnGestureDetectedRunnable:Ljava/lang/Runnable;

.field private mQsExpanded:Z

.field private mRunningFPS:Z

.field private final mSensorTouchLocation:Landroid/graphics/Rect;

.field private mShowAODFpIcon:Z

.field private mShowLockIcon:Z

.field private mShowUnlockIcon:Z

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mUdfpsEnrolled:Z

.field private mUdfpsSupported:Z

.field private final mUnlockIcon:Landroid/graphics/drawable/Drawable;

.field private mUnlockedLabel:Ljava/lang/CharSequence;

.field private mUserUnlockedWithBiometric:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWidthPixels:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/keyguard/LockIconViewController;->sDefaultDensity:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/keyguard/LockIconViewController;->sLockIconRadiusPx:I

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/keyguard/LockIconViewController;->sDistAboveKgBottomAreaPx:F

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/LockIconViewController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Vibrator;Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mSensorTouchLocation:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$1;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$2;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$3;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$4;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$5;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/keyguard/LockIconViewController$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/LockIconViewController$6;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/keyguard/LockIconViewController$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LockIconViewController$7;-><init>(Lcom/android/keyguard/LockIconViewController;)V

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p7, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iput-object p4, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object p5, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/android/keyguard/LockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p10, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p11, p0, Lcom/android/keyguard/LockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p12, p0, Lcom/android/keyguard/LockIconViewController;->mVibrator:Landroid/os/Vibrator;

    iput-object p13, p0, Lcom/android/keyguard/LockIconViewController;->mAuthRippleController:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/LockIconView;

    sget p3, Lcom/android/systemui/R$id;->lock_udfps_aod_fp:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_x:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetX:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->udfps_burn_in_offset_y:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetY:I

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$drawable;->ic_unlock:I

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$anim;->lock_to_unlock:I

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/systemui/R$anim;->fp_to_unlock:I

    iget-object p5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p5, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p5

    invoke-virtual {p2, p4, p5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mFpToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p4, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mLockToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->accessibility_lock_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    const-string p1, "LockIconViewController"

    invoke-virtual {p8, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/LockIconViewController;)Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/LockIconViewController;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/LockIconViewController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/LockIconViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isClickable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateColors()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mDetectedLongPress:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/LockIconViewController;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800()Landroid/media/AudioAttributes;
    .locals 1

    sget-object v0, Lcom/android/keyguard/LockIconViewController;->VIBRATION_SONIFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/LockIconViewController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/LockIconViewController;)Lcom/android/systemui/biometrics/AuthRippleController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthRippleController:Lcom/android/systemui/biometrics/AuthRippleController;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/LockIconViewController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mOnGestureDetectedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/LockIconViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/LockIconViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/keyguard/LockIconViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateIsUdfpsEnrolled()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method

.method private isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLockScreen()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateBurnInOffsets()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetY:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v1

    iget v3, p0, Lcom/android/keyguard/LockIconViewController;->mMaxBurnInOffsetY:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    invoke-static {v2, v1, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInProgressOffset()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget p0, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private updateColors()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->updateColorAndBackgroundVisibility()V

    return-void
.end method

.method private updateConfiguration()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/LockIconViewController;->mWidthPixels:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/LockIconViewController;->mHeightPixels:F

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->lock_icon_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/LockIconViewController;->mBottomPadding:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_unlock_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->accessibility_lock_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateLockIconLocation()V

    return-void
.end method

.method private updateIsUdfpsEnrolled()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v2}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsSensorLocation()Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/LockIconView;->setUseBackground(Z)V

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    iget-boolean v3, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    if-ne v0, v3, :cond_1

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    :cond_2
    return-void
.end method

.method private updateKeyguardShowing()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    return-void
.end method

.method private updateLockIconLocation()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsProps()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/LockIconView;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationX:I

    int-to-float v3, v3

    iget v4, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorLocationY:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorRadius:I

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/LockIconView;->setCenterLocation(Landroid/graphics/PointF;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/android/keyguard/LockIconViewController;->mWidthPixels:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/LockIconViewController;->mHeightPixels:F

    iget v4, p0, Lcom/android/keyguard/LockIconViewController;->mBottomPadding:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/android/keyguard/LockIconViewController;->sDistAboveKgBottomAreaPx:F

    sub-float/2addr v3, v4

    sget v4, Lcom/android/keyguard/LockIconViewController;->sLockIconRadiusPx:I

    int-to-float v5, v4

    sub-float/2addr v3, v5

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/LockIconView;->setCenterLocation(Landroid/graphics/PointF;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mSensorTouchLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateVisibility()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    const/4 v2, 0x4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    iget-boolean v6, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    if-nez v7, :cond_4

    :cond_3
    move v7, v3

    goto :goto_1

    :cond_4
    move v7, v4

    :goto_1
    iput-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v4

    :goto_2
    iput-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/keyguard/LockIconViewController;->mShowAODFpIcon:Z

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    if-eqz v7, :cond_7

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/LockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v4, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_7
    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    if-eqz v7, :cond_b

    if-nez v6, :cond_a

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mFpToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/LockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mFpToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mFpToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mLockToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/LockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mLockToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mLockToUnlockIcon:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/LockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object v4, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowAODFpIcon:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v5, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    :goto_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowAODFpIcon:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/LockIconView;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUdfpsSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUdfpsEnrolled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mUdfpsEnrolled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsKeyguardShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mShowUnlockIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mShowLockIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mShowAODFpIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mShowAODFpIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBouncerShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserUnlockedWithBiometric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningFPS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCanDismissLockScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStatusBarState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mQsExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInterpolatedDarkAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/LockIconView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTop()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconView;->getLocationTop()F

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/Runnable;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mSensorTouchLocation:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mOnGestureDetectedRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/keyguard/LockIconViewController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    iget-boolean p2, p0, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method protected onViewAttached()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateIsUdfpsEnrolled()V

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateConfiguration()V

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateKeyguardShowing()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mUserUnlockedWithBiometric:Z

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsBouncerShowing:Z

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mIsDozing:Z

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/LockIconViewController;->mInterpolatedDarkAmount:F

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mRunningFPS:Z

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarState:I

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateColors()V

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mAuthControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mDownDetected:Z

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateBurnInOffsets()V

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mAuthControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mCancelDelayedUpdateVisibilityRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/LockIconView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/LockIconViewController;->mQsExpanded:Z

    invoke-direct {p0}, Lcom/android/keyguard/LockIconViewController;->updateVisibility()V

    return-void
.end method
