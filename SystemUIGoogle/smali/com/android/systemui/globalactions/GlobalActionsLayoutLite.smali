.class public Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "GlobalActionsLayoutLite.java"


# instance fields
.field private final mMaxColumns:I

.field private final mMaxRows:I


# direct methods
.method public static synthetic $r8$lambda$vpSx5EMkYSSZADcTyloyjRsUc8E(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->power_menu_lite_max_columns:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->mMaxColumns:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->power_menu_lite_max_rows:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->mMaxRows:I

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/globalactions/GlobalActionsLayoutLite$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected addToListView(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    sget p2, Lcom/android/systemui/R$id;->list_flow:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected getAnimationDistance()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->getGridItemSize()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method protected getBackgroundDrawable(I)Lcom/android/systemui/HardwareBgDrawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getGridItemSize()F
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_grid_item_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    const/4 p5, 0x1

    if-ge p2, p4, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    instance-of v0, p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-nez p3, :cond_1

    invoke-virtual {p4}, Lcom/android/systemui/globalactions/GlobalActionsItem;->isTruncated()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    move p3, p1

    goto :goto_2

    :cond_1
    :goto_1
    move p3, p5

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p3, p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    if-eqz p3, :cond_4

    check-cast p2, Lcom/android/systemui/globalactions/GlobalActionsItem;

    invoke-virtual {p2, p5}, Lcom/android/systemui/globalactions/GlobalActionsItem;->setMarquee(Z)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onUpdateList()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->onUpdateList()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->mMaxColumns:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->mMaxRows:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsLayoutLite;->mMaxRows:I

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    sget v1, Lcom/android/systemui/R$id;->list_flow:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    return-void
.end method

.method protected removeAllListViews()V
    .locals 2

    sget v0, Lcom/android/systemui/R$id;->list_flow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->removeAllListViews()V

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->addToListView(Landroid/view/View;Z)V

    return-void
.end method

.method protected shouldReverseListItems()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
