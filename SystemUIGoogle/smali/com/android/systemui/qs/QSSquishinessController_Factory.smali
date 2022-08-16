.class public final Lcom/android/systemui/qs/QSSquishinessController_Factory;
.super Ljava/lang/Object;
.source "QSSquishinessController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final qsAnimatorProvider:Ljavax/inject/Provider;

.field public final qsPanelControllerProvider:Ljavax/inject/Provider;

.field public final quickQSPanelControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsAnimatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowManager;

    new-instance v2, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;-><init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/view/IWindowManager;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanelController;

    new-instance v2, Lcom/android/systemui/qs/QSSquishinessController;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/qs/QSSquishinessController;-><init>(Lcom/android/systemui/qs/QSAnimator;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->qsPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/concurrency/ThreadFactory;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSquishinessController_Factory;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/util/sensors/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;Lcom/android/systemui/util/concurrency/ThreadFactory;Lcom/android/systemui/shared/plugins/PluginManager;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
