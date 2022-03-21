.class public final Lcom/android/wm/shell/bubbles/StackEducationView;
.super Landroid/widget/LinearLayout;
.source "StackEducationView.kt"


# instance fields
.field private final ANIMATE_DURATION:J

.field private final ANIMATE_DURATION_SHORT:J

.field private final TAG:Ljava/lang/String;

.field private final controller:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final descTextView$delegate:Lkotlin/Lazy;

.field private isHiding:Z

.field private final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private final titleTextView$delegate:Lkotlin/Lazy;

.field private final view$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positioner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "Bubbles"

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION_SHORT:J

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$titleTextView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$titleTextView$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->titleTextView$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/StackEducationView$descTextView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$descTextView$2;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->descTextView$delegate:Lkotlin/Lazy;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$layout;->bubble_stack_user_education:I

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

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    return-void
.end method

.method public static final synthetic access$getANIMATE_DURATION$p(Lcom/android/wm/shell/bubbles/StackEducationView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    return-wide v0
.end method

.method public static final synthetic access$getPositioner$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-object p0
.end method

.method public static final synthetic access$getView(Lcom/android/wm/shell/bubbles/StackEducationView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isHiding$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    return p0
.end method

.method private final getDescTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->descTextView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->titleTextView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final setDrawableDirection()V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/android/wm/shell/R$drawable;->bubble_stack_user_education_bg:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/wm/shell/R$drawable;->bubble_stack_user_education_bg_rtl:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

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

    const-string v0, "HasSeenBubblesOnboarding"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setTextColor()V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->getDescTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010435
        0x1010039
    .end array-data
.end method


# virtual methods
.method public final hide(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION_SHORT:J

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->ANIMATE_DURATION:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

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

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setTextColor()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setDrawableDirection()V

    return-void
.end method

.method public final show(Landroid/graphics/PointF;)Z
    .locals 5

    const-string v0, "stackPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->controller:Lcom/android/wm/shell/bubbles/BubbleController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForBackpress(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->isLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$dimen;->bubbles_user_education_width_large_screen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/StackEducationView$show$1;-><init>(Lcom/android/wm/shell/bubbles/StackEducationView;Landroid/graphics/PointF;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->setShouldShow(Z)V

    return v2
.end method
