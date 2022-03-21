.class public Lcom/android/systemui/statusbar/window/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mLaunchAnimationContainer:Landroid/view/ViewGroup;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatusBarWindowView:Landroid/view/ViewGroup;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$Gzm3ium_JmBf4cZxVreoCPG8dlI(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowView;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    sget p3, Lcom/android/systemui/R$id;->status_bar_launch_animation_container:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput-object p6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    iget p2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    if-gez p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/window/StatusBarWindowController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setLaunchAnimationRunning(Z)V

    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mOngoingProcessRequiresStatusBarVisible:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    :goto_0
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private calculateStatusBarLocationsForAllRotations()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private getBarLayoutParamsForRotation(I)Landroid/view/WindowManager$LayoutParams;
    .locals 10

    iget v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    sget-boolean v1, Landroid/view/ViewRootImpl;->INSETS_LAYOUT_GENERALIZATION:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    move-result v0

    :cond_3
    :goto_0
    move v6, v0

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/16 v7, 0x7d0

    const v8, -0x7f7ffff8

    const/4 v9, -0x3

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "StatusBar"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object p1
.end method

.method private setLaunchAnimationRunning(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void
.end method


# virtual methods
.method public addViewToWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attach()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->getBarLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    return-void
.end method

.method public getBackgroundView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->status_bar_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    return p0
.end method

.method public refreshStatusBarHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void
.end method

.method public setOngoingProcessRequiresStatusBarVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mOngoingProcessRequiresStatusBarVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;)V

    return-void
.end method

.method public wrapAnimationControllerIfInStatusBar(Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    invoke-interface {p2, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    new-instance p1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
