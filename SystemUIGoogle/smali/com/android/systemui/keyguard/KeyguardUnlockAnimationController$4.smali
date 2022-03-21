.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardUnlockAnimationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$4;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$4;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->access$getKeyguardViewMediator$p(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onKeyguardExitRemoteAnimationFinished(Z)V

    return-void
.end method
