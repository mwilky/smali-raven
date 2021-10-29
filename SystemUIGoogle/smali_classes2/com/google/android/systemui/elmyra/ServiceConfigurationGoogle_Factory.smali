.class public final Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;
.super Ljava/lang/Object;
.source "ServiceConfigurationGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistInvocationEffectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final launchOpaBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final setupWizardActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final silenceCallProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SilenceCall;",
            ">;"
        }
    .end annotation
.end field

.field private final squishyNavigationButtonsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final unpinNotificationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SilenceCall;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->assistInvocationEffectProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->launchOpaBuilderProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->settingsActionBuilderProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->cameraActionBuilderProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->setupWizardActionBuilderProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->squishyNavigationButtonsProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->unpinNotificationsProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->silenceCallProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->telephonyActivityProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SilenceCall;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;"
        }
    .end annotation

    new-instance v11, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;

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

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;
    .locals 12

    new-instance v11, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;

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

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;
    .locals 11

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->assistInvocationEffectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->launchOpaBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->settingsActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->cameraActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->setupWizardActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->squishyNavigationButtonsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->unpinNotificationsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->silenceCallProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->telephonyActivityProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    invoke-static/range {v1 .. v10}, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->get()Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;

    move-result-object p0

    return-object p0
.end method
