.class public final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/qs/dagger/QSFragmentComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QSFragmentComponentImpl"
.end annotation


# instance fields
.field public batteryMeterViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/battery/BatteryMeterViewController;",
            ">;"
        }
    .end annotation
.end field

.field public builderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/CarrierTextManager$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public builderProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public factoryProvider:Ljavax/inject/Provider;

.field public factoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public factoryProvider3:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public factoryProvider4:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public footerActionsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/FooterActionsController;",
            ">;"
        }
    .end annotation
.end field

.field public headerPrivacyIconsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/HeaderPrivacyIconsController;",
            ">;"
        }
    .end annotation
.end field

.field public provideQSPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanel;",
            ">;"
        }
    .end annotation
.end field

.field public provideRootViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public provideThemedContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public provideThemedLayoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field public providesBatteryMeterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/battery/BatteryMeterView;",
            ">;"
        }
    .end annotation
.end field

.field public providesPrivacyChipProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/OngoingPrivacyChip;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSContainerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSContainerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSCutomizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/QSCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSFgsManagerFooterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSFooterActionsViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/FooterActionsView;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSFooterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFooter;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSFooterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFooterView;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSSecurityFooterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSUsingCollapsedLandscapeMediaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public providesQSUsingMediaPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public providesQuickQSPanelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanel;",
            ">;"
        }
    .end annotation
.end field

.field public providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;"
        }
    .end annotation
.end field

.field public providesStatusIconContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer;",
            ">;"
        }
    .end annotation
.end field

.field public qSAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public qSContainerImplControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSContainerImplController;",
            ">;"
        }
    .end annotation
.end field

.field public qSCustomizerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/QSCustomizerController;",
            ">;"
        }
    .end annotation
.end field

.field public qSFgsManagerFooterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFgsManagerFooter;",
            ">;"
        }
    .end annotation
.end field

.field public qSFooterViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFooterViewController;",
            ">;"
        }
    .end annotation
.end field

.field public qSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field public qSSecurityFooterProvider:Ljavax/inject/Provider;

.field public qSSquishinessControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSSquishinessController;",
            ">;"
        }
    .end annotation
.end field

.field public qsFragmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFragment;",
            ">;"
        }
    .end annotation
.end field

.field public quickQSPanelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickQSPanelController;",
            ">;"
        }
    .end annotation
.end field

.field public quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

.field public final synthetic this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

.field public tileAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public tileQueryHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->initialize(Lcom/android/systemui/qs/QSFragment;)V

    return-void
.end method


# virtual methods
.method public final getQSAnimator()Lcom/android/systemui/qs/QSAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSAnimator;

    return-object p0
.end method

.method public final getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSContainerImplControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImplController;

    return-object p0
.end method

.method public final getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizerController;

    return-object p0
.end method

.method public final getQSFooter()Lcom/android/systemui/qs/QSFooter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooter;

    return-object p0
.end method

.method public final getQSFooterActionController()Lcom/android/systemui/qs/FooterActionsController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->footerActionsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FooterActionsController;

    return-object p0
.end method

.method public final getQSPanelController()Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public final getQSSquishinessController()Lcom/android/systemui/qs/QSSquishinessController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSSquishinessControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSSquishinessController;

    return-object p0
.end method

