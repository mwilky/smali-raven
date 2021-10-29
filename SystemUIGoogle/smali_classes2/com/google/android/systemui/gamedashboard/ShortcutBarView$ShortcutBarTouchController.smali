.class abstract Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ShortcutBarTouchController"
.end annotation


# instance fields
.field private mCancelled:Z

.field private mHasMoved:Z

.field private final mTouchDown:Landroid/graphics/PointF;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPositionOnTouchDown:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method protected abstract onMove(FF)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/16 v3, 0x3e8

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    if-eqz p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->onUp(FF)V

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    if-eqz p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->onMove(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result v0

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_8

    iput-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    goto :goto_1

    :cond_4
    iget-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    if-eqz p2, :cond_5

    return v2

    :cond_5
    iget-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->onUp(FF)V

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mViewPositionOnTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mHasMoved:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->mCancelled:Z

    :cond_8
    :goto_1
    return v2
.end method

.method protected abstract onUp(FF)V
.end method
