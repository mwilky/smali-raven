.class public final Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;
.super Ljava/lang/Object;
.source "QSModule_ProvideAutoTileManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final autoAddTrackerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/AutoAddTracker$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final castControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastController;",
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

.field public final dataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceControlsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceControlsController;",
            ">;"
        }
    .end annotation
.end field

.field public final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final hostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field public final hotspotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotController;",
            ">;"
        }
    .end annotation
.end field

.field public final isReduceBrightColorsAvailableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final managedProfileControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ">;"
        }
    .end annotation
.end field

.field public final nightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field public final reduceBrightColorsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/ReduceBrightColorsController;",
            ">;"
        }
    .end annotation
.end field

.field public final safetyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SafetyController;",
            ">;"
        }
    .end annotation
.end field

.field public final secureSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final walletControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/WalletController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/toast/ToastUI_Factory;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->autoAddTrackerBuilderProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->hostProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->hotspotControllerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->nightDisplayListenerProvider:Ljavax/inject/Provider;

    iput-object p10, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->castControllerProvider:Ljavax/inject/Provider;

    iput-object p11, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->reduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    iput-object p12, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->deviceControlsControllerProvider:Ljavax/inject/Provider;

    iput-object p13, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->walletControllerProvider:Ljavax/inject/Provider;

    iput-object p14, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->safetyControllerProvider:Ljavax/inject/Provider;

    iput-object p15, p0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->isReduceBrightColorsAvailableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/toast/ToastUI_Factory;Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;
    .locals 17

    new-instance v16, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/toast/ToastUI_Factory;Ljavax/inject/Provider;)V

    return-object v16
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->autoAddTrackerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/qs/AutoAddTracker$Builder;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->hostProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->hotspotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->dataSaverControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->managedProfileControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->nightDisplayListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/hardware/display/NightDisplayListener;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->castControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->reduceBrightColorsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/qs/ReduceBrightColorsController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->deviceControlsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/policy/DeviceControlsController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->walletControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/statusbar/policy/WalletController;

    iget-object v1, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->safetyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/policy/SafetyController;

    iget-object v0, v0, Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;->isReduceBrightColorsAvailableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    move-object v2, v0

    invoke-direct/range {v2 .. v17}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/statusbar/phone/ManagedProfileController;Landroid/hardware/display/NightDisplayListener;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/qs/ReduceBrightColorsController;Lcom/android/systemui/statusbar/policy/DeviceControlsController;Lcom/android/systemui/statusbar/policy/WalletController;Lcom/android/systemui/statusbar/policy/SafetyController;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->init()V

    return-object v0
.end method
