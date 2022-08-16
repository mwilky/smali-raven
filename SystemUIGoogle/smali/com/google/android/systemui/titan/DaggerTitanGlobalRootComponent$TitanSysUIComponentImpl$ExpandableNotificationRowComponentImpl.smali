.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExpandableNotificationRowComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$RemoteInputViewSubcomponentI;,
        Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$RemoteInputViewSubcomponentFactory;
    }
.end annotation


# instance fields
.field public activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

.field public expandableNotificationRowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;",
            ">;"
        }
    .end annotation
.end field

.field public expandableNotificationRowDragControllerProvider:Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;

.field public expandableNotificationRowProvider:Ldagger/internal/InstanceFactory;

.field public expandableOutlineViewControllerProvider:Lcom/android/systemui/log/LogBufferFactory_Factory;

.field public expandableViewControllerProvider:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;

.field public factoryProvider:Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

.field public listContainerProvider:Ldagger/internal/InstanceFactory;

.field public final notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public notificationEntryProvider:Ldagger/internal/InstanceFactory;

.field public onExpandClickListenerProvider:Ldagger/internal/InstanceFactory;

.field public provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

.field public provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

.field public provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

.field public remoteInputViewSubcomponentFactoryProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$1;

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$OnExpandClickListener;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ldagger/internal/InstanceFactory;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v5, v5, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    invoke-direct {v6, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iput-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    invoke-static {v3}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;->create$2(Ldagger/internal/InstanceFactory;)Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableViewControllerProvider:Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ldagger/internal/InstanceFactory;

    invoke-static {v4, v3}, Lcom/android/systemui/log/LogBufferFactory_Factory;->create$1(Ljavax/inject/Provider;Lcom/android/systemui/media/nearby/NearbyMediaDevicesLogger_Factory;)Lcom/android/systemui/log/LogBufferFactory_Factory;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableOutlineViewControllerProvider:Lcom/android/systemui/log/LogBufferFactory_Factory;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ldagger/internal/InstanceFactory;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->factoryProvider:Lcom/android/systemui/statusbar/phone/NotificationTapHelper_Factory_Factory;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v8, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideAccessibilityManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/log/LogBufferFactory_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$1;

    invoke-direct {v3, v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$1;-><init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->remoteInputViewSubcomponentFactoryProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$1;

    invoke-static/range {p5 .. p5}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ldagger/internal/InstanceFactory;

    invoke-static/range {p3 .. p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->notificationEntryProvider:Ldagger/internal/InstanceFactory;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;-><init>(Ldagger/internal/InstanceFactory;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideStatusBarNotificationProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v2, v2, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;-><init>(Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;)V

    iput-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;-><init>(Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideStatusBarNotificationFactory;)V

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    invoke-static/range {p4 .. p4}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->onExpandClickListenerProvider:Ldagger/internal/InstanceFactory;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->this$0:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;

    iget-object v4, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v15, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    new-instance v14, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;

    const/4 v6, 0x1

    invoke-direct {v14, v4, v15, v5, v6}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowDragControllerProvider:Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowProvider:Ldagger/internal/InstanceFactory;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->activatableNotificationViewControllerProvider:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController_Factory;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->remoteInputViewSubcomponentFactoryProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl$1;

    iget-object v7, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->listContainerProvider:Ldagger/internal/InstanceFactory;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationMediaManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providesPluginManagerProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideAppNameProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideAppNameFactory;

    move-object/from16 v32, v14

    move-object v14, v3

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->provideNotificationKeyProvider:Lcom/android/systemui/statusbar/notification/row/dagger/ExpandableNotificationRowComponent_ExpandableNotificationRowModule_ProvideNotificationKeyFactory;

    move-object/from16 v21, v15

    move-object v15, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideGroupExpansionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->rowContentBindStageProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideNotificationGutsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideOnUserInteractionCallbackProvider:Ljavax/inject/Provider;

    move-object/from16 v26, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->falsingCollectorImplProvider:Ljavax/inject/Provider;

    move-object/from16 v28, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    move-object/from16 v29, v3

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    move-object/from16 v30, v3

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v31, v1

    move-object/from16 v22, v2

    invoke-static/range {v4 .. v32}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/UdfpsHapticsSimulator_Factory;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final getExpandableNotificationRowController()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ExpandableNotificationRowComponentImpl;->expandableNotificationRowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    return-object p0
.end method
