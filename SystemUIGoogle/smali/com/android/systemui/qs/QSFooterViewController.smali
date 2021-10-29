.class public Lcom/android/systemui/qs/QSFooterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "QSFooterViewController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QSFooterView;",
        ">;",
        "Lcom/android/systemui/qs/QSFooter;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBuildText:Landroid/widget/TextView;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mEdit:Landroid/view/View;

.field private mExpanded:Z

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field private mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

.field private final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field private final mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mPowerMenuLite:Landroid/view/View;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private final mSettingsButtonContainer:Landroid/view/View;

.field private final mSettingsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mShowPMLiteButton:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static synthetic $r8$lambda$9A4T_43SBWj_Liw2YVUUP-Jl3ds(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NASq1B-6K5EFvckIHNgjIM4jWOM(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTPr0DEA84vT7wWIdmTFKQRtb34(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmQThCeZ9m0rTjJbW2_7W0E4uOk(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;ZLcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/qs/QSFooterViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSFooterViewController$1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    new-instance p1, Lcom/android/systemui/qs/QSFooterViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSFooterViewController$2;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p6, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p7, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iput-object p9, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iput-object p10, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p11, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p12, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p8, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButtonContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->build:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    const p2, 0x1020003

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEdit:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->pm_lite:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPowerMenuLite:Landroid/view/View;

    iput-boolean p13, p0, Lcom/android/systemui/qs/QSFooterViewController;->mShowPMLiteButton:Z

    iput-object p14, p0, Lcom/android/systemui/qs/QSFooterViewController;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iput-object p15, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSFooterViewController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/tuner/TunerService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFooterViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mExpanded:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/phone/SettingsButton;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSFooterViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->startSettingsActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPowerMenuLite:Landroid/view/View;

    return-object p0
.end method

.method private isTunerEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sub-int/2addr p4, p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->getNumQuickTiles()I

    move-result p0

    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/qs/QSFooterView;->updateAnimator(II)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->build_number_clip_data_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->build_number_copy_toast:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private synthetic lambda$onViewAttached$2(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$3(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->isMultiUserEnabled()Z

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/systemui/qs/QSFooterView;->disable(IZZ)V

    return-void
.end method

.method protected onInit()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mShowPMLiteButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPowerMenuLite:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPowerMenuLite:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPowerMenuLite:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelController;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->isMultiUserEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/QSFooterView;->updateEverything(ZZ)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterViewController;->setListening(Z)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitchController:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->isMultiUserEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/systemui/qs/QSFooterView;->setExpanded(ZZZ)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->setKeyguardShowing()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mListening:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
