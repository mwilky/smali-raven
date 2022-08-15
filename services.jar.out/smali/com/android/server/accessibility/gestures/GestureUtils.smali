.class public final Lcom/android/server/accessibility/gestures/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field public static CM_PER_INCH:F = 2.54f

.field public static MM_PER_CM:I = 0xa


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p0, v1, p1}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static distanceClosestPointerToPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)D
    .locals 6

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    float-to-double p0, v0

    return-wide p0
.end method

.method public static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/gestures/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide p0

    int-to-double p2, p3

    cmpl-double p0, p0, p2

    if-ltz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .locals 5

    sub-float/2addr p4, p0

    sub-float/2addr p5, p1

    const/4 p0, 0x0

    cmpl-float p1, p4, p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    cmpl-float p1, p5, p0

    if-nez p1, :cond_0

    return v0

    :cond_0
    float-to-double v1, p4

    float-to-double v3, p5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, p1, p0

    if-lez v1, :cond_1

    div-float/2addr p4, p1

    :cond_1
    if-lez v1, :cond_2

    div-float/2addr p5, p1

    :cond_2
    sub-float/2addr p6, p2

    sub-float/2addr p7, p3

    cmpl-float p1, p6, p0

    if-nez p1, :cond_3

    cmpl-float p1, p7, p0

    if-nez p1, :cond_3

    return v0

    :cond_3
    float-to-double p1, p6

    float-to-double v1, p7

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_4

    div-float/2addr p6, p1

    :cond_4
    if-lez p0, :cond_5

    div-float/2addr p7, p1

    :cond_5
    mul-float/2addr p4, p6

    mul-float/2addr p5, p7

    add-float/2addr p4, p5

    cmpg-float p0, p4, p8

    if-gez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    return v0
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    int-to-long p0, p2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
