.class public final Lcom/android/systemui/screenshot/ImageExporter_Factory;
.super Ljava/lang/Object;
.source "ImageExporter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final resolverProvider:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardClockSwitch(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 1

    const v0, 0x7f0b0340

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooterViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    const/16 v0, 0x1f4

    const/4 v1, 0x0

    const-string v2, "QSLog"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ImageExporter_Factory;->getKeyguardClockSwitch(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/KeyguardClockSwitch;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/screenshot/ImageExporter;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ImageExporter;-><init>(Landroid/content/ContentResolver;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ImageExporter_Factory;->resolverProvider:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "notification"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
