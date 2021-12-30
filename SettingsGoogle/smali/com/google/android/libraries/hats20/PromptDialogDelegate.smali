.class Lcom/google/android/libraries/hats20/PromptDialogDelegate;
.super Ljava/lang/Object;
.source "PromptDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;
    }
.end annotation


# instance fields
.field private answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

.field private areDimensionsValid:Z

.field private configurationHelper:Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;

.field private context:Landroid/content/Context;

.field private final dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

.field private isBottomSheet:Z

.field private isStartingSurvey:Z

.field private isTwoLinePrompt:Z

.field private layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

.field private maxPromptWidth:I

.field private surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isTwoLinePrompt:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isBottomSheet:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isStartingSurvey:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->areDimensionsValid:Z

    iput-object p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/model/SurveyController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isBottomSheet:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isStartingSurvey:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->transmitOtherAccessBeacon()V

    return-void
.end method

.method private configureDimensions()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->areDimensionsValid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->configurationHelper:Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->configureDimensions()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->areDimensionsValid:Z

    return-void
.end method

.method public static createArgs(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SiteId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SurveyController"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "AnswerBeacon"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "RequestCode"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "MaxPromptWidth"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p0, "BottomSheet"

    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private transmitOtherAccessBeacon()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;->setBeaconType(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    new-instance v0, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/SurveyController;->getAnswerUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;-><init>(Ljava/lang/String;Lcom/google/android/libraries/hats20/storage/HatsDataStore;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hats20/answer/AnswerBeaconTransmitter;->transmit(Lcom/google/android/libraries/hats20/answer/AnswerBeacon;)V

    return-void
.end method

.method private updatePromptBannerText(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_title_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_prompt_banner_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_prompt_banner_right_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->maxPromptWidth:I

    invoke-static {v0, v2}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getPromptWidthPx(Landroid/content/Context;I)I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x14

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, p2, p1}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->fitTextInTextViewWrapIfNeeded(FIILjava/lang/String;Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isTwoLinePrompt:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    invoke-interface {p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->context:Landroid/content/Context;

    new-instance v0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    invoke-interface {p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "SiteId"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestCode"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getPromptMaxWidth()I

    move-result v2

    const-string v3, "MaxPromptWidth"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->maxPromptWidth:I

    const-string v2, "SurveyController"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/hats20/model/SurveyController;

    iput-object v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    const-string v2, "AnswerBeacon"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    iput-object v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->answerBeacon:Lcom/google/android/libraries/hats20/answer/AnswerBeacon;

    const-string v2, "BottomSheet"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isBottomSheet:Z

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    invoke-interface {p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getShowsDialog()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    invoke-interface {p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->markSurveyRunning()V

    sget p3, Lcom/google/android/libraries/hats20/R$layout;->hats_prompt_banner:I

    const/4 v2, 0x0

    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->surveyController:Lcom/google/android/libraries/hats20/model/SurveyController;

    invoke-virtual {p2}, Lcom/google/android/libraries/hats20/model/SurveyController;->getPromptMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->updatePromptBannerText(Landroid/view/View;Ljava/lang/String;)V

    sget p2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_banner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    iget-boolean v2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isTwoLinePrompt:Z

    invoke-virtual {p3, v2}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getPromptBannerHeight(Z)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance p2, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;

    move-object v3, p1

    check-cast v3, Landroidx/cardview/widget/CardView;

    iget-object p3, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->dialogFragment:Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;

    invoke-interface {p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    iget-boolean v6, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isBottomSheet:Z

    iget-boolean v7, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isTwoLinePrompt:Z

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;-><init>(Landroidx/cardview/widget/CardView;Landroid/app/Dialog;Lcom/google/android/libraries/hats20/util/LayoutDimensions;ZZ)V

    iput-object p2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->configurationHelper:Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;

    sget p2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_no_thanks_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_take_survey_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    sget v2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_no_thanks_wrapper:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/hats20/PromptDialogDelegate$1;

    invoke-direct {v3, p0, p2}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$1;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_prompt_take_survey_wrapper:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/hats20/PromptDialogDelegate$2;

    invoke-direct {v3, p0, p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$2;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$3;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Ljava/lang/String;I)V

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;

    invoke-direct {p3, p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate$4;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->isStartingSurvey:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/hats20/HatsClient;->markSurveyFinished()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->areDimensionsValid:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->configureDimensions()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->configureDimensions()V

    return-void
.end method
