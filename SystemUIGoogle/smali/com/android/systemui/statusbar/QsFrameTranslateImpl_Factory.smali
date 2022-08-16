.class public final Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;
.super Ljava/lang/Object;
.source "QsFrameTranslateImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final centralSurfacesProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/HapticClick;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/feedback/HapticClick;-><init>(Ldagger/Lazy;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->init()V

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v0, 0x7f0b0508

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBufferFactory;

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const-string v2, "NotifHeadsUpLog"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/log/LogBufferFactory;->create(ILjava/lang/String;Z)Lcom/android/systemui/log/LogBuffer;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    const v0, 0x7f0b0352

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    new-instance v0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/QsFrameTranslateImpl;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsController;

    new-instance v0, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/controls/GoogleControlsTileResourceConfigurationImpl;-><init>(Lcom/android/systemui/controls/controller/ControlsController;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
