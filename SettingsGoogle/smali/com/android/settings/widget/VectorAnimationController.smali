.class Lcom/android/settings/widget/VectorAnimationController;
.super Ljava/lang/Object;
.source "VectorAnimationController.java"

# interfaces
.implements Lcom/android/settings/widget/VideoPreference$AnimationController;


# instance fields
.field private mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field private mAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private mPreviewDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$lhnV1XSQ-vwUmLR0nMi2JfmaKF8(Lcom/android/settings/widget/VectorAnimationController;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/VectorAnimationController;->lambda$attachView$0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    new-instance p1, Lcom/android/settings/widget/VectorAnimationController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/VectorAnimationController$1;-><init>(Lcom/android/settings/widget/VectorAnimationController;)V

    iput-object p1, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VectorAnimationController;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    return-object p0
.end method

.method private synthetic lambda$attachView$0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VectorAnimationController;->updateViewStates(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateViewStates(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    iget-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    iget-object p1, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p1, p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mPreviewDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-direct {p0, p2, p3}, Lcom/android/settings/widget/VectorAnimationController;->updateViewStates(Landroid/view/View;Landroid/view/View;)V

    new-instance p1, Lcom/android/settings/widget/VectorAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/VectorAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/VectorAnimationController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDuration()I
    .locals 0

    const/16 p0, 0x1388

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    return-void
.end method
