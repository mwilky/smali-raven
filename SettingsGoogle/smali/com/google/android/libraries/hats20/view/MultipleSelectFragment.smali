.class public Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;
.super Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;
.source "MultipleSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;
    }
.end annotation


# instance fields
.field private answers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private answersContainer:Landroid/view/ViewGroup;

.field private fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

.field private isNoneOfTheAboveChecked:Z

.field private ordering:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

.field private questionText:Ljava/lang/String;

.field private responses:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;-><init>()V

    new-instance v0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)[Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answersContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addCheckboxToAnswersContainer(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_multiple_select_item:I

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answersContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_multiple_select_checkbox:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance p1, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;

    invoke-direct {p1, p0, p3}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$CheckboxChangeListener;-><init>(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;I)V

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p1, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment$1;-><init>(Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;
    .locals 4

    new-instance v0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object p0

    const-string v3, "QuestionText"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->getAnswers()Ljava/util/ArrayList;

    move-result-object p0

    const-string v3, "AnswersAsArray"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;->getOrdering()Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "OrderingAsArray"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public computeQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 4

    invoke-static {}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->builder()Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->ordering:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setOrdering(Ljava/util/List;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v2}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->getDelayMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setDelayMs(J)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->build()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object p0

    return-object p0
.end method

.method public createScrollViewContents()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_scrollable_answer_content_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_answers_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answersContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    aget-boolean v3, v3, v0

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->addCheckboxToAnswersContainer(Ljava/lang/String;ZILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$string;->hats_lib_none_of_the_above:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    iget-object v2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "NoneOfTheAbove"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->addCheckboxToAnswersContainer(Ljava/lang/String;ZILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answersContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method getQuestionText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionText:Ljava/lang/String;

    return-object p0
.end method

.method public isResponseSatisfactory()Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, p0, v3

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isResponseSatisfactory()Z

    move-result v0

    invoke-interface {p1, v0, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QuestionText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionText:Ljava/lang/String;

    const-string v1, "AnswersAsArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    const-string v1, "OrderingAsArray"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->ordering:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "NoneOfTheAboveAsBoolean"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    const-string v0, "QuestionMetrics"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const-string v0, "ResponsesAsArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-direct {p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    goto :goto_0

    :cond_2
    array-length p1, p1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    array-length p1, p1

    const/16 v0, 0x40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Saved instance state responses had incorrect length: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HatsLibMultiSelectFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->answers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->watch(Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->cleanUp()V

    invoke-super {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onDetach()V

    return-void
.end method

.method public onPageScrolledIntoView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsShown()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isResponseSatisfactory()Z

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->isNoneOfTheAboveChecked:Z

    const-string v1, "NoneOfTheAboveAsBoolean"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const-string v1, "QuestionMetrics"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->responses:[Z

    const-string v0, "ResponsesAsArray"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void
.end method
