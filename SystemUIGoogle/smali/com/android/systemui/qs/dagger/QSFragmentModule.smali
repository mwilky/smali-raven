.class public interface abstract Lcom/android/systemui/qs/dagger/QSFragmentModule;
.super Ljava/lang/Object;
.source "QSFragmentModule.java"


# direct methods
.method public static provideQSPanel(Landroid/view/View;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public static provideRootView(Lcom/android/systemui/qs/QSFragment;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static provideThemedContext(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static provideThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static providesBatteryMeterView(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/battery/BatteryMeterView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    return-object p0
.end method

.method public static providesPrivacyChip(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method public static providesQQSFooterActionsController(Lcom/android/systemui/qs/FooterActionsControllerBuilder;Lcom/android/systemui/qs/FooterActionsView;)Lcom/android/systemui/qs/FooterActionsController;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->withView(Lcom/android/systemui/qs/FooterActionsView;)Lcom/android/systemui/qs/FooterActionsControllerBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/FooterActionsController$ExpansionState;->COLLAPSED:Lcom/android/systemui/qs/FooterActionsController$ExpansionState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->withButtonsVisibleWhen(Lcom/android/systemui/qs/FooterActionsController$ExpansionState;)Lcom/android/systemui/qs/FooterActionsControllerBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->build()Lcom/android/systemui/qs/FooterActionsController;

    move-result-object p0

    return-object p0
.end method

.method public static providesQQSFooterActionsView(Landroid/view/View;)Lcom/android/systemui/qs/FooterActionsView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qqs_footer_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    return-object p0
.end method

.method public static providesQSContainerImpl(Landroid/view/View;)Lcom/android/systemui/qs/QSContainerImpl;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->quick_settings_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    return-object p0
.end method

.method public static providesQSCutomizer(Landroid/view/View;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method public static providesQSFooter(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/qs/QSFooter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object p0
.end method

.method public static providesQSFooterActionsController(Lcom/android/systemui/qs/FooterActionsControllerBuilder;Lcom/android/systemui/qs/FooterActionsView;)Lcom/android/systemui/qs/FooterActionsController;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->withView(Lcom/android/systemui/qs/FooterActionsView;)Lcom/android/systemui/qs/FooterActionsControllerBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/FooterActionsController$ExpansionState;->EXPANDED:Lcom/android/systemui/qs/FooterActionsController$ExpansionState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->withButtonsVisibleWhen(Lcom/android/systemui/qs/FooterActionsController$ExpansionState;)Lcom/android/systemui/qs/FooterActionsControllerBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsControllerBuilder;->build()Lcom/android/systemui/qs/FooterActionsController;

    move-result-object p0

    return-object p0
.end method

.method public static providesQSFooterActionsView(Landroid/view/View;)Lcom/android/systemui/qs/FooterActionsView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_footer_actions:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    return-object p0
.end method

.method public static providesQSFooterView(Landroid/view/View;)Lcom/android/systemui/qs/QSFooterView;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    return-object p0
.end method

.method public static providesQSSecurityFooterView(Landroid/view/LayoutInflater;Lcom/android/systemui/qs/QSPanel;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/android/systemui/R$layout;->quick_settings_security_footer:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static providesQSUsingMediaPlayer(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static providesQuickQSPanel(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method public static providesQuickStatusBarHeader(Landroid/view/View;)Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public static providesStatusIconContainer(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method
