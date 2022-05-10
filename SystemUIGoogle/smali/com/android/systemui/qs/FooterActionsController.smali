.class public final Lcom/android/systemui/qs/FooterActionsController;
.super Lcom/android/systemui/util/ViewController;
.source "FooterActionsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/FooterActionsController$ExpansionState;,
        Lcom/android/systemui/qs/FooterActionsController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/FooterActionsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final buttonsVisibleState:Lcom/android/systemui/qs/FooterActionsController$ExpansionState;

.field private final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final editButton:Landroid/view/View;

.field private expanded:Z

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field private listening:Z

.field private final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field private final powerMenuLite:Landroid/view/View;

.field private final qsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private final settingsButtonContainer:Landroid/view/View;

.field private final showPMLiteButton:Z

.field private final tunerService:Lcom/android/systemui/tuner/TunerService;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/internal/logging/UiEventLogger;ZLcom/android/systemui/qs/FooterActionsController$ExpansionState;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qsPanelController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userInfoController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiUserSwitchController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProvisionedController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsLogger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tunerService"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalActionsDialog"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonsVisibleState"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController;->qsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iput-object p3, p0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/qs/FooterActionsController;->userManager:Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p6, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iput-object p7, p0, Lcom/android/systemui/qs/FooterActionsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p8, p0, Lcom/android/systemui/qs/FooterActionsController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p9, p0, Lcom/android/systemui/qs/FooterActionsController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p10, p0, Lcom/android/systemui/qs/FooterActionsController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p11, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iput-object p12, p0, Lcom/android/systemui/qs/FooterActionsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-boolean p13, p0, Lcom/android/systemui/qs/FooterActionsController;->showPMLiteButton:Z

    iput-object p14, p0, Lcom/android/systemui/qs/FooterActionsController;->buttonsVisibleState:Lcom/android/systemui/qs/FooterActionsController$ExpansionState;

    sget p2, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.settings_button)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    sget p2, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    const p2, 0x1020003

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(android.R.id.edit)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/FooterActionsController;->editButton:Landroid/view/View;

    sget p2, Lcom/android/systemui/R$id;->pm_lite:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.pm_lite)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    new-instance p1, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    new-instance p1, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$buttonsVisible(Lcom/android/systemui/qs/FooterActionsController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->buttonsVisible()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext(Lcom/android/systemui/qs/FooterActionsController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceProvisionedController$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method public static final synthetic access$getFalsingManager$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method public static final synthetic access$getGlobalActionsDialog$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    return-object p0
.end method

.method public static final synthetic access$getMView$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMetricsLogger$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static final synthetic access$getPowerMenuLite$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getQsPanelController$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/qs/QSPanelController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->qsPanelController:Lcom/android/systemui/qs/QSPanelController;

    return-object p0
.end method

.method public static final synthetic access$getSettingsButton$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/statusbar/phone/SettingsButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    return-object p0
.end method

.method public static final synthetic access$getTunerService$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/tuner/TunerService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method

.method public static final synthetic access$getUiEventLogger$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static final synthetic access$getUserManager$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->userManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static final synthetic access$isTunerEnabled(Lcom/android/systemui/qs/FooterActionsController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$startSettingsActivity(Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->startSettingsActivity()V

    return-void
.end method

.method private final buttonsVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->buttonsVisibleState:Lcom/android/systemui/qs/FooterActionsController$ExpansionState;

    sget-object v1, Lcom/android/systemui/qs/FooterActionsController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/FooterActionsController;->expanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/FooterActionsController;->expanded:Z

    :goto_0
    return v1
.end method

.method private final isTunerEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method private final startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private final updateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->isTunerEnabled()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->isMultiUserEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/FooterActionsView;->updateEverything(ZZ)V

    return-void
.end method


# virtual methods
.method public final disable(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->isTunerEnabled()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->isMultiUserEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/qs/FooterActionsView;->disable(IZZ)V

    return-void
.end method

.method public final getExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/FooterActionsController;->expanded:Z

    return p0
.end method

.method public final hideFooter()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected onInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->multiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onViewAttached()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/FooterActionsController;->showPMLiteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsController;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->editButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/FooterActionsController$onViewAttached$1;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/FooterActionsController;->setListening(Z)V

    return-void
.end method

.method public final refreshVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->showFooter()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsController;->hideFooter()V

    :goto_0
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/FooterActionsController;->expanded:Z

    return-void
.end method

.method public final setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsView;->setExpansion(F)V

    return-void
.end method

.method public final setKeyguardShowing()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsView;->setKeyguardShowing()V

    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/FooterActionsController;->listening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/FooterActionsController;->listening:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->onUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final showFooter()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/FooterActionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    return-void
.end method

.method public final updateAnimator(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/FooterActionsView;->updateAnimator(II)V

    return-void
.end method

.method public updatePowerViewVisibility(I)V
    .locals 2
    
    if-eqz p1, :cond_stock
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mBlockPowerMenuKeyguard:Z

    if-nez v0, :cond_0

    :cond_stock
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsController;->updateView()V

    return-void
.end method
