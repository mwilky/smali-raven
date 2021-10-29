.class Lcom/android/server/accessibility/gestures/Swipe;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "Swipe.java"


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field public static final DOWN:I = 0x3

.field public static final GESTURE_CONFIRM_CM:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final MAX_TIME_TO_CONTINUE_SWIPE_MS:J = 0x15eL

.field public static final MAX_TIME_TO_START_SWIPE_MS:J = 0x96L

.field private static final MIN_CM_BETWEEN_SAMPLES:F = 0.25f

.field public static final RIGHT:I = 0x1

.field public static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private mDirections:[I

.field private final mGestureDetectionThresholdPixels:F

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/android/server/accessibility/gestures/GestureUtils;->MM_PER_CM:I

    int-to-float v1, v1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const v2, 0x40228f5c    # 2.54f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v4, v1, v2

    iput v4, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->clear()V

    return-void
.end method

.method public static directionToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown Direction"

    return-object v0

    :pswitch_0
    const-string v0, "down"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "up"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "right"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "left"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    iget-object v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Landroid/graphics/PointF;

    if-lez v5, :cond_1

    int-to-float v9, v5

    div-float v9, v3, v9

    int-to-float v10, v5

    div-float v10, v4, v10

    new-instance v11, Landroid/graphics/PointF;

    mul-float v12, v6, v9

    iget v13, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    mul-float v13, v6, v10

    iget v14, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    iget v13, v7, Landroid/graphics/PointF;->y:F

    iget v14, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    mul-float v14, v12, v12

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    div-float/2addr v12, v14

    div-float/2addr v13, v14

    mul-float v15, v9, v12

    mul-float v16, v10, v13

    add-float v15, v15, v16

    const/16 v16, 0x0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    iget v10, v7, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v6, v11

    add-int/lit8 v5, v5, 0x1

    div-float v11, v9, v6

    add-float/2addr v3, v11

    div-float v11, v10, v6

    add-float/2addr v4, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct {v0, v8, v9, v10, v1}, Lcom/android/server/accessibility/gestures/Swipe;->recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)V

    return-void
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;Landroid/view/MotionEvent;ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v7, v7, v1

    if-eq v6, v7, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private static toDirection(FF)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method protected getGestureName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/android/server/accessibility/gestures/Swipe;->directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    iget v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iget v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    :cond_0
    return-void
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget v5, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    iget v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    sub-long v9, v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getState()I

    move-result v11

    if-nez v11, :cond_2

    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mTouchSlop:I

    int-to-double v11, v11

    cmpg-double v11, v7, v11

    if-gez v11, :cond_0

    return-void

    :cond_0
    iget-object v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    sub-float v11, v1, v11

    iget v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    sub-float v12, v2, v12

    invoke-static {v11, v12}, Lcom/android/server/accessibility/gestures/Swipe;->toDirection(FF)I

    move-result v11

    iget-object v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mDirections:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-eq v11, v12, :cond_1

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1
    iget-object v12, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v13, Landroid/graphics/PointF;

    iget v14, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iget v15, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    float-to-double v11, v11

    cmpl-double v11, v7, v11

    if-lez v11, :cond_3

    iput v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    iput v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    iput-wide v3, v0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseTime:J

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/Swipe;->startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getState()I

    move-result v11

    if-nez v11, :cond_4

    const-wide/16 v11, 0x96

    cmp-long v11, v9, v11

    if-lez v11, :cond_5

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/gestures/Swipe;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const-wide/16 v11, 0x15e

    cmp-long v11, v9, v11

    if-lez v11, :cond_5

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_5
    :goto_0
    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v11, v5, v11

    if-gez v11, :cond_6

    iget v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_7

    :cond_6
    iput v1, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    iput v2, v0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/accessibility/gestures/Swipe;->mPreviousGestureY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    cmpl-float v4, v2, v4

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/Swipe;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/Swipe;->recognizeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/Swipe;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mBaseY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGestureDetectionThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mGestureDetectionThresholdPixels:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinPixelsBetweenSamplesY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/Swipe;->mMinPixelsBetweenSamplesY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
