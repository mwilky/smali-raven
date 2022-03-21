.class public final Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuthRippleController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleController;->onKeyguardFadingAwayChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->$lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->$lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->getRevealEffect()Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getCircleReveal$p(Lcom/android/systemui/biometrics/AuthRippleController;)Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;->$lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    sget-object p1, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    :cond_0
    return-void
.end method
