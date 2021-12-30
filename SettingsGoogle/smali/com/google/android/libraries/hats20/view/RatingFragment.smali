.class public Lcom/google/android/libraries/hats20/view/RatingFragment;
.super Lcom/google/android/libraries/hats20/view/BaseFragment;
.source "RatingFragment.java"


# instance fields
.field private fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

.field private question:Lcom/google/android/libraries/hats20/model/QuestionRating;

.field private questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

.field private selectedResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/BaseFragment;-><init>()V

    new-instance v0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->removeOnClickListenersAndDisableClickEvents(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/view/RatingFragment;)Lcom/google/android/libraries/hats20/view/QuestionMetrics;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/libraries/hats20/view/RatingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/hats20/view/RatingFragment;)Lcom/google/android/libraries/hats20/model/QuestionRating;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/view/RatingFragment;->setDescriptionForTalkBack(Landroid/view/View;II)V

    return-void
.end method

.method public static newInstance(Lcom/google/android/libraries/hats20/model/QuestionRating;)Lcom/google/android/libraries/hats20/view/RatingFragment;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/hats20/view/RatingFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/RatingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Question"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private removeMarginIfNeeded(Landroid/view/View;II)V
    .locals 2

    if-eqz p2, :cond_0

    add-int/lit8 p0, p3, -0x1

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget p2, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget p3, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_2

    iget p2, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget p3, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeOnClickListenersAndDisableClickEvents(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDescriptionForTalkBack(Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%d of %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    if-ne p2, v2, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getLowValueText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getHighValueText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextAndContentDescription(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public computeQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->builder()Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->getDelayMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setDelayMs(J)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    const-string v1, "Selected response: "

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "HatsLibRatingFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->build()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object p0

    return-object p0
.end method

.method public isResponseSatisfactory()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Question"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/model/QuestionRating;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "SelectedResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    const-string v0, "QuestionMetrics"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-direct {p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    sget p3, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_rating:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p3}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_question_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/hats20/util/TextFormatUtil;->format(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_rating_low_value_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getLowValueText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->setTextAndContentDescription(Landroid/widget/TextView;Ljava/lang/String;)V

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_rating_high_value_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getHighValueText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->setTextAndContentDescription(Landroid/widget/TextView;Ljava/lang/String;)V

    sget p3, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_rating_images_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    sget v1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_star_rating_bar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/hats20/ui/StarRatingBar;

    sget-object v2, Lcom/google/android/libraries/hats20/view/RatingFragment$3;->$SwitchMap$com$google$android$libraries$hats20$model$QuestionRating$Sprite:[I

    iget-object v3, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {v3}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 p1, 0x2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getNumIcons()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->setNumStars(I)V

    new-instance p1, Lcom/google/android/libraries/hats20/view/RatingFragment$2;

    invoke-direct {p1, p0, v1}, Lcom/google/android/libraries/hats20/view/RatingFragment$2;-><init>(Lcom/google/android/libraries/hats20/view/RatingFragment;Lcom/google/android/libraries/hats20/ui/StarRatingBar;)V

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/hats20/ui/StarRatingBar;->setOnRatingChangeListener(Lcom/google/android/libraries/hats20/ui/StarRatingBar$OnRatingChangeListener;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionRating;->getSprite()Lcom/google/android/libraries/hats20/model/QuestionRating$Sprite;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0xf

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown sprite "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    sget v3, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_rating_item:I

    invoke-virtual {p1, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_rating_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Lcom/google/android/libraries/hats20/model/QuestionRating;->READONLY_SURVEY_RATING_ICON_RESOURCE_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/libraries/hats20/view/RatingFragment;->setDescriptionForTalkBack(Landroid/view/View;II)V

    new-instance v5, Lcom/google/android/libraries/hats20/view/RatingFragment$1;

    invoke-direct {v5, p0, p3, v4}, Lcom/google/android/libraries/hats20/view/RatingFragment$1;-><init>(Lcom/google/android/libraries/hats20/view/RatingFragment;Landroid/view/ViewGroup;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/libraries/hats20/view/RatingFragment;->removeMarginIfNeeded(Landroid/view/View;II)V

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    sget p1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_question_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->updateRatingQuestionTextSize(Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->watch(Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;Landroid/view/View;)V

    :cond_3
    return-object p2
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->cleanUp()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPageScrolledIntoView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsShown()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/RatingFragment;->isResponseSatisfactory()Z

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->selectedResponse:Ljava/lang/String;

    const-string v1, "SelectedResponse"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const-string v0, "QuestionMetrics"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public updateRatingQuestionTextSize(Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-interface {v1}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;->getMeasureSpecs()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sget v2, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_rating_container_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    add-float/2addr v2, v0

    int-to-float v0, v1

    sub-float/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/RatingFragment;->question:Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x14

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->fitTextInTextViewWrapIfNeeded(FIILjava/lang/String;Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;)V

    return-void
.end method
