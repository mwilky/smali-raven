.class public final Lcom/android/systemui/screenrecord/RecordingController_Factory;
.super Ljava/lang/Object;
.source "RecordingController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final userContextProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-class v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v4, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    sget-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-nez v3, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v3, v0, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    move-object p0, v2

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserContextProvider;

    new-instance v1, Lcom/android/systemui/screenrecord/RecordingController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserContextProvider;)V

    return-object v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/settings/SecureSettings;

    new-instance v1, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
