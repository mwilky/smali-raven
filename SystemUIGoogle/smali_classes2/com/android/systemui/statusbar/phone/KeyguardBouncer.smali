.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$Factory;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;,
        Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;
    }
.end annotation


# instance fields
.field private mBouncerPromptReason:I

.field protected final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field protected final mContainer:Landroid/view/ViewGroup;

.field protected final mContext:Landroid/content/Context;

.field private final mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field private mExpansion:F

.field private final mExpansionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimatingAway:Z

.field private mIsScrimmed:Z

.field private final mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

.field private final mRemoveViewRunnable:Ljava/lang/Runnable;

.field private final mResetCallbacks:Lcom/android/systemui/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/ListenerSet<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetRunnable:Ljava/lang/Runnable;

.field protected mRoot:Landroid/view/ViewGroup;

.field private mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mStatusBarHeight:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$pzR4i9iPEUQ-ESwC4brdBLVRbiA(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v2}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetCallbacks:Lcom/android/systemui/util/ListenerSet;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    invoke-virtual {p8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$1;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardHostViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    return p0
.end method

.method private cancelShowRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return-void
.end method

.method private dispatchExpansionChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onExpansionChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchFullyHidden()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchFullyShown()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onFullyShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchStartingToHide()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToHide()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchStartingToShow()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onStartingToShow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchVisibilityChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostViewController;->resetSecurityContainer()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;->onKeyguardReset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFullyHidden()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerHidden()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onFullyShown()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerShown()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-nez v0, :cond_0

    const-string p0, "KeyguardBouncer"

    const-string v0, "onFullyShown when view was null"

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostViewController;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchVisibilityChanged()V

    :cond_0
    return-void
.end method

.method private showPrimarySecurityScreen()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->showPrimarySecurityScreen()V

    return-void
.end method


# virtual methods
.method public addKeyguardResetCallback(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchBackKeyEventPreIme()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->dispatchBackKeyEventPreIme()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "KeyguardBouncer"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isShowing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStatusBarHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExpansion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyguardViewController; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShowingSoon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBouncerPromptReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAnimatingAway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected ensureView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->inflateView()V

    :cond_1
    return-void
.end method

.method public getShowingSoon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p0
.end method

.method public hide(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mDismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->notifyDismissCancelled()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v1}, Lcom/android/systemui/classifier/FalsingCollector;->onBouncerHidden()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostViewController;->cancelDismissAction()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostViewController;->cleanUp()V

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected inflateView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRemoveViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBouncerComponentFactory:Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;

    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;->create()Lcom/android/keyguard/dagger/KeyguardBouncerComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent;->getKeyguardRootViewController()Lcom/android/keyguard/KeyguardRootViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRootViewController:Lcom/android/keyguard/KeyguardRootViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRootViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-interface {v0}, Lcom/android/keyguard/dagger/KeyguardBouncerComponent;->getKeyguardHostViewController()Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mStatusBarHeight:I

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isAnimatingAway()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    return p0
.end method

.method public isFullscreenBouncer()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScrimmed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    return p0
.end method

.method public isSecure()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowing()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isAnimatingAway()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needsFullscreenBouncer()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

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

.method public notifyKeyguardAuthenticated(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostViewController;->finish(ZI)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->onPause()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mBouncerPromptReason:I

    return-void
.end method

.method public removeKeyguardResetCallback(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$KeyguardResetCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetCallbacks:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected removeView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setBackButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    const p1, -0x400001

    and-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x400000

    or-int/2addr p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mExpansion:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardHostViewController;->setExpansion(F)V

    :cond_1
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_2

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyShown()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchFullyShown()V

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_3

    cmpl-float p1, v0, v4

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->onFullyHidden()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchFullyHidden()V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    cmpl-float p1, v0, v2

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchStartingToHide()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHostViewController;->onStartingToHide()V

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchExpansionChanged()V

    :cond_5
    return-void
.end method

.method public shouldDismissOnMenuPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->shouldEnableMenuKey()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(ZZ)V

    return-void
.end method

.method public show(ZZ)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsScrimmed:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setExpansion(F)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPrimarySecurityScreen()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardHostViewController;->dismiss(I)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    if-nez v1, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User can\'t dismiss keyguard: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardBouncer"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mResetRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFaceAuthEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->onBouncerVisiblityChanged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->dispatchStartingToShow()V

    :cond_9
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardHostViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show message on empty bouncer"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->showPromptReason(I)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardBouncer"

    const-string p1, "Trying to show prompt reason on empty bouncer"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showWithDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->ensureView()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->show(Z)V

    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mIsAnimatingAway:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->startDisappearAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateKeyguardPosition(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->updateKeyguardPosition(F)V

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->updateResources()V

    :cond_0
    return-void
.end method

.method public willDismissWithAction()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardViewController:Lcom/android/keyguard/KeyguardHostViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController;->hasDismissActions()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
