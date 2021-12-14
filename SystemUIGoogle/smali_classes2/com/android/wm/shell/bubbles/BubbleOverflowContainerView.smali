.class public Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
.super Landroid/widget/LinearLayout;
.source "BubbleOverflowContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

.field private mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field private mEmptyState:Landroid/widget/LinearLayout;

.field private mEmptyStateImage:Landroid/widget/ImageView;

.field private mEmptyStateSubtitle:Landroid/widget/TextView;

.field private mEmptyStateTitle:Landroid/widget/TextView;

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mOverflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$WW2FSnJOgtOrzlr2B4JuihuE-aE(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForOverflow(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateWindowFlagsForOverflow(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_recycler:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_state:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_state_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    return-void
.end method

.method public setBubbleController(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateOverflow()V

    return-void
.end method

.method updateEmptyStateVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateFontSize()V
    .locals 3

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method updateOverflow()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->bubbles_overflow_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$OverflowGridLayoutManager;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->getOverflowBubbles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->setOverflowListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateEmptyStateVisibility()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateTheme()V

    return-void
.end method

.method updateTheme()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget v5, Lcom/android/wm/shell/R$drawable;->bubble_ic_empty_overflow_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget v5, Lcom/android/wm/shell/R$drawable;->bubble_ic_empty_overflow_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/android/wm/shell/R$id;->bubble_overflow_container:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_2

    sget v5, Lcom/android/wm/shell/R$color;->bubbles_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    sget v5, Lcom/android/wm/shell/R$color;->bubbles_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v4, -0x1000000

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10104e2
        0x1010038
    .end array-data
.end method
