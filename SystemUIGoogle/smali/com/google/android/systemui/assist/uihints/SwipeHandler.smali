.class public final Lcom/google/android/systemui/assist/uihints/SwipeHandler;
.super Ljava/lang/Object;
.source "SwipeHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$SwipeListener;


# instance fields
.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static injectMotionEvent(IIJFFF)V
    .locals 19

    move/from16 v0, p0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v17, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move/from16 v17, v3

    :goto_1
    const/16 v18, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-wide/from16 v5, p2

    move-wide/from16 v7, p2

    move/from16 v9, p1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public final onSwipe(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p1

    const-string/jumbo v1, "start_x"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const-string/jumbo v1, "start_y"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v12

    const-string v1, "end_x"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v11

    const-string v1, "end_y"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v13

    const-string v1, "duration_ms"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v3, v1, 0x3c

    div-int/2addr v3, v2

    const-string v2, "num_motion_events"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "SwipeHandler"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    const/16 v3, 0x258

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    if-ltz v1, :cond_2

    const/16 v3, 0x2710

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v3, 0x1002

    move-wide v5, v14

    move v7, v10

    move v8, v12

    invoke-static/range {v3 .. v9}, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->injectMotionEvent(IIJFFF)V

    int-to-long v2, v1

    add-long v5, v14, v2

    div-int v0, v1, v0

    new-instance v2, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;

    move-object v3, v2

    move-object/from16 v4, p0

    move-wide v7, v14

    move v9, v1

    move v14, v0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;-><init>(Lcom/google/android/systemui/assist/uihints/SwipeHandler;JJIFFFFI)V

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->mUiHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "Invalid swipe duration requested"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v0, "Invalid number of motion events requested"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
