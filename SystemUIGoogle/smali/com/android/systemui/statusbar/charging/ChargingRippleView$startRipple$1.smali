.class public final Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;
.super Ljava/lang/Object;
.source "ChargingRippleView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/charging/ChargingRippleView;->startRipple(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/charging/ChargingRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/charging/RippleShader;->setProgress(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, p1

    const/16 p1, 0x4b

    int-to-float p1, p1

    iget v4, v2, Lcom/android/systemui/statusbar/charging/RippleShader;->progress:F

    mul-float/2addr v4, p1

    mul-float/2addr v4, v3

    const-string v5, "in_distort_radial"

    invoke-virtual {v2, v5, v4}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    mul-float/2addr p1, v3

    const-string v3, "in_distort_xy"

    invoke-virtual {v2, v3, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->rippleShader:Lcom/android/systemui/statusbar/charging/RippleShader;

    long-to-float v0, v0

    const-string v1, "in_time"

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/charging/ChargingRippleView$startRipple$1;->this$0:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
