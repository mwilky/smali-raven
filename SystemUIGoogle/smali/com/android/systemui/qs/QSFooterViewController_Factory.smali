.class public final Lcom/android/systemui/qs/QSFooterViewController_Factory;
.super Ljava/lang/Object;
.source "QSFooterViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final falsingManagerProvider:Ljavax/inject/Provider;

.field public final qsPanelControllerProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;

.field public final viewProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSFooterViewController_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/qs/QSFooterViewController_Factory;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QSFooterViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/QSFooterView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/qs/QSPanelController;

    new-instance p0, Lcom/android/systemui/qs/QSFooterViewController;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/QSFooterViewController;-><init>(Lcom/android/systemui/qs/QSFooterView;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/QSPanelController;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p0, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/unfold/UnfoldBackgroundController;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/unfold/UnfoldBackgroundController;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Lcom/android/wm/shell/common/DisplayInsetsController;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
