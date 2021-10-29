.class public final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceAuthScreenBrightnessController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->setOverridingBrightness(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-static {p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$getWhiteOverlay$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$setBrightnessAnimator$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Landroid/animation/ValueAnimator;)V

    return-void

    :cond_0
    const-string/jumbo p0, "whiteOverlay"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
