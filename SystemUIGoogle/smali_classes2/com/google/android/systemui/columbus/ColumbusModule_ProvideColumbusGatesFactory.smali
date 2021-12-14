.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideColumbusGatesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/google/android/systemui/columbus/gates/Gate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final cameraVisibilityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final flagEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardProximityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;"
        }
    .end annotation
.end field

.field private final powerSaveStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field

.field private final powerStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final setupWizardProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final vrModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->flagEnabledProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardProximityProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->telephonyActivityProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->vrModeProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->cameraVisibilityProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerSaveStateProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerStateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/gates/FlagEnabled;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardProximity;",
            "Lcom/google/android/systemui/columbus/gates/SetupWizard;",
            "Lcom/google/android/systemui/columbus/gates/TelephonyActivity;",
            "Lcom/google/android/systemui/columbus/gates/VrMode;",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerSaveState;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->get()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->flagEnabledProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/columbus/gates/FlagEnabled;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->keyguardProximityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/columbus/gates/KeyguardProximity;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->setupWizardProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/columbus/gates/SetupWizard;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->telephonyActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->vrModeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/columbus/gates/VrMode;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->cameraVisibilityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerSaveStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/columbus/gates/PowerSaveState;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->powerStateProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-static/range {v1 .. v8}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusGatesFactory;->provideColumbusGates(Lcom/google/android/systemui/columbus/gates/FlagEnabled;Lcom/google/android/systemui/columbus/gates/KeyguardProximity;Lcom/google/android/systemui/columbus/gates/SetupWizard;Lcom/google/android/systemui/columbus/gates/TelephonyActivity;Lcom/google/android/systemui/columbus/gates/VrMode;Lcom/google/android/systemui/columbus/gates/CameraVisibility;Lcom/google/android/systemui/columbus/gates/PowerSaveState;Lcom/google/android/systemui/columbus/gates/PowerState;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
