.class Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->-$$Nest$fputmPulseRadius(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;F)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
