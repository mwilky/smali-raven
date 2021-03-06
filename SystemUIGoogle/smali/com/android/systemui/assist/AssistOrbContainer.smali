.class public Lcom/android/systemui/assist/AssistOrbContainer;
.super Landroid/widget/FrameLayout;
.source "AssistOrbContainer.java"


# instance fields
.field private mAnimatingOut:Z

.field private mNavbarScrim:Landroid/view/View;

.field private mOrb:Lcom/android/systemui/assist/AssistOrbView;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->reset()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startEnterAnimation(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/assist/AssistOrbContainer$2;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startExitAnimation(Ljava/lang/Runnable;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->startExitAnimation(J)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public getOrb()Lcom/android/systemui/assist/AssistOrbView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->assist_orb_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->assist_orb_navbar_scrim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->assist_orb:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistOrbView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-void
.end method

.method public show(ZZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/assist/AssistOrbContainer;->startEnterAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->reset()V

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lcom/android/systemui/assist/AssistOrbContainer$1;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/assist/AssistOrbContainer$1;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistOrbContainer;->startExitAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method
