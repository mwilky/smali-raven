.class Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private mDisplayCutoutTouchableRegionSize:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private mSwipeStartThreshold:I

.field private mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field screenHeight:I

.field screenWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    const-string v0, "callbacks"

    invoke-static {v0, p3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private detectSwipe(IJFF)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long v2, p2, v2

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v5, v4

    cmpg-float v5, v1, v5

    const-wide/16 v6, 0x1f4

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpl-float v5, p5, v5

    if-lez v5, :cond_0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    cmpg-float v5, p5, v5

    if-gez v5, :cond_1

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    const/4 v4, 0x2

    return v4

    :cond_1
    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    cmp-long v5, v2, v6

    if-gez v5, :cond_2

    const/4 v4, 0x3

    return v4

    :cond_2
    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_3

    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    const/4 v4, 0x4

    return v4

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    move-object/from16 v11, p0

    invoke-direct {v11, v4}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v12

    const/4 v5, -0x1

    if-eq v12, v5, :cond_2

    const/4 v5, 0x0

    move v13, v5

    :goto_1
    if-ge v13, v1, :cond_1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v14

    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v16

    invoke-virtual {v0, v3, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v17

    move-object/from16 v5, p0

    move v6, v12

    move-wide v7, v14

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    if-eqz v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object/from16 v5, p0

    move v6, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    const/4 v3, 0x0

    return v3
.end method

.method private findIndex(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method protected currentGestureStartedInRegion(Landroid/graphics/Region;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v2, v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$systemReady$0$SystemGesturesPointerEventListener()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create GestureDetector, display removed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemGestures"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;

    invoke-direct {v4, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    iget-object v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method onConfigurationChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v2, v3, :cond_0

    const v2, 0x1050276

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x1050277

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x105012c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    iget v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    :cond_1
    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    return-void
.end method

.method onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .locals 1

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    :cond_8
    :goto_0
    goto :goto_1

    :pswitch_4
    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto :goto_1

    :pswitch_5
    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    nop

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
