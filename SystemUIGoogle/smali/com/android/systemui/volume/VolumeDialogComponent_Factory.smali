.class public final Lcom/android/systemui/volume/VolumeDialogComponent_Factory;
.super Ljava/lang/Object;
.source "VolumeDialogComponent_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final demoModeControllerProvider:Ljavax/inject/Provider;

.field public final extensionControllerProvider:Ljavax/inject/Provider;

.field public final keyguardViewMediatorProvider:Ljavax/inject/Provider;

.field public final pluginDependencyProvider:Ljavax/inject/Provider;

.field public final tunerServiceProvider:Ljavax/inject/Provider;

.field public final volumeDialogControllerProvider:Ljavax/inject/Provider;

.field public final volumeDialogProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p10, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->pluginDependencyProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->extensionControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogComponent_Factory;
    .locals 12

    new-instance v11, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;

    const/4 v10, 0x1

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v11
.end method

.method public static create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogComponent_Factory;
    .locals 12

    new-instance v11, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/demomode/DemoModeController;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->pluginDependencyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/plugins/PluginDependencyProvider;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->extensionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/ExtensionController;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/plugins/VolumeDialog;

    new-instance p0, Lcom/android/systemui/volume/VolumeDialogComponent;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/policy/ExtensionController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/VolumeDialog;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->demoModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/util/view/ViewUtil;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->pluginDependencyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->extensionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent_Factory;->volumeDialogProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    new-instance p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/content/Context;Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;Landroid/os/PowerManager;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
