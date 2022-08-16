.class public final Lcom/android/systemui/biometrics/UdfpsShell_Factory;
.super Ljava/lang/Object;
.source "UdfpsShell_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final commandRegistryProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance v0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;-><init>(Z)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;-><init>(Landroid/content/ContentResolver;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputUriController;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    return-object v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v0, 0x7f0b04bd

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsShell;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsShell;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsShell_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->init()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
