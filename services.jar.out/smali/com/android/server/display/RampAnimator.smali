.class public Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$DualRampAnimator;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mAnimatedValue:F

.field public mAnimating:Z

.field public final mAnimationCallback:Ljava/lang/Runnable;

.field public mAnimationDecreaseMaxTimeSecs:F

.field public mAnimationIncreaseMaxTimeSecs:F

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCurrentValue:F

.field public mFirstTime:Z

.field public mLastFrameTimeNanos:J

.field public mListener:Lcom/android/server/display/RampAnimator$Listener;

.field public final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mRate:F

.field public mTargetValue:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F
    .locals 0

    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public animateTo(FF)Z
    .locals 6

    invoke-static {p1}, Lcom/android/server/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_8

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmpl-float v5, v4, v3

    if-lez v5, :cond_1

    sub-float v5, p1, v0

    div-float/2addr v5, p2

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    sub-float p2, p1, v0

    :goto_0
    div-float/2addr p2, v4

    goto :goto_1

    :cond_1
    cmpg-float v4, p1, v0

    if-gez v4, :cond_2

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    sub-float v3, v0, p1

    div-float/2addr v3, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    sub-float p2, v0, p1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v3, :cond_4

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v4, p2, v4

    if-gtz v4, :cond_4

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v0, v4

    if-lez v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_5

    cmpg-float v4, v0, p1

    if-gtz v4, :cond_5

    :cond_4
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    :cond_5
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_6

    move v2, v1

    :cond_6
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    if-nez v3, :cond_7

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_7
    return v2

    :cond_8
    :goto_2
    if-nez v0, :cond_a

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    return v2

    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    invoke-virtual {p0, p1}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    iget-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p1, :cond_b

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-virtual {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_b
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_c
    return v1
.end method

.method public final cancelAnimationCallback()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p0
.end method

.method public final postAnimationCallback()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationTimeLimits(JJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    if-lez v2, :cond_0

    long-to-float p1, p1

    div-float/2addr p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    long-to-float p1, p3

    div-float v4, p1, v3

    :cond_1
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method

.method public final setPropertyValue(F)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method
