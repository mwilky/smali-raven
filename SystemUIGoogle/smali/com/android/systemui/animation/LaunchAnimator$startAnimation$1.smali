.class public final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field final synthetic $isExpandingFullyAbove:Z

.field final synthetic $launchContainerOverlay:Landroid/view/ViewGroupOverlay;

.field final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iput-boolean p2, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    iput-object p3, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iput-object p4, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-boolean v0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-boolean p2, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
