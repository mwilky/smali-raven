.class Lcom/android/server/display/RampAnimator;
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
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mTargetValue:F


# direct methods
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

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private cancelAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(FF)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6

    cmpg-float v4, p2, v1

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v4, p1, v1

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v1, v4

    if-lez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_3

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_3

    :cond_2
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    :cond_3
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    move v1, v3

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_5
    return v1

    :cond_6
    :goto_0
    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_a
    return v2
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
