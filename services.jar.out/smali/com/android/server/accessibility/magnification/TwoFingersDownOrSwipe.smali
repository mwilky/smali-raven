.class final Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "TwoFingersDownOrSwipe.java"


# instance fields
.field private final mDetectionDurationMillis:I

.field private final mDoubleTapTimeout:I

.field private mFirstPointerDown:Landroid/view/MotionEvent;

.field private mSecondPointerDown:Landroid/view/MotionEvent;

.field private final mSwipeMinDistance:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDetectionDurationMillis:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDoubleTapTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSwipeMinDistance:I

    return-void
.end method

.method private static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .locals 7

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    return-wide v3

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    float-to-double v3, v3

    return-wide v3
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    :cond_1
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method protected getGestureName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    iget v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDetectionDurationMillis:I

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mFirstPointerDown:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mSecondPointerDown:Landroid/view/MotionEvent;

    iget v0, p0, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->mDoubleTapTimeout:I

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
