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
.field public final assistInvocationEffectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final launchOpaBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final setupWizardActionBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final silenceCallProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/SilenceCall;",
            ">;"
        }
    .end annotation
.end field

.field public final squishyNavigationButtonsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;",
            ">;"
        }
    .end annotation
.end field

.field public final telephonyActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;",
            ">;"
        }
    .end annotation
.end field

.field public final unpinNotificationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity_Factory;)V
    .locals 0

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


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->assistInvocationEffectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->launchOpaBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->settingsActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->cameraActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->setupWizardActionBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->squishyNavigationButtonsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->unpinNotificationsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->silenceCallProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle_Factory;->telephonyActivityProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;

    new-instance p0, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;Lcom/google/android/systemui/elmyra/actions/CameraAction$Builder;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Lcom/google/android/systemui/elmyra/actions/SilenceCall;Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V

    return-object p0
.end method
