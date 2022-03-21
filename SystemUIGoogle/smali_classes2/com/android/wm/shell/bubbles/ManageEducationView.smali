.class public final Lcom/android/wm/shell/bubbles/ManageEducationView;
.super Landroid/widget/LinearLayout;
.source "ManageEducationView.kt"


# instance fields
.field private final ANIMATE_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field private final gotItButton$delegate:Lkotlin/Lazy;

.field private isHiding:Z

.field private final manageButton$delegate:Lkotlin/Lazy;

.field private final manageView$delegate:Lkotlin/Lazy;

.field private final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private realManageButtonRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "Bubbles"

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->ANIMATE_DURATION:J

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$manageView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$manageView$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$manageButton$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$manageButton$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageButton$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$gotItButton$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$gotItButton$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->gotItButton$delegate:Lkotlin/Lazy;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->bubbles_manage_button_education:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->bubble_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    return-void
.end method

.method public static final synthetic access$getANIMATE_DURATION$p(Lcom/android/wm/shell/bubbles/ManageEducationView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->ANIMATE_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getGotItButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getGotItButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getManageButton(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/widget/Button;
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getManageView(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/view/ViewGroup;
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRealManageButtonRect$p(Lcom/android/wm/shell/bubbles/ManageEducationView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$setHiding$p(Lcom/android/wm/shell/bubbles/ManageEducationView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->isHiding:Z

    return-void
.end method

.method private final getGotItButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->gotItButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method private final getManageButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method private final getManageView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final setButtonColor()V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1120024

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x1060028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getGotItButton()Landroid/widget/Button;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setDrawableDirection()V
    .locals 2

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    sget p0, Lcom/android/wm/shell/R$drawable;->bubble_stack_user_education_bg_rtl:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/wm/shell/R$drawable;->bubble_stack_user_education_bg:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private final setShouldShow(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "HasSeenBubblesManageOnboarding"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/TaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->isHiding:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->ANIMATE_DURATION:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setDrawableDirection()V

    return-void
.end method

.method public final show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 6

    const-string v0, "expandedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setButtonColor()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getTaskView()Lcom/android/wm/shell/TaskView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/TaskView;->setObscuredTouchRect(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->bubbles_user_education_width_large_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getManageButtonMargin()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setShouldShow(Z)V

    return-void
.end method
