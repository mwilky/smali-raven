.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,539:1\n1#2:540\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

.field final synthetic $delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field final synthetic $navigationBar:Landroid/view/RemoteAnimationTarget;

.field final synthetic $window:Landroid/view/RemoteAnimationTarget;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iput-object p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    iput-object p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->setBlursDisabledForAppLaunch(Z)V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$invoke(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v1, v0, p1, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->setBlursDisabledForAppLaunch(Z)V

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    return-void
.end method
