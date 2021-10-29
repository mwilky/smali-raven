.class public Lcom/android/server/input/InputShellCommand;
.super Landroid/os/ShellCommand;
.source "InputShellCommand.java"


# static fields
.field private static final DEFAULT_BUTTON_STATE:I = 0x0

.field private static final DEFAULT_DEVICE_ID:I = 0x0

.field private static final DEFAULT_EDGE_FLAGS:I = 0x0

.field private static final DEFAULT_FLAGS:I = 0x0

.field private static final DEFAULT_META_STATE:I = 0x0

.field private static final DEFAULT_PRECISION_X:F = 1.0f

.field private static final DEFAULT_PRECISION_Y:F = 1.0f

.field private static final DEFAULT_PRESSURE:F = 1.0f

.field private static final DEFAULT_SIZE:F = 1.0f

.field private static final INVALID_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for command: "

.field private static final INVALID_DISPLAY_ARGUMENTS:Ljava/lang/String; = "Error: Invalid arguments for display ID."

.field private static final NO_PRESSURE:F

.field private static final SOURCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/input/InputShellCommand$1;

    invoke-direct {v0}, Lcom/android/server/input/InputShellCommand$1;-><init>()V

    sput-object v0, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private getAction()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    return v3

    :pswitch_1
    return v4

    :pswitch_2
    return v5

    :pswitch_3
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_3
        0x201ca2 -> :sswitch_2
        0x2433d1 -> :sswitch_1
        0x760d227a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDisplayId()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVALID_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "DEFAULT_DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error: Invalid arguments for display ID."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInputDeviceId(I)I
    .locals 7

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getSource(II)I
    .locals 1

    if-nez p1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private getToolType(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x2

    return v0

    :sswitch_1
    const/4 v0, 0x3

    return v0

    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x4002 -> :sswitch_0
        0xc002 -> :sswitch_0
        0x10004 -> :sswitch_1
        0x20004 -> :sswitch_1
        0x100008 -> :sswitch_2
        0x200000 -> :sswitch_2
    .end sparse-switch
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private injectKeyEventAsync(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private injectMotionEvent(IIJJFFFI)V
    .locals 21

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/view/MotionEvent$PointerProperties;

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v9, v2

    aget-object v3, v9, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v3, v9, v2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getToolType(I)I

    move-result v4

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v8, v2

    aget-object v3, v8, v2

    move/from16 v6, p7

    iput v6, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v3, v8, v2

    move/from16 v4, p8

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v3, v8, v2

    move/from16 v5, p9

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v3, v8, v2

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v6, p7

    move/from16 v4, p8

    move/from16 v5, p9

    const/4 v1, -0x1

    move/from16 v2, p10

    if-ne v2, v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/input/InputShellCommand;->getInputDeviceId(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move/from16 v6, p2

    move-object/from16 v19, v8

    move-object v8, v9

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move/from16 v16, p1

    move/from16 v17, v1

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private lerp(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private runDragAndDrop(II)V
    .locals 1

    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method private runKeyCombination(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown keycode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyCombination(ILjava/util/ArrayList;I)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "keycombination requires at least 2 keycodes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private runKeyEvent(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--longpress"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "--doubletap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyDoubleTap(III)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    goto :goto_0
.end method

.method private runMotionEvent(II)V
    .locals 9

    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move v7, v1

    move v8, v2

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputShellCommand;->sendMotionEvent(IIFFI)V

    return-void
.end method

.method private runPress(II)V
    .locals 1

    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method private runRoll(II)V
    .locals 2

    const v0, 0x10004

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendMove(IFFI)V

    return-void
.end method

.method private runSwipe(II)V
    .locals 1

    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/InputShellCommand;->sendSwipe(IIZ)V

    return-void
.end method

.method private runTap(II)V
    .locals 2

    const/16 v0, 0x1002

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/input/InputShellCommand;->sendTap(IFFI)V

    return-void
.end method

.method private runText(II)V
    .locals 1

    const/16 v0, 0x101

    invoke-direct {p0, p1, v0}, Lcom/android/server/input/InputShellCommand;->getSource(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputShellCommand;->sendText(ILjava/lang/String;I)V

    return-void
.end method

.method private sendKeyCombination(ILjava/util/ArrayList;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v13, v14, [Landroid/view/KeyEvent;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_0

    new-instance v17, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v2, v17

    move-wide v3, v15

    move-wide v5, v15

    move/from16 v12, v18

    move-object/from16 v20, v13

    move/from16 v13, v19

    move/from16 v18, v14

    move/from16 v14, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    move-object/from16 v4, v20

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    move-object v13, v4

    move/from16 v14, v18

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    move-object v4, v13

    move/from16 v18, v14

    array-length v0, v4

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_1

    aget-object v6, v4, v5

    invoke-direct {v1, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    array-length v0, v4

    :goto_3
    if-ge v2, v0, :cond_2

    aget-object v5, v4, v2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEventAsync(Landroid/view/KeyEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

.method private sendKeyDoubleTap(III)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/input/InputShellCommand;->sendKeyEvent(IIZI)V

    return-void
.end method

.method private sendKeyEvent(IIZI)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p2

    move/from16 v13, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->setDisplayId(I)V

    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    add-long/2addr v4, v14

    const/16 v6, 0x80

    invoke-static {v1, v4, v5, v3, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    invoke-static {v1, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private sendMotionEvent(IIFFI)V
    .locals 15

    move/from16 v11, p2

    const/4 v0, 0x0

    if-eqz v11, :cond_1

    const/4 v1, 0x2

    if-ne v11, v1, :cond_0

    goto :goto_0

    :cond_0
    move v12, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v12, v0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v13

    move-wide v5, v13

    move/from16 v7, p3

    move/from16 v8, p4

    move v9, v12

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method private sendMove(IFFI)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v2, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method private sendSwipe(IIZ)V
    .locals 28

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/input/InputShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    const/16 v0, 0x12c

    move v10, v0

    goto :goto_1

    :cond_1
    move v10, v0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v17

    move v8, v13

    move v9, v14

    move/from16 v19, v10

    move v10, v0

    move/from16 v20, v14

    move v14, v11

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move/from16 v11, v19

    int-to-long v2, v11

    add-long v21, v17, v2

    move-wide/from16 v23, v0

    :goto_3
    cmp-long v0, v23, v21

    if-gez v0, :cond_3

    sub-long v9, v23, v17

    long-to-float v0, v9

    int-to-float v1, v11

    div-float/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {v12, v13, v15, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v8

    move/from16 v6, v20

    invoke-direct {v12, v6, v14, v0}, Lcom/android/server/input/InputShellCommand;->lerp(FFF)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move/from16 v25, v6

    move-wide/from16 v6, v23

    move-wide/from16 v26, v9

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v19, v11

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    move/from16 v11, v19

    move/from16 v20, v25

    goto :goto_3

    :cond_3
    move/from16 v19, v11

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, v17

    move-wide/from16 v6, v23

    move v8, v15

    move v9, v14

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method private sendTap(IFFI)V
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-wide v3, v11

    move-wide v5, v11

    move v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/input/InputShellCommand;->injectMotionEvent(IIJJFFFI)V

    return-void
.end method

.method private sendText(ILjava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_4

    aget-object v6, v4, v5

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_3

    invoke-virtual {v6, p1}, Landroid/view/KeyEvent;->setSource(I)V

    :cond_3
    invoke-virtual {v6, p3}, Landroid/view/KeyEvent;->setDisplayId(I)V

    invoke-direct {p0, v6}, Lcom/android/server/input/InputShellCommand;->injectKeyEvent(Landroid/view/KeyEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    move-object v0, p1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, -0x1

    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/input/InputShellCommand;->getDisplayId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runText(II)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "keyevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyEvent(II)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "tap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runTap(II)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "swipe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runSwipe(II)V

    goto :goto_0

    :cond_5
    const-string v3, "draganddrop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runDragAndDrop(II)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "press"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runPress(II)V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "roll"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runRoll(II)V

    goto :goto_0

    :cond_8
    const-string/jumbo v3, "motionevent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runMotionEvent(II)V

    goto :goto_0

    :cond_9
    const-string/jumbo v3, "keycombination"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/InputShellCommand;->runKeyCombination(II)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputShellCommand;->handleDefaultCommands(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Invalid arguments for command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final onHelp()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/input/InputShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    const-string v1, "Usage: input [<source>] [-d DISPLAY_ID] <command> [<arg>...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "The sources are: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/input/InputShellCommand;->SOURCES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "-d: specify the display ID.\n      (Default: %d for key event, %d for motion event if not specified.)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "The commands and default sources are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      text <string> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      keyevent [--longpress|--doubletap] <key code number or name> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      tap <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      swipe <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      draganddrop <x1> <y1> <x2> <y2> [duration(ms)] (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      press (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      roll <dx> <dy> (Default: trackball)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      motionevent <DOWN|UP|MOVE|CANCEL> <x> <y> (Default: touchscreen)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "      keycombination <key code 1> <key code 2> ... (Default: keyboard)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method
