.class public Lcom/android/server/accessibility/gestures/MultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiTap;
.source "MultiTapAndHold.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getGestureName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Taps and Hold"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Triple Tap and Hold"

    return-object v0

    :pswitch_1
    const-string v0, "Double Tap and Hold"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mCurrentTaps:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->mTargetTaps:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->completeAfterLongPressTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method protected onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTap;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
