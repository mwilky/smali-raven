.class Lcom/android/server/accessibility/magnification/SimpleSwipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "SimpleSwipe.java"


# instance fields
.field private final mDetectionDurationMillis:I

.field private mLastDown:Landroid/view/MotionEvent;

.field private final mSwipeMinDistance:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->getMagnificationMultiTapTimeout(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    return-void
.end method

.method private gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

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

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mLastDown:Landroid/view/MotionEvent;

    iget v0, p0, Lcom/android/server/accessibility/magnification/SimpleSwipe;->mDetectionDurationMillis:I

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->gestureMatched(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/SimpleSwipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    return-void
.end method
