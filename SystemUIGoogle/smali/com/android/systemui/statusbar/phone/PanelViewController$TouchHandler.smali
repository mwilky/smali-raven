.class public Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "PanelViewController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canCollapsePanelOnTouch()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_5

    const/4 v0, 0x3

    if-eq v4, v0, :cond_a

    const/4 v0, 0x5

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v2

    if-ne v2, v0, :cond_e

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v5, v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    goto/16 :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v5, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v0, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v5

    goto :goto_0

    :cond_6
    move v6, v1

    :goto_0
    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v6, :cond_e

    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v7, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float v7, p1

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_9

    if-nez v6, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_8
    cmpl-float p1, v3, p1

    if-lez p1, :cond_e

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p1

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p0, v2, v0, v5, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    return v5

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/view/VelocityTracker;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v5

    goto :goto_1

    :cond_c
    move v4, v1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v4, :cond_d

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    return v5

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2102(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isInContentBounds(FF)Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2202(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    :cond_e
    :goto_2
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$700(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_1e

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x2002

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    :cond_4
    return v2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    move p1, v0

    :cond_6
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureWaitForTouchSlop()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3002(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v5, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v0

    goto :goto_1

    :cond_8
    :goto_0
    move v5, v2

    :goto_1
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3102(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_15

    if-eq v4, v2, :cond_13

    const/4 v6, 0x2

    if-eq v4, v6, :cond_d

    if-eq v4, v1, :cond_13

    const/4 v1, 0x5

    if-eq v4, v1, :cond_c

    const/4 p1, 0x6

    if-eq v4, p1, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v1

    if-ne v1, p1, :cond_1c

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, p1, :cond_b

    move p1, v0

    goto :goto_2

    :cond_b
    move p1, v2

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/PanelViewController;I)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p1, v3, v1, v2, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    goto/16 :goto_7

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p0, p2, v3, p1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v1

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v6, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p2

    cmpl-float p2, v4, p2

    if-lez p2, :cond_10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_e

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3100(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_e
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v4, p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-nez v4, :cond_10

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {p2, v3, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    move v1, v5

    :cond_f
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    :cond_10
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3500(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result p2

    add-float/2addr p2, v1

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/PanelViewController;)F

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    neg-float v1, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3600(Lcom/android/systemui/statusbar/phone/PanelViewController;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, v3, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3800(Lcom/android/systemui/statusbar/phone/PanelViewController;FF)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p1, :cond_1c

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTrackingBlocked()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto/16 :goto_7

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1, p2, v3, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;FFZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_1c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_14

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/PanelViewController;I)V

    goto/16 :goto_7

    :cond_14
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$4000(Lcom/android/systemui/statusbar/phone/PanelViewController;I)V

    goto/16 :goto_7

    :cond_15
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget v4, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    invoke-virtual {v1, v3, p1, v0, v4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandMotion(FFZF)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1702(Lcom/android/systemui/statusbar/phone/PanelViewController;F)F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2502(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2602(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1302(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2702(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_3

    :cond_16
    move v1, v0

    :goto_3
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2402(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/PanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v1, :cond_17

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$500(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-nez p1, :cond_17

    move p1, v2

    goto :goto_4

    :cond_17
    move p1, v0

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_1b

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-nez p1, :cond_1a

    iget-boolean p1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_19

    goto :goto_5

    :cond_19
    move p1, v0

    goto :goto_6

    :cond_1a
    :goto_5
    move p1, v2

    :goto_6
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$1902(Lcom/android/systemui/statusbar/phone/PanelViewController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3200(Lcom/android/systemui/statusbar/phone/PanelViewController;Landroid/view/MotionEvent;)V

    :cond_1c
    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->access$3000(Lcom/android/systemui/statusbar/phone/PanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/phone/PanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz p0, :cond_1e

    :cond_1d
    move v0, v2

    :cond_1e
    :goto_8
    return v0
.end method
