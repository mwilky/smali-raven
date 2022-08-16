.class public final Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;
.super Ljava/lang/Object;
.source "QSFgsManagerFooter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final executorProvider:Ljavax/inject/Provider;

.field public final fgsManagerControllerProvider:Ljavax/inject/Provider;

.field public final mainExecutorProvider:Ljavax/inject/Provider;

.field public final rootViewProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->executorProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;-><init>(Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/UserTracker;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/ColorDisplayManager;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/settings/SecureSettings;

    new-instance v3, Lcom/android/systemui/qs/ReduceBrightColorsController;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/qs/ReduceBrightColorsController;-><init>(Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Landroid/hardware/display/ColorDisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-object v3

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FgsManagerController;

    new-instance v3, Lcom/android/systemui/qs/QSFgsManagerFooter;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/qs/QSFgsManagerFooter;-><init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/FgsManagerController;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/gates/ChargingState;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/UsbState;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/gates/SystemKeyPress;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/google/android/systemui/columbus/gates/Gate;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p0, v3, v0

    invoke-static {v3}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
