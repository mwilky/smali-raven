.class public final Lcom/android/systemui/toast/ToastFactory_Factory;
.super Ljava/lang/Object;
.source "ToastFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final layoutInflaterProvider:Ljavax/inject/Provider;

.field public final pluginManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    iget-object v1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;-><init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v2, Lcom/android/systemui/toast/ToastFactory;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/toast/ToastFactory;-><init>(Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;

    iget-object v1, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->pluginManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;

    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Lcom/android/systemui/util/wrapper/RotationPolicyWrapper;Lcom/android/systemui/statusbar/policy/DeviceStateRotationLockSettingController;[Ljava/lang/String;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