.method public final getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanelController;

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/qs/QSFragment;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qsFragmentProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/navigationbar/buttons/DeadZone_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/media/RingtonePlayer_Factory;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4}, Lcom/android/systemui/media/RingtonePlayer_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideQSPanelProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy_Factory;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v5, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v7, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper_Factory;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/customize/TileQueryHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/media/SeekBarViewModel_Factory;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/SeekBarViewModel_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideThemedContextProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter_Factory;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v1, v5}, Lcom/android/systemui/qs/customize/TileAdapter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->tileAdapterProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSCutomizerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->tileQueryHelperProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v10, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-static/range {v6 .. v14}, Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/customize/QSCustomizerController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/doze/DozeLogger_Factory;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/doze/DozeLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSUsingMediaPlayerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/qs/QSTileRevealController_Factory_Factory;

    invoke-direct {v3, v2, v1}, Lcom/android/systemui/qs/QSTileRevealController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    new-instance v15, Lcom/android/systemui/settings/brightness/BrightnessController_Factory_Factory;

    invoke-direct {v15, v3, v4, v5}, Lcom/android/systemui/settings/brightness/BrightnessController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v15, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider2:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideQSPanelProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSUsingMediaPlayerProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->providesQSMediaHostProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v13, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->factoryProvider6:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    invoke-static/range {v4 .. v18}, Lcom/android/systemui/qs/QSPanelController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/settings/brightness/BrightnessController_Factory_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSPanelController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/media/MediaBrowserFactory_Factory;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/MediaBrowserFactory_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/policy/WalletControllerImpl_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickQSPanelProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/android/systemui/screenshot/ImageTileSet_Factory;

    const/4 v14, 0x3

    invoke-direct {v9, v14, v3}, Lcom/android/systemui/screenshot/ImageTileSet_Factory;-><init>(ILjava/lang/Object;)V

    iput-object v9, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSUsingCollapsedLandscapeMediaProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSCustomizerControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSUsingMediaPlayerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->providesQuickQSMediaHostProvider:Ljavax/inject/Provider;

    iget-object v10, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSLoggerProvider:Ljavax/inject/Provider;

    iget-object v13, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v4 .. v13}, Lcom/android/systemui/qs/QuickQSPanelController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/screenshot/ImageTileSet_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickQSPanelController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qsFragmentProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickQSPanelProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v7, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v9, v8, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v10, v8, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    move-object v8, v9

    move-object v9, v1

    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/QSAnimator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSAnimator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/google/android/systemui/columbus/feedback/UserActivity_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSContainerImplProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3}, Lcom/android/systemui/dreams/touch/dagger/BouncerSwipeModule$$ExternalSyntheticLambda0;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesPrivacyChipProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;

    invoke-direct {v2, v1, v14}, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesStatusIconContainerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v15, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v4, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesPrivacyChipProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-static/range {v15 .. v27}, Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->headerPrivacyIconsControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v5, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v11}, Lcom/android/keyguard/CarrierTextManager_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/CarrierTextManager_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->builderProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v15, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v5, v5, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    iget-object v7, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->subscriptionManagerSlotIndexResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    invoke-static/range {v15 .. v22}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/keyguard/CarrierTextManager_Builder_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideTimeTickHandlerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/statusbar/policy/VariableDateViewController_Factory_Factory;

    invoke-direct {v4, v2, v6, v3}, Lcom/android/systemui/statusbar/policy/VariableDateViewController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider3:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    invoke-direct {v3, v2, v14}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesBatteryMeterViewProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v7, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v8, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;->create(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->batteryMeterViewControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQuickStatusBarHeaderProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->headerPrivacyIconsControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v4, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->builderProvider2:Ljavax/inject/Provider;

    iget-object v8, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v9, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v9, v9, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->qSExpansionPathInterpolatorProvider:Ljavax/inject/Provider;

    iget-object v10, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider3:Ljavax/inject/Provider;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->statusBarContentInsetsProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    invoke-static/range {v15 .. v26}, Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/screenshot/TakeScreenshotService_Factory;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickStatusBarHeaderController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->quickStatusBarHeaderControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSContainerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/qs/QSContainerImplController_Factory;

    invoke-direct {v5, v2, v3, v1, v4}, Lcom/android/systemui/qs/QSContainerImplController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSContainerImplControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v3, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/systemui/qs/QSFooterViewController_Factory;->create(Lcom/android/systemui/doze/DozeFalsingManagerAdapter_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSFooterViewController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSFooterViewControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/screenshot/ImageExporter_Factory;

    invoke-direct {v2, v14, v1}, Lcom/android/systemui/screenshot/ImageExporter_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSAnimatorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSPanelControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->quickQSPanelControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/qs/QSSquishinessController_Factory;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/android/systemui/qs/QSSquishinessController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSSquishinessControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterActionsViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->userSwitchDialogControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider4:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideThemedContextProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStateController_Factory;

    invoke-direct {v2, v1, v14}, Lcom/android/systemui/dreams/DreamOverlayStateController_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideThemedLayoutInflaterProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterActionsViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;

    invoke-direct {v3, v2, v1}, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideLockPatternUtilsFactory;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController_Factory;Ljavax/inject/Provider;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSSecurityFooterViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v5, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->securityControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideDialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSSecurityFooter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSSecurityFooterProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->provideThemedLayoutInflaterProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterActionsViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesQSFgsManagerFooterViewFactory;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesQSFgsManagerFooterViewFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFgsManagerFooterViewProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v2, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->fgsManagerControllerProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/qs/QSFgsManagerFooter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSFgsManagerFooterProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->providesQSFooterActionsViewProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->factoryProvider4:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->this$1:Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    iget-object v12, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    iget-object v13, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    iget-object v15, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->bindDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->qSSecurityFooterProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v7, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->globalActionsDialogLiteProvider:Ljavax/inject/Provider;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->isPMLiteEnabledProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;->globalSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    move-object/from16 v23, v9

    move-object/from16 v24, v2

    invoke-static/range {v10 .. v24}, Lcom/android/systemui/qs/FooterActionsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/FooterActionsController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$QSFragmentComponentImpl;->footerActionsControllerProvider:Ljavax/inject/Provider;

    return-void
.end method
