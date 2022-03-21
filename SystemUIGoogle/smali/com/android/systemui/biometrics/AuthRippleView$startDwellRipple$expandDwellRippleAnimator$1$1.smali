.class final Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;
.super Ljava/lang/Object;
.source "AuthRippleView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleView;->startDwellRipple(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/AuthRippleView;->access$getDwellShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/DwellRippleShader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/charging/DwellRippleShader;->setProgress(F)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthRippleView;->access$getDwellShader$p(Lcom/android/systemui/biometrics/AuthRippleView;)Lcom/android/systemui/statusbar/charging/DwellRippleShader;

    move-result-object p1

    long-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/charging/DwellRippleShader;->setTime(F)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
