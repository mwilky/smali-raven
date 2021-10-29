.class public abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "GestureMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;,
        Lcom/android/server/accessibility/gestures/GestureMatcher$State;
    }
.end annotation


# static fields
.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_GESTURE_CANCELED:I = 0x3

.field public static final STATE_GESTURE_COMPLETED:I = 0x2

.field public static final STATE_GESTURE_STARTED:I = 0x1


# instance fields
.field protected final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field private final mGestureId:I

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field private mState:I


# direct methods
.method protected constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/gestures/GestureMatcher;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/gestures/GestureMatcher;ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static getStateSymbolicName(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "STATE_GESTURE_CANCELED"

    return-object v0

    :pswitch_1
    const-string v0, "STATE_GESTURE_COMPLETED"

    return-object v0

    :pswitch_2
    const-string v0, "STATE_GESTURE_STARTED"

    return-object v0

    :pswitch_3
    const-string v0, "STATE_CLEAR"

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

.method private setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x3

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected cancelAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final cancelPendingTransitions()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelPendingTransitions()V

    return-void
.end method

.method protected final completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    const/4 v2, 0x2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final completeAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final completeAfterTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method protected final completeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getGestureId()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    return v0
.end method

.method protected abstract getGestureName()Ljava/lang/String;
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I
    .locals 3

    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    nop

    :goto_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    return v0

    :cond_1
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method protected onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method public final setListener(Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    return-void
.end method

.method protected final startGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
