.class public Lcom/android/systemui/navigationbar/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;,
        Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mBehavior:I

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDarkIconColor:I

.field private mHomeRotationEnabled:Z

.field private mHoveringRotationSuggestion:Z

.field private mIconResId:I

.field private mIsNavigationBarShowing:Z

.field private mIsRecentsAnimationRunning:Z

.field private mLastRotationSuggestion:I

.field private mLightIconColor:I

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSkipOverrideUserLockPrefsOnce:Z

.field private mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;


# direct methods
.method public static synthetic $r8$lambda$EgQXKIsd5cCh73nIJ2ELKEupB0o(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GxmebPWhsqfX95jJhWPMdJo7Oaw(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGQg5Xlyaj52-_PmjiqBk59RkKI(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKC8vc0YCMmgWzmB_75_A9Sb_NQ(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$0()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    sget v2, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    iput v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/systemui/navigationbar/RotationButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/RotationButtonController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/RotationButtonController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/RotationButtonController;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method private canShowRotationButton()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private computeRotationProposalTimeout()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return p0

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v2, :cond_8

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    return p0

    :cond_9
    if-ne p1, v2, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v2, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_ACCEPTED:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    iget p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showAndLogRotationSuggestion()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_SHOWN:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method private showPendingRotationButtonIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_0
    return-void
.end method

.method private updateRotationButtonStateInOverview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDarkIconColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    return p0
.end method

.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    return p0
.end method

.method public getLightIconColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    return p0
.end method

.method getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method public isRotationLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method onBehaviorChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method onDisable2FlagChanged(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_0
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method onRotationProposal(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->acceptRotationProposal()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_1
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_2
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotationAnimationCCW(II)Z

    move-result p1

    if-eqz p2, :cond_5

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    goto :goto_2

    :cond_6
    sget p1, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_cw_start_90:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    iget p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    iget p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/navigationbar/RotationButton;->updateIcon(II)V

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_4
    return-void
.end method

.method registerListeners()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const-string v0, "StatusBar/RotationButtonController"

    const-string v1, "RegisterListeners for the display failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method setDarkIntensity(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setHomeRotationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->updateRotationButtonStateInOverview()V

    return-void
.end method

.method setRecentsAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->updateRotationButtonStateInOverview()V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/navigationbar/RotationButton;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    iget-object v3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->show()Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->hide()Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/navigationbar/RotationButtonController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method setRotationButton(Lcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/RotationButton;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p1, p0}, Lcom/android/systemui/navigationbar/RotationButton;->setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0, p2}, Lcom/android/systemui/navigationbar/RotationButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method setSkipOverrideUserLockPrefsOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return-void
.end method

.method unregisterListeners()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
