.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CentralSurfacesComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentI;,
        Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentFactory;
    }
.end annotation


# instance fields
.field public authRippleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            ">;"
        }
    .end annotation
.end field

.field public builderProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;

.field public builderProvider2:Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

.field public builderProvider3:Lcom/android/keyguard/CarrierTextManager_Builder_Factory;

.field public builderProvider4:Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;

.field public centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public getAuthRippleViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/biometrics/AuthRippleView;",
            ">;"
        }
    .end annotation
.end field

.field public getBatteryMeterViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/battery/BatteryMeterViewController;",
            ">;"
        }
    .end annotation
.end field

.field public getBatteryMeterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/battery/BatteryMeterView;",
            ">;"
        }
    .end annotation
.end field

.field public getLargeScreenShadeHeaderBarViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public getLockIconViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/LockIconView;",
            ">;"
        }
    .end annotation
.end field

.field public getNotificationPanelViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field public getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            ">;"
        }
    .end annotation
.end field

.field public getSplitShadeOngoingPrivacyChipProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/privacy/OngoingPrivacyChip;",
            ">;"
        }
    .end annotation
.end field

.field public getTapAgainViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TapAgainView;",
            ">;"
        }
    .end annotation
.end field

.field public headerPrivacyIconsControllerProvider:Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;

.field public largeScreenShadeHeaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;",
            ">;"
        }
    .end annotation
.end field

.field public lockIconViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/LockIconViewController;",
            ">;"
        }
    .end annotation
.end field

.field public notificationLaunchAnimatorControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;",
            ">;"
        }
    .end annotation
.end field

.field public notificationPanelViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            ">;"
        }
    .end annotation
.end field

.field public notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;",
            ">;"
        }
    .end annotation
.end field

.field public notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            ">;"
        }
    .end annotation
.end field

.field public notificationStackScrollLoggerProvider:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

.field public notificationsQSContainerControllerProvider:Lcom/android/systemui/media/MediaTimeoutListener_Factory;

.field public provideListContainerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;",
            ">;"
        }
    .end annotation
.end field

.field public providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;",
            ">;"
        }
    .end annotation
.end field

.field public providesNotificationShelfProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelf;",
            ">;"
        }
    .end annotation
.end field

.field public providesNotificationStackScrollLayoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
            ">;"
        }
    .end annotation
.end field

.field public providesStatusBarWindowViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShelfController;",
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

.field public stackStateLoggerProvider:Lcom/android/systemui/util/WallpaperController_Factory;

.field public statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/core/StatusBarInitializer;",
            ">;"
        }
    .end annotation
.end field

.field public statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;

.field public statusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

.field public statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

