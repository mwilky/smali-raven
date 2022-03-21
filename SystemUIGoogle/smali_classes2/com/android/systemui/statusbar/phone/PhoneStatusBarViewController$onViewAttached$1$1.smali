.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarViewController.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->onViewAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

.field final synthetic $viewsToAnimate:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;[Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->$animationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->$viewsToAnimate:[Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->$animationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->$viewsToAnimate:[Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->onViewsReady([Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getMView$p(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0
.end method
