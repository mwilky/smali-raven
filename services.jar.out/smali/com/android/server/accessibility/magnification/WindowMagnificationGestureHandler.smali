.class public Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "WindowMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;,
        Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z

.field private static final DEBUG_STATE_TRANSITIONS:Z

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field final mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

.field final mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

.field private mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

.field final mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

.field mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object v0, p0

    move/from16 v1, p7

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowMagnificationGestureHandler() , displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    iput-object v7, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    move-object v9, p2

    iput-object v9, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    new-instance v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate$EventDispatcher;)V

    iput-object v0, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-direct {v1, p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;)V

    iput-object v1, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    new-instance v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    iget-boolean v0, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-direct {v10, p0, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;Z)V

    iput-object v10, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    new-instance v11, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    new-instance v12, Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    new-instance v5, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;-><init>(Landroid/content/Context;FFZLcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;)V

    invoke-direct {v11, p0, v12}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/PanningScalingHandler;)V

    iput-object v11, v6, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-direct {p0, v10}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTap(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    return-object v0
.end method

.method private disableWindowMagnifier()V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string v1, "disableWindowMagnifier()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)V

    return-void
.end method

.method private enableWindowMagnifier(FF)V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableWindowMagnifier :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getPersistedScale()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->enableWindowMagnification(IFFF)V

    return-void
.end method

.method private getScreenSize(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "onTripleTap()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->getMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;->onTripleTapped(II)V

    return-void
.end method

.method private toggleMagnification(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->disableWindowMagnifier()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->enableWindowMagnifier(FF)V

    :goto_0
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-static {v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onExit()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onEnter()V

    :cond_2
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->clearEvents(I)V

    return-void
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleShortcutTriggered()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mTempPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->getScreenSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    return-void
.end method

.method public synthetic lambda$new$0$WindowMagnificationGestureHandler(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(); delayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->resetToDetectState()V

    return-void
.end method

.method onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->access$100(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;)Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method resetToDetectState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowMagnificationGestureHandler{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowMagnificationMgr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
