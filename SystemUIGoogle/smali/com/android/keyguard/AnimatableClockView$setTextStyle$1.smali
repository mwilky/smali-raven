.class public final Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;
.super Ljava/lang/Object;
.source "AnimatableClockView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $color:Ljava/lang/Integer;

.field public final synthetic $delay:J

.field public final synthetic $duration:J

.field public final synthetic $interpolator:Landroid/animation/TimeInterpolator;

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $textSize:F

.field public final synthetic $weight:I

.field public final synthetic this$0:Lcom/android/keyguard/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockView;ILjava/lang/Integer;JLandroid/view/animation/PathInterpolator;JLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->this$0:Lcom/android/keyguard/AnimatableClockView;

    iput p2, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$weight:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$textSize:F

    iput-object p3, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$color:Ljava/lang/Integer;

    iput-wide p4, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$duration:J

    iput-object p6, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$interpolator:Landroid/animation/TimeInterpolator;

    iput-wide p7, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$delay:J

    iput-object p9, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->this$0:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, v0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$weight:I

    iget v2, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$textSize:F

    iget-object v9, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$color:Ljava/lang/Integer;

    const/4 v11, 0x0

    iget-wide v4, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$duration:J

    iget-object v8, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$interpolator:Landroid/animation/TimeInterpolator;

    iget-wide v6, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$delay:J

    iget-object v10, p0, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-virtual/range {v1 .. v11}, Lcom/android/keyguard/TextAnimator;->setTextStyle$1(FIJJLandroid/animation/TimeInterpolator;Ljava/lang/Integer;Ljava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method
