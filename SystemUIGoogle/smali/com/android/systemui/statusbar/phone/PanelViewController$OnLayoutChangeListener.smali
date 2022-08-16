.class public Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLayoutChangeListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHasLayoutedSinceDown:Z

    iget-boolean p3, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    iget-object p3, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mView:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mFlingCollapseRunnable:Lcom/android/systemui/statusbar/phone/PanelViewController$5;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p3, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingVelocity:F

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p4, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {p4}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getGestureRecorder()V

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FFZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mUpdateFlingOnLayout:Z

    :cond_0
    return-void
.end method
