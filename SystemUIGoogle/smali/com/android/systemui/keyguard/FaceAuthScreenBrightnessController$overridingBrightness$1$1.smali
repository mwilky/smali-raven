.class final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$1;
.super Ljava/lang/Object;
.source "FaceAuthScreenBrightnessController.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->setOverridingBrightness(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-static {p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$getWhiteOverlay$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const-string/jumbo p0, "whiteOverlay"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
