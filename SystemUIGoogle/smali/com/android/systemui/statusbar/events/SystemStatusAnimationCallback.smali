.class public interface abstract Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"


# virtual methods
.method public onHidePersistentDot()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSystemChromeAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onSystemChromeAnimationStart()V
    .locals 0

    return-void
.end method

.method public onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSystemStatusAnimationTransitionToPersistentDot(Ljava/lang/String;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
