.class public final Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;
.super Ljava/lang/Object;
.source "AuthRippleView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object v2, v2, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/statusbar/charging/DwellRippleShader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/charging/DwellRippleShader;->setProgress(F)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/statusbar/charging/DwellRippleShader;

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/DwellRippleShader;->setTime(F)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
