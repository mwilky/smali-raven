.class public final Lcom/android/systemui/media/MediaHierarchyManager$4;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$4;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V

    return-void
.end method
