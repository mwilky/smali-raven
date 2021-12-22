.class Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "QuickStatusBarHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QuickStatusBarHeader;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCameraSlot:Ljava/lang/String;

.field private final mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private final mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mLocationIndicatorsEnabled:Z

.field private final mLocationSlot:Ljava/lang/String;

.field private mMicCameraIndicatorsEnabled:Z

.field private final mMicSlot:Ljava/lang/String;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mPrivacyChipLogged:Z

.field private final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field private final mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mVariableDateViewControllerClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

.field private final mVariableDateViewControllerDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;


# direct methods
.method public static synthetic $r8$lambda$cFqUFu8nFqfUEvSWLdscueAdKd4(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/qs/QSExpansionPathInterpolator;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p5, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p6, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iput-object p7, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iput-object p9, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iput-object p11, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p12, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    iput-object p13, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    invoke-virtual {p8, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p3, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p4, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/VariableDateView;

    invoke-virtual {p14, p3}, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->create(Lcom/android/systemui/statusbar/policy/VariableDateView;)Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mVariableDateViewControllerDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p4, Lcom/android/systemui/R$id;->date_clock:I

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/VariableDateView;

    invoke-virtual {p14, p3}, Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;->create(Lcom/android/systemui/statusbar/policy/VariableDateView;)Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mVariableDateViewControllerClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
    
    const-string v0, "qs"

    invoke-direct {p3, p2, p13, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/FeatureFlags;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    iput-object p10, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {p10, p1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040819

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mCameraSlot:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040825

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicSlot:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1040823

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationSlot:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->updatePrivacyIconSlots()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    return-object p0
.end method

.method private getChipEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->onColorsChanged(Z)V

    return-void
.end method

.method private setChipVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setChipVisibility(Z)V

    return-void
.end method

.method private updatePrivacyIconSlots()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mCameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mCameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mCameraSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationSlot:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlot(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->updatePrivacyIconSlots()V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040824

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->isSingleCarrier()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setIsSingleCarrier(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setOnSingleCarrierChangedListener(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isCombinedStatusBarSignalIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040829

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040818

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040826

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;Lcom/android/systemui/qs/QSExpansionPathInterpolator;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mVariableDateViewControllerDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mVariableDateViewControllerClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setOnSingleCarrierChangedListener(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QuickQSPanelController;->setContentMargins(II)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanelController;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    :goto_0
    return-void
.end method
