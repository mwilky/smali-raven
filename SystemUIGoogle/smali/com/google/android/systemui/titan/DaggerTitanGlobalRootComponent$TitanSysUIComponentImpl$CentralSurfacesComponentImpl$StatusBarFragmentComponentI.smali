.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StatusBarFragmentComponentI"
.end annotation


# instance fields
.field public bindStatusBarUserSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field public collapsedStatusBarFragmentProvider:Ldagger/internal/InstanceFactory;

.field public factoryProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController_Factory_Factory;

.field public headsUpAppearanceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;",
            ">;"
        }
    .end annotation
.end field

.field public lightsOutNotifControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightsOutNotifController;",
            ">;"
        }
    .end annotation
.end field

.field public provideBatteryMeterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/battery/BatteryMeterView;",
            ">;"
        }
    .end annotation
.end field

.field public provideClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/Clock;",
            ">;"
        }
    .end annotation
.end field

.field public provideLightsOutNotifViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideOperatorNameViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;",
            ">;"
        }
    .end annotation
.end field

.field public providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;",
            ">;"
        }
    .end annotation
.end field

.field public providePhoneStatusBarViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;",
            ">;"
        }
    .end annotation
.end field

.field public provideStatusBarUserSwitcherContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;",
            ">;"
        }
    .end annotation
.end field

.field public providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/HeadsUpStatusBarView;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarDemoModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarUserSwitcherControllerImplProvider:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl_Factory;

.field public final synthetic this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->collapsedStatusBarFragmentProvider:Ldagger/internal/InstanceFactory;

    new-instance v3, Lcom/android/systemui/dagger/ReferenceSystemUIModule_ProvideSensorPrivacyControllerFactory;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/dagger/ReferenceSystemUIModule_ProvideSensorPrivacyControllerFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/MediaControllerFactory_Factory;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/media/MediaControllerFactory_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideBatteryMeterViewProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/broadcast/PendingRemovalStore_Factory;

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/broadcast/PendingRemovalStore_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideStatusBarUserSwitcherContainerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarUserInfoTrackerProvider:Ljavax/inject/Provider;

    iget-object v8, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarUserSwitcherFeatureControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->userSwitchDialogControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v12, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->statusBarUserSwitcherControllerImplProvider:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl_Factory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->bindStatusBarUserSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideSysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v8, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    iget-object v10, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->viewUtilProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController_Factory_Factory;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->factoryProvider:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController_Factory_Factory;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController_Factory_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    const/4 v6, 0x4

    invoke-direct {v3, v2, v6}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsShell_Factory;

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/biometrics/UdfpsShell_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v6, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v8, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v11, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v12, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideClockProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    invoke-static/range {v6 .. v18}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/util/settings/GlobalSettingsImpl_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideLightsOutNotifViewProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v7, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/MediaFeatureFlag_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/media/MediaFeatureFlag_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcherStartable_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideClockProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDemoModeControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->navigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideDisplayIdProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode_Factory;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->statusBarDemoModeProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;
    .locals 9

    new-instance v8, Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->provideBatteryMeterViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    sget-object v5, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->mainHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->this$2:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    return-object v8
.end method

.method public final getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-object p0
.end method

.method public final getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->lightsOutNotifControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    return-object p0
.end method

.method public final getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public final getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method public final getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    return-object p0
.end method

.method public final getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;->statusBarDemoModeProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    return-object p0
.end method
