.class public final Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnlockedScreenOffAnimationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animateInKeyguard(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $after:Ljava/lang/Runnable;

.field final synthetic $keyguardView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$after:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$keyguardView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->access$setAodUiAnimationPlaying$p(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->access$getKeyguardViewMediatorLazy$p(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->access$getStatusBar$p(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateIsKeyguard()Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$after:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->access$setDecidedToAnimateGoingToSleep$p(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animateInKeyguard$1;->$keyguardView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    const-string p0, "statusBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
