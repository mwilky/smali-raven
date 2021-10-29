.class public final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$2;
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

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$2;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$2;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$setBrightnessAnimator$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
