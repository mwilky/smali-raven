.class public Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmChoreographer(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmLastFrameTimeNanos(Lcom/android/server/display/RampAnimator;J)V

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmRate(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimatedValue(Lcom/android/server/display/RampAnimator;F)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmAnimatedValue(Lcom/android/server/display/RampAnimator;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmCurrentValue(Lcom/android/server/display/RampAnimator;F)V

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$msetPropertyValue(Lcom/android/server/display/RampAnimator;F)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmTargetValue(Lcom/android/server/display/RampAnimator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmCurrentValue(Lcom/android/server/display/RampAnimator;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {p0}, Lcom/android/server/display/RampAnimator;->-$$Nest$mpostAnimationCallback(Lcom/android/server/display/RampAnimator;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/RampAnimator;->-$$Nest$fputmAnimating(Lcom/android/server/display/RampAnimator;Z)V

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {v0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-static {p0}, Lcom/android/server/display/RampAnimator;->-$$Nest$fgetmListener(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_4
    :goto_1
    return-void
.end method
