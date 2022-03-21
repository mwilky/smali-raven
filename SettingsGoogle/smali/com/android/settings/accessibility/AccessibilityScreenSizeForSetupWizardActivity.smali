.class public Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "AccessibilityScreenSizeForSetupWizardActivity.java"


# instance fields
.field private mLastScrollViewHeight:I


# direct methods
.method public static synthetic $r8$lambda$iuU0Jetk6u0g9G893XqzchfudmE(Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->lambda$scrollToBottom$2(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jk6wLdi_XzuGxMM1NewT5ZOqZvI(Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->lambda$initFooterButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptSkquOqcFXH7K6g9KVErjxl-XA(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->lambda$scrollToBottom$1(Landroid/widget/ScrollView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private getFragmentType(Landroid/content/Intent;)I
    .locals 1

    const-string/jumbo p0, "vision_fragment_no"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getTransitionType(Landroid/content/Intent;)I
    .locals 1

    const-string p0, "page_transition_type"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private initFooterButton()V
    .locals 3

    const v0, 0x7f0d04f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f040849

    invoke-virtual {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const v1, 0x7f13021c

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method private isSuwSupportedTwoPanes()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initFooterButton$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private static synthetic lambda$scrollToBottom$1(Landroid/widget/ScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setSmoothScrollingEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$scrollToBottom$2(Landroid/widget/ScrollView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->mLastScrollViewHeight:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->mLastScrollViewHeight:I

    new-instance p0, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {p1, p0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private scrollToBottom()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->mLastScrollViewHeight:I

    const v0, 0x7f0d04f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->getFragmentType(Landroid/content/Intent;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x171

    goto :goto_0

    :cond_0
    const/16 p0, 0x172

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13020f

    goto :goto_0

    :cond_0
    const v0, 0x7f130246

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->updateHeaderLayout()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->scrollToBottom()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->initFooterButton()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->getFragmentType(Landroid/content/Intent;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/android/settings/display/FontSizePreferenceFragmentForSetupWizard;

    invoke-direct {p1}, Lcom/android/settings/display/FontSizePreferenceFragmentForSetupWizard;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;

    invoke-direct {p1}, Lcom/android/settings/display/ScreenZoomPreferenceFragmentForSetupWizard;-><init>()V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0d0179

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->getTransitionType(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f07003c

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method updateHeaderLayout()V
    .locals 4

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->isSuwSupportedTwoPanes()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d04f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    const v1, 0x7f0d0576

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    const v0, 0x7f0d0560

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->getFragmentType(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f040053

    goto :goto_0

    :cond_1
    const v1, 0x7f04004b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0d057f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/AccessibilityScreenSizeForSetupWizardActivity;->getFragmentType(Landroid/content/Intent;)I

    move-result p0

    if-ne p0, v2, :cond_2

    const p0, 0x7f040967

    goto :goto_1

    :cond_2
    const p0, 0x7f0410db

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
