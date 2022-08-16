.class public final Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;
.super Ljava/lang/Object;
.source "LocalMediaManagerFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final localBluetoothManagerProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionModule;Ljavax/inject/Provider;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance p0, Lcom/google/android/systemui/lowlightclock/BurnInProtector;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/systemui/lowlightclock/BurnInProtector;-><init>(JI)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/wm/shell/pip/PipUiEventLogger;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/pip/PipUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    new-instance v1, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;-><init>(Landroid/content/pm/LauncherApps;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v1, Lcom/android/systemui/media/LocalMediaManagerFactory;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/media/LocalMediaManagerFactory;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->localBluetoothManagerProvider:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionModule;

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig;-><init>(Landroid/content/Context;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
