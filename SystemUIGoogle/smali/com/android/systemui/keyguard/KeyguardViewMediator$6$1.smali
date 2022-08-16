.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardViewMediator.java"


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

.field public final synthetic val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$6;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$6;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->mUnoccludeAnimator:Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
