.class public Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;
.super Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;
.source "AssistGestureTrainingIntroActivity.java"


# static fields
.field private static final FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String; = "com.google.android.settings.gestures.assist.AssistGestureTrainingIntroActivity"


# direct methods
.method public static synthetic $r8$lambda$45jVpMkVQgrObcBcxu9zoE0klEo(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TmnvuDWB8r3mT_B0Oizyf40BlRk(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->onCancelButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;-><init>()V

    return-void
.end method

.method private getFlowType()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isSetupWizardIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "setup"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "deferred_setup"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.settings.gestures.AssistGestureSuggestion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "settings_suggestion"

    return-object p0

    :cond_2
    sget-object v0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->FROM_ACCIDENTAL_TRIGGER_CLASS:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "accidental_trigger"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private onCancelButtonClicked(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "accidental_trigger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->launchAssistGestureSettings()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :goto_0
    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->startEnrollingActivity()V

    return-void
.end method

.method private startEnrollingActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingEnrollingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launched_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3df

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    const p1, 0x7f060058

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0d0318

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040284

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v2, 0x7f13021b

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f041775

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v2, 0x7f13021a

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->getFlowType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accidental_trigger"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040287

    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onGestureDetected()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->clearIndicators()V

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingIntroActivity;->startEnrollingActivity()V

    return-void
.end method

.method public onGestureProgress(FI)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->onGestureProgress(FI)V

    return-void
.end method
