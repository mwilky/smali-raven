.class public Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
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
.field private final mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mFaceDetectRunning:Z

.field private mInputBouncerHiddenAmount:F

.field private mIsBouncerVisible:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mLastDozeAmount:F

.field private mLaunchTransitionFadingAway:Z

.field private final mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private mQsExpanded:Z

.field private mShowingUdfpsBouncer:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarExpansion:F

.field private final mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

.field private mStatusBarState:I

.field private mTransitionToFullShadeProgress:F

.field private final mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field private mUdfpsRequested:Z


# direct methods
.method protected constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$5;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p8, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object p10, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p11, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p12, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->showUdfpsBouncer(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/biometrics/UdfpsController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansion:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    return p1
.end method

.method private maybeShowInputBouncer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    return-void
.end method

.method private showUdfpsBouncer(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->shouldPauseAuth()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateInUdfpsBouncer(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->accessibility_fingerprint_bouncer:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return v2
.end method

.method private updateAlpha()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansion:F

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

    if-nez v1, :cond_2

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->setUnpausedAlpha(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mShowingUdfpsBouncer="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mFaceDetectRunning="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mStatusBarState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mQsExpanded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsBouncerVisible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInputBouncerHiddenAmount="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mStatusBarExpansion="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansion:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unpausedAlpha="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p3}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->getUnpausedAlpha()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mView.mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget-boolean p3, p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLaunchTransitionFadingAway="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsKeyguardViewController"

    return-object p0
.end method

.method public listenForTouchesOutsideView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchOutsideView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->maybeShowInputBouncer()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v0, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozeAmountChanged(FF)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isLaunchTransitionFadingAway()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isQsExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setUdfpsKeyguardViewController(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->removeAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getUdfpsKeyguardViewController()Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setUdfpsKeyguardViewController(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    :cond_0
    return-void
.end method

.method public setTransitionToFullShadeProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method public shouldPauseAuth()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLaunchTransitionFadingAway:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    if-eq v0, v2, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2
.end method
