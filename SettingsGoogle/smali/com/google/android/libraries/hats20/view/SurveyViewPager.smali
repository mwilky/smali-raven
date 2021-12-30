.class public Lcom/google/android/libraries/hats20/view/SurveyViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SurveyViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->setUpSurveyViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->setUpSurveyViewPager()V

    return-void
.end method

.method private setUpSurveyViewPager()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_survey_page_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    new-instance v0, Lcom/google/android/libraries/hats20/view/SurveyViewPager$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager$1;-><init>(Lcom/google/android/libraries/hats20/view/SurveyViewPager;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public fireOnPageScrolledIntoViewListener()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/BaseFragment;->onPageScrolledIntoView()V

    return-void
.end method

.method public getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    const/4 v1, 0x0

    const-string v2, "HatsLibSurveyViewPager"

    if-nez v0, :cond_0

    const-string p0, "Context is not a SurveyPromptActivity, something is very wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/SurveyPromptActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Lcom/google/android/libraries/hats20/adapter/SurveyViewPagerAdapter;->getQuestionIndex(Landroidx/fragment/app/Fragment;)I

    move-result v4

    if-ne v4, v0, :cond_1

    instance-of v4, v3, Lcom/google/android/libraries/hats20/view/BaseFragment;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/libraries/hats20/view/BaseFragment;

    return-object v3

    :cond_2
    const-string p0, "No Fragment found for the current item, something is very wrong."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getCurrentItemQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/SurveyViewPager;->getCurrentItemFragment()Lcom/google/android/libraries/hats20/view/BaseFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/BaseFragment;->computeQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isLastQuestion()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public navigateToNextPage()V
    .locals 2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
