.class public final Lcom/android/systemui/media/MediaHierarchyManager$2;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eq p1, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-nez v1, :cond_3

    const/4 p1, 0x3

    invoke-static {p0, v0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    :cond_3
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-boolean v2, p1, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p1, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    invoke-static {p1, v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-boolean p1, p1, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpanded(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/systemui/media/MediaCarouselController;->closeGuts(Z)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method

.method public final onExpandedChanged(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-boolean p1, p1, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object v0, p1, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-boolean p1, p1, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget-object p1, p1, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/systemui/media/MediaCarouselScrollHandler;->visibleToUser:Z

    return-void
.end method

.method public final onStatePreChange(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$2;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iput p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 p1, 0x0

    const/4 p2, 0x3

    invoke-static {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    return-void
.end method
