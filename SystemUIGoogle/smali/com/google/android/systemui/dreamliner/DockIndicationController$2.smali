.class public final Lcom/google/android/systemui/dreamliner/DockIndicationController$2;
.super Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;
.source "DockIndicationController.java"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget v0, p1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mShowPromoTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromoInner()V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
