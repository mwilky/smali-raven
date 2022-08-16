.class public final Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;
.super Ljava/lang/Object;
.source "UdfpsHapticsSimulator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final commandRegistryProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final vibratorProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->vibratorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->vibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->vibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/VibratorHelper;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->vibratorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindowManager;

    new-instance v2, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
