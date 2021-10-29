.class final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "WindowMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;
.implements Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# instance fields
.field private final mDetectTripleTap:Z

.field private final mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

.field final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/content/Context;Z)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mDetectTripleTap:Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p3, :cond_1

    const/16 v4, 0x69

    goto :goto_1

    :cond_1
    const/16 v4, 0x67

    :goto_1
    const/4 v5, 0x0

    invoke-direct {v0, p2, v3, v4, v5}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    new-instance v3, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    if-eqz p3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz p3, :cond_3

    const/16 v6, 0x6a

    goto :goto_3

    :cond_3
    const/16 v6, 0x68

    :goto_3
    invoke-direct {v3, p2, v4, v6, v5}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    new-instance v4, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/server/accessibility/gestures/GestureMatcher;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/accessibility/magnification/SimpleSwipe;

    invoke-direct {v7, p2}, Lcom/android/server/accessibility/magnification/SimpleSwipe;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v6

    aput-object v0, v5, v2

    const/4 v2, 0x2

    aput-object v3, v5, v2

    new-instance v2, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;

    invoke-direct {v2, p2}, Lcom/android/server/accessibility/magnification/TwoFingersDownOrSwipe;-><init>(Landroid/content/Context;)V

    aput-object v2, v5, v1

    invoke-direct {v4, p0, v5}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;-><init>(Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver$Callback;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    return-void
.end method

.method private changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->clear()V

    return-void
.end method

.method public onExit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->clear()V

    return-void
.end method

.method public onGestureCancelled(JLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureCancelled : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    invoke-direct {p0, p4}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onGestureCompleted(IJLjava/util/List;Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/magnification/MotionEventInfo;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : gesture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureDetected : delayedEventQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->pointersInWindow(ILandroid/view/MotionEvent;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x69

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(Ljava/util/List;J)V

    invoke-direct {p0, p5}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->changeToDelegateStateIfNeed(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public shouldStopDetection(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->access$000(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mDetectTripleTap:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{, mGestureTimeoutObserver ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->mGesturesObserver:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
