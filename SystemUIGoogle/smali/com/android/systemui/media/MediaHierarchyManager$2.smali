.class public final Lcom/android/systemui/media/MediaHierarchyManager$2;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setDozeAnimationRunning(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setDozeAnimationRunning(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isLockScreenVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQsExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpanded(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->closeGuts()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setVisibleToUser(Z)V

    return-void
.end method

.method public onExpandedChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isHomeScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQsExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setVisibleToUser(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isLockScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQsExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$isVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setVisibleToUser(Z)V

    return-void
.end method

.method public onStatePreChange(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setStatusbarState$p(Lcom/android/systemui/media/MediaHierarchyManager;I)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, p2, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZZILjava/lang/Object;)V

    return-void
.end method
