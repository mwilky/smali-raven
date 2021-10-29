.class Lcom/google/android/systemui/dreamliner/DockIndicationController$1;
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

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController$PhotoAnimationListener;-><init>(Lcom/google/android/systemui/dreamliner/DockIndicationController$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object v0, p1, Lcom/google/android/systemui/dreamliner/DockIndicationController;->mDockPromo:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$100(Lcom/google/android/systemui/dreamliner/DockIndicationController;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockIndicationController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-static {}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$200()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->access$300(Lcom/google/android/systemui/dreamliner/DockIndicationController;J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