.field public tapAgainViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;)V
    .locals 101

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/dreams/dagger/DreamModule_ProvidesDreamBackendFactory;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/dreams/dagger/DreamModule_ProvidesDreamBackendFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/util/NotificationChannels_Factory;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v2}, Lcom/android/systemui/util/NotificationChannels_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationStackScrollLayoutProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v2, v7}, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShelfProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShelfComponentBuilderProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_ProvidesStatusBarWindowViewFactory;

    invoke-direct {v6, v3, v2}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_ProvidesStatusBarWindowViewFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesStatusBarWindowViewProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;

    invoke-direct {v14, v3, v6, v15, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper_Builder_Factory;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    new-instance v13, Lcom/android/systemui/util/WallpaperController_Factory;

    invoke-direct {v13, v6, v5}, Lcom/android/systemui/util/WallpaperController_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->stackStateLoggerProvider:Lcom/android/systemui/util/WallpaperController_Factory;

    new-instance v12, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    invoke-direct {v12, v6, v7}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLoggerProvider:Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationVisibilityProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v12

    move-object v12, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v13

    move-object v13, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v14

    move-object v14, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v15

    move-object v15, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationLockscreenUserManagerGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v6

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationGroupManagerLegacyProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideGroupExpansionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->providesSilentHeaderControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifPipelineFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v6

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v6

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v6

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideVisualStabilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v6

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v6

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v2

    move-object/from16 v26, v3

    invoke-static/range {v8 .. v48}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

    invoke-direct {v3, v2}, Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider2:Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/autorotate/DataLogger_Factory;

    invoke-direct {v3, v2, v4}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v13, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/media/MediaTimeoutListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationsQSContainerControllerProvider:Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLockIconViewProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getAuthRippleViewProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v9, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->commandRegistryProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->biometricUnlockControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->udfpsControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v5

    move-object/from16 v21, v2

    invoke-static/range {v8 .. v21}, Lcom/android/systemui/biometrics/AuthRippleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/biometrics/AuthRippleController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->authRippleControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLockIconViewProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v10, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    invoke-static/range {v3 .. v16}, Lcom/android/keyguard/LockIconViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/LockIconViewController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/keyguard/LiftToActivateListener_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/keyguard/LiftToActivateListener_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getTapAgainViewProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/phone/TapAgainViewController_Factory;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/TapAgainViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/util/sensors/SensorModule_ProvideProximityCheckFactory;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lcom/android/systemui/util/sensors/SensorModule_ProvideProximityCheckFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLargeScreenShadeHeaderBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getSplitShadeOngoingPrivacyChipProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLargeScreenShadeHeaderBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesStatusIconContainerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->privacyItemControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getSplitShadeOngoingPrivacyChipProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->privacyDialogControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->privacyLoggerProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providePermissionManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v13, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideSafetyCenterManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-static/range {v5 .. v17}, Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->headerPrivacyIconsControllerProvider:Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    iget-object v5, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideWifiManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->telephonyListenerManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    iget-object v9, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v11}, Lcom/android/keyguard/CarrierTextManager_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/CarrierTextManager_Builder_Factory;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider3:Lcom/android/keyguard/CarrierTextManager_Builder_Factory;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->subscriptionManagerSlotIndexResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v12 .. v19}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/keyguard/CarrierTextManager_Builder_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider4:Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLargeScreenShadeHeaderBarViewProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/BootCompleteCacheImpl_Factory;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/BootCompleteCacheImpl_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getBatteryMeterViewProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v10, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v11, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetBatteryMeterViewControllerFactory;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_GetBatteryMeterViewControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getBatteryMeterViewControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getLargeScreenShadeHeaderBarViewProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->headerPrivacyIconsControllerProvider:Lcom/android/systemui/qs/HeaderPrivacyIconsController_Factory;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider4:Lcom/android/systemui/qs/carrier/QSCarrierGroupController_Builder_Factory;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v6, v6, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-static/range {v13 .. v20}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->largeScreenShadeHeaderControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v95, v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->getNotificationPanelViewProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeLogProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideLatencyTrackerProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideDisplayIdProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v51, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v52, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->builderProvider2:Lcom/android/wm/shell/animation/FlingAnimationUtils_Builder_Factory;

    move-object/from16 v53, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarTouchableRegionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v54, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->conversationNotificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v55, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->mediaHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v56, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v57, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationsQSContainerControllerProvider:Lcom/android/systemui/media/MediaTimeoutListener_Factory;

    move-object/from16 v58, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v59, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStatusViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v60, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardQsUserSwitchComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v61, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUserSwitcherComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v62, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStatusBarViewComponentFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 v63, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v64, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v65, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->authControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v66, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v67, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v68, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->mediaDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v69, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v70, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->ambientStateProvider:Ljavax/inject/Provider;

    move-object/from16 v71, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v72, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardMediaControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v73, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->privacyDotViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v74, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->tapAgainViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v75, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v76, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->fragmentServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v77, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    move-object/from16 v78, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->quickAccessWalletControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v79, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->qRCodeScannerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v80, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->recordingControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v81, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v82, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->secureSettingsImplProvider:Ljavax/inject/Provider;

    move-object/from16 v83, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->largeScreenShadeHeaderControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v84, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v85, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v86, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->panelExpansionStateManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v87, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v88, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideSysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v89, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->controlsComponentProvider:Ljavax/inject/Provider;

    move-object/from16 v90, v3

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v91, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->qsFrameTranslateImplProvider:Ljavax/inject/Provider;

    move-object/from16 v92, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideSysUiStateProvider:Ljavax/inject/Provider;

    move-object/from16 v93, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v94, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->panelEventsEmitterProvider:Ljavax/inject/Provider;

    move-object/from16 v96, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationStackSizeCalculatorProvider:Ljavax/inject/Provider;

    move-object/from16 v97, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->unlockedScreenOffAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v98, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v99, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    move-object/from16 v100, v2

    invoke-static/range {v25 .. v100}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object v10, v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDockManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeDepthControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->panelExpansionStateManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideLowLightClockControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->ambientStateProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v2

    invoke-static/range {v3 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationsControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v12}, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideResourcesProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    move-object/from16 v35, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeServiceHostProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v41, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    move-object/from16 v42, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v43, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarHideIconsForBouncerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v44, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providePowerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v45, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->vibratorHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v46, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideOptionalVibratorProvider:Ljavax/inject/Provider;

    move-object/from16 v47, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lightBarControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v48, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->disableFlagsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v49, v3

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideDisplayIdProvider:Ljavax/inject/Provider;

    move-object/from16 v50, v2

    invoke-static/range {v25 .. v50}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/media/taptotransfer/MediaTttFlags_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarInitializerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;-><init>(Ljavax/inject/Provider;I)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dozeScrimControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->scrimControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardIndicationControllerGoogleProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenShadeTransitionControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationLockscreenUserManagerGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotifShadeEventSourceProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->initControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifPipelineFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v2

    invoke-static/range {v3 .. v34}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v7, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider_Factory;

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v41, v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationLaunchAnimatorControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v9, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideExecutorProvider:Ljavax/inject/Provider;

    iget-object v12, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationVisibilityProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationClickNotifierProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarKeyguardViewManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideKeyguardManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIDreamManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationLockscreenUserManagerGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationInterruptStateProviderImplProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideLockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->activityIntentHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v32, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notifPipelineFlagsProvider:Ljavax/inject/Provider;

    move-object/from16 v33, v3

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v34, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationActivityStarterLoggerProvider:Lcom/android/systemui/statusbar/QsFrameTranslateImpl_Factory;

    move-object/from16 v35, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->centralSurfacesGoogleProvider:Ljavax/inject/Provider;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    move-object/from16 v38, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v39, v2

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideActivityLaunchAnimatorProvider:Ljavax/inject/Provider;

    move-object/from16 v40, v1

    invoke-static/range {v9 .. v41}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createCollapsedStatusBarFragment()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
    .locals 30

    move-object/from16 v0, p0

    new-instance v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentFactory;

    move-object v1, v2

    invoke-direct {v2, v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl$StatusBarFragmentComponentFactory;-><init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;)V

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideOngoingCallControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->systemStatusAnimationSchedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v4, v4, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarLocationPublisherProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v5, v5, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v6, v6, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->panelExpansionStateManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v7, v7, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v8, v8, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v9, v9, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarHideIconsForBouncerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v10, v10, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v12, v12, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v13, v13, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v14, v14, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v15, v15, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v20, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    move-object/from16 v16, v1

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideCollapsedSbFragmentLogBufferProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/LogBuffer;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v3, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->disableFlagsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/DisableFlagsLogger;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;-><init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/DisableFlagsLogger;)V

    new-instance v23, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    move-object/from16 v17, v23

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v29, v1

    check-cast v29, Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-direct/range {v23 .. v29}, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;-><init>(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/CarrierConfigTracker;)V

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-virtual {v1}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v0, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/concurrent/Executor;

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-static/range {v1 .. v19}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_CreateCollapsedStatusBarFragmentFactory;->createCollapsedStatusBarFragment(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/concurrent/Executor;)Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getAuthRippleController()Lcom/android/systemui/biometrics/AuthRippleController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->authRippleControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleController;

    return-object p0
.end method

.method public final getBindRowCallback()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    return-object p0
.end method

.method public final getCentralSurfacesCommandQueueCallbacks()Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    return-object p0
.end method

.method public final getLockIconViewController()Lcom/android/keyguard/LockIconViewController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->lockIconViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/LockIconViewController;

    return-object p0
.end method

.method public final getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-object p0
.end method

.method public final getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method public final getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationPanelViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method public final getNotificationPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationPresenter;

    return-object p0
.end method

.method public final getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method public final getNotificationShadeWindowViewController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    return-object p0
.end method

.method public final getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->providesStatusBarWindowViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelfController;

    return-object p0
.end method

.method public final getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method public final getStartables()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent$Startable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusBarHeadsUpChangeListener()Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;

    return-object p0
.end method

.method public final getStatusBarInitializer()Lcom/android/systemui/statusbar/core/StatusBarInitializer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CentralSurfacesComponentImpl;->statusBarInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    return-object p0
.end method
