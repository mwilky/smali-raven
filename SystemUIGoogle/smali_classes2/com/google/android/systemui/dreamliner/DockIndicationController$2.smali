.class Lcom/google/android/systemui/dreamliner/DockIndicationController$2;
.super Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;
.source "DockIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/dreamliner/DockIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$400(Lcom/google/android/systemui/dreamliner/DockIndicationController;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$500(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$600(Lcom/google/android/systemui/dreamliner/DockIndicationController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$2;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
