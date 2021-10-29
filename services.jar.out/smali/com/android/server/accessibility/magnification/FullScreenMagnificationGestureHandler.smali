.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;,
        Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z

.field private static final DEBUG_PANNING_SCALING:Z

.field private static final DEBUG_STATE_TRANSITIONS:Z

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

.field final mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

.field final mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

.field final mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field final mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

.field mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

.field private final mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_ALL:Z

    or-int/lit8 v0, v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_PANNING_SCALING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;I)V
    .locals 3

    invoke-direct {p0, p7, p4, p5, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>(IZZLcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;)V

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_ALL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreenMagnificationGestureHandler(detectTripleTap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", detectShortcutTrigger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput-object p6, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->register()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOn(FF)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_PANNING_SCALING:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOff()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    return-object v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_1

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_1

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->access$000(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->access$100(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    return-void
.end method

.method private zoomOff()V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v1, "zoomOff()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    return-void
.end method

.method private zoomOn(FF)V
    .locals 10

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoomOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getPersistedScale()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v5, v0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    return-void
.end method


# virtual methods
.method clearAndTransitionToStateDetecting()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;->clear()V

    return-void
.end method

.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->clearEvents(I)V

    return-void
.end method

.method public getMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleShortcutTriggered()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->showNotificationIfNeeded()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->toggleShortcutTriggered()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-boolean v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->DEBUG_STATE_TRANSITIONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(); delayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;->access$200(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;)Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPromptController:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    return-void
.end method

.method onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectTripleTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectShortcutTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
