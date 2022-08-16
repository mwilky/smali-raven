.class public final Lcom/android/systemui/qs/FooterActionsController;
.super Lcom/android/systemui/util/ViewController;
.source "FooterActionsController.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/FooterActionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final alphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

.field public globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field public final globalActionsDialogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialogLite;",
            ">;"
        }
    .end annotation
.end field

.field public final globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

.field public lastExpansion:F

.field public listening:Z

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final multiUserSetting:Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;

.field public final multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

.field public final onClickListener:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

.field public final onUserInfoChangedListener:Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

.field public final powerMenuLite:Landroid/view/View;

.field public final securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

.field public final securityFootersContainer:Landroid/view/ViewGroup;

.field public final securityFootersSeparator:Landroid/view/View;

.field public final settingsButtonContainer:Landroid/view/View;

.field public final showPMLiteButton:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSFgsManagerFooter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Ljavax/inject/Provider;Lcom/android/internal/logging/UiEventLogger;ZLcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/FooterActionsView;",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/qs/QSSecurityFooter;",
            "Lcom/android/systemui/qs/QSFgsManagerFooter;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialogLite;",
            ">;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Z",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p15

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v4, p3

    iput-object v4, v0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/qs/FooterActionsController;->userManager:Landroid/os/UserManager;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/systemui/qs/FooterActionsController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialogProvider:Ljavax/inject/Provider;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move/from16 v5, p14

    iput-boolean v5, v0, Lcom/android/systemui/qs/FooterActionsController;->showPMLiteButton:Z

    iput-object v3, v0, Lcom/android/systemui/qs/FooterActionsController;->globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Lcom/android/systemui/qs/FooterActionsController;->lastExpansion:F

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-virtual {v5, p1, v7, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v6, 0x3f666666    # 0.9f

    iput v6, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->alphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/qs/FooterActionsController;->visible:Z

    const v5, 0x7f0b05e4

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    const v5, 0x7f0b05ce

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0b04f6

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    const v6, 0x7f0b0476

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserManager:Landroid/os/UserManager;

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object v10, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 p6, v5

    move-object/from16 p7, v1

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v2

    invoke-direct/range {p6 .. p13}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;)V

    iput-object v5, v0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, v0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersSeparator:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

    invoke-interface/range {p5 .. p5}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v1

    new-instance v2, Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;

    move-object/from16 v4, p16

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;I)V

    iput-object v2, v0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSetting:Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;

    new-instance v1, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic getSecurityFootersSeparator$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerController;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    monitor-exit v1

    goto/16 :goto_2

    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->activityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v4, v0, Lcom/android/systemui/qs/FgsManagerController;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerController$userTrackerCallback$1;

    iget-object v5, v0, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->currentProfileIds:Ljava/util/LinkedHashSet;

    iget-object v4, v0, Lcom/android/systemui/qs/FgsManagerController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v4}, Lcom/android/systemui/settings/UserTracker;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v4, "systemui"

    iget-object v5, v0, Lcom/android/systemui/qs/FgsManagerController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/qs/FgsManagerController$init$1$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/qs/FgsManagerController$init$1$2;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v4, "systemui"

    const-string/jumbo v5, "task_manager_enabled"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerController;->isAvailable:Z

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    const-string/jumbo v4, "systemui"

    const-string/jumbo v5, "task_manager_show_footer_dot"

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/qs/FgsManagerController;->showFooterDot:Z

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v2, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object v4, v0, Lcom/android/systemui/qs/FgsManagerController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v5, Lcom/android/systemui/qs/FgsManagerController$init$1$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/FgsManagerController$init$1$3;-><init>(Lcom/android/systemui/qs/FgsManagerController;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/systemui/qs/FgsManagerController;->mainExecutor:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v10, 0x28

    invoke-static/range {v4 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;II)V

    iput-boolean v3, v0, Lcom/android/systemui/qs/FgsManagerController;->initialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mIsInitialized:Z

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialogProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-boolean v0, p0, Lcom/android/systemui/qs/FooterActionsController;->showPMLiteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSetting:Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersSeparator:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    iget-object v1, v1, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFootersContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    new-instance v2, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$visibilityListener$1;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/qs/FooterActionsController;)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

    iput-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    iput-object v2, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->destroy()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/FooterActionsController;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSetting:Lcom/android/systemui/qs/FooterActionsController$multiUserSetting$1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/FooterActionsController;->listening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/FooterActionsController;->listening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->fgsManagerFooterController:Lcom/android/systemui/qs/QSFgsManagerFooter;

    if-eqz p1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v2, v1, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerController;->onDialogDismissedListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v2, v1, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerController;->onNumberOfPackagesChangedListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/FgsManagerController;->getNumRunningPackages()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumPackages:I

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v2, v1, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerController;->onDialogDismissedListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v2

    iget-object v1, v0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v2, v1, Lcom/android/systemui/qs/FgsManagerController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, v1, Lcom/android/systemui/qs/FgsManagerController;->onNumberOfPackagesChangedListeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->securityFooterController:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_3
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final setVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/FooterActionsController;->visible:Z

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    iget-boolean v1, p0, Lcom/android/systemui/qs/FooterActionsController;->visible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    :cond_1
    return-void
.end method

.method public final updateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;-><init>(Lcom/android/systemui/qs/FooterActionsView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
