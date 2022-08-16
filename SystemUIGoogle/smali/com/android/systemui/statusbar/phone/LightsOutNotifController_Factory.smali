.class public final Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;
.super Ljava/lang/Object;
.source "LightsOutNotifController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final commandQueueProvider:Ljavax/inject/Provider;

.field public final lightsOutNotifViewProvider:Ljavax/inject/Provider;

.field public final notifDataStoreProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->lightsOutNotifViewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->notifDataStoreProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->lightsOutNotifViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->notifDataStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v3, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;-><init>(Landroid/view/View;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStore;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->lightsOutNotifViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->notifDataStoreProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    iget-object v3, v1, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "columbus_ap_sensor"

    invoke-static {v3, v5, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    const-string v1, "Columbus/Module"

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.context_hub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "Creating CHRE sensor"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "Creating AP sensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
