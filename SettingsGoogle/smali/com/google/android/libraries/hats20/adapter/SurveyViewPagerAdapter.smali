.class public Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SurveyViewPagerAdapter.java"


# instance fields
.field private final questions:[Lcom/google/android/libraries/hats20/model/Question;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;[Lcom/google/android/libraries/hats20/model/Question;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Questions were missing!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildFragment(Lcom/google/android/libraries/hats20/model/Question;)Landroidx/fragment/app/Fragment;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/libraries/hats20/model/Question;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    check-cast p1, Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/RatingFragment;->newInstance(Lcom/google/android/libraries/hats20/model/QuestionRating;)Lcom/google/android/libraries/hats20/view/RatingFragment;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Attempted to build fragment for unsupported Question type %s.  Note this should never happen as it\'s invalid to create a Question type that does not have a matching fragment."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/OpenTextFragment;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;->newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/MultipleSelectFragment;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;->newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/MultipleChoiceFragment;

    move-result-object p0

    return-object p0
.end method

.method public static getQuestionIndex(Landroidx/fragment/app/Fragment;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "QuestionIndex"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->questions:[Lcom/google/android/libraries/hats20/model/Question;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->buildFragment(Lcom/google/android/libraries/hats20/model/Question;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QuestionIndex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
