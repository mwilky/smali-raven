.class public Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;
.super Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;
.source "AssistGestureTrainingFinishedActivity.java"


# instance fields
.field private mAccessibilityAnnounced:Z

.field private mAssistGestureCheck:Landroid/view/View;

.field private mAssistGestureIllustration:Landroid/view/View;

.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method public static synthetic $r8$lambda$hDtec4equ3xmjietLTAF401Geis(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->onNextButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uGR5KI_2ned4n3tazpx4n6usDdk(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->onSettingsButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;-><init>()V

    return-void
.end method

.method private fadeOutCheckAfterDelay()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private onNextButtonClicked(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->handleDoneAndLaunch()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->mAssistGestureHelper:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->setListener(Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onSettingsButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->launchAssistGestureSettings()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3e1

    return p0
.end method

.method protected handleGestureDetected()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mErrorView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAccessibilityAnnounced:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->fadeOutCheckAfterDelay()V

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->fadeIndicators()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0d0324

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->setShouldCheckForNoProgress(Z)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f04029b

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const v1, 0x7f13021d

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_1
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040849

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    new-instance v2, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;)V

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    const v2, 0x7f13021c

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeDeferredSetup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSetup()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeSettingsSuggestion()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingBase;->flowTypeAccidentalTrigger()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f040297

    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    :goto_0
    const v0, 0x7f040dd7

    invoke-virtual {p1, p0, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    :cond_5
    :goto_1
    const p1, 0x7f0d00b4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const p1, 0x7f0d00b5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureIllustration:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->fadeOutCheckAfterDelay()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureIllustration:Landroid/view/View;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showMessage(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingFinishedActivity;->mAssistGestureCheck:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/settings/gestures/assist/AssistGestureTrainingSliderBase;->showMessage(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
