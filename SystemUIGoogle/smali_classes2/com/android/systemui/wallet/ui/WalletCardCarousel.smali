.class public Lcom/android/systemui/wallet/ui/WalletCardCarousel;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "WalletCardCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;,
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;,
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;,
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;,
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;,
        Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;
    }
.end annotation


# instance fields
.field private mCardCenterToScreenCenterDistancePx:F

.field private mCardEdgeToCenterDistance:F

.field private mCardHeightPx:I

.field private mCardMarginPx:I

.field private mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

.field private mCardWidthPx:I

.field mCenteredAdapterPosition:I

.field private mCornerRadiusPx:F

.field mEdgeToCenterDistance:F

.field private mExpectedViewWidth:I

.field private mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

.field private final mSystemGestureExclusionZone:Landroid/graphics/Rect;

.field private mTotalCardWidth:I

.field private final mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;


# direct methods
.method public static synthetic $r8$lambda$QOmpnIDRDtTz437iOk9txHRdtD0(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->lambda$onViewAdded$0(Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSystemGestureExclusionZone:Landroid/graphics/Rect;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardCenterToScreenCenterDistancePx:F

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Lcom/android/systemui/wallet/ui/WalletCardCarousel$1;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CarouselSnapHelper;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Lcom/android/systemui/wallet/ui/WalletCardCarousel$1;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Lcom/android/systemui/wallet/ui/WalletCardCarousel$1;)V

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;

    invoke-direct {p1, p0, p0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselAccessibilityDelegate;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/wallet/ui/WalletCardCarousel$1;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    new-instance p1, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/wallet/ui/WalletCardCarousel;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardCenterToScreenCenterDistancePx:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updateCardView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardEdgeToCenterDistance:F

    return p0
.end method

.method private synthetic lambda$onViewAdded$0(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updateCardView(Landroid/view/View;)V

    return-void
.end method

.method private updateCardView(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletCardViewHolder;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v3, v1

    div-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    const v2, 0x3f547ae1    # 0.83f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    cmpg-float v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    sub-int/2addr v0, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardCenterToScreenCenterDistancePx:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    int-to-float p1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardCenterToScreenCenterDistancePx:F

    :cond_2
    return-void
.end method

.method private updatePadding(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mTotalCardWidth:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v1, p1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    add-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method getCardHeightPx()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardHeightPx:I

    return p0
.end method

.method getCardWidthPx()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-virtual {p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    int-to-double p2, p1

    iget p4, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mTotalCardWidth:I

    int-to-double p4, p4

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double/2addr p4, v0

    cmpg-double p2, p2, p4

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSystemGestureExclusionZone:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p1, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSystemGestureExclusionZone:Landroid/graphics/Rect;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :cond_0
    iget p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    if-eq p1, p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updatePadding(I)V

    :cond_1
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    new-instance v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method resetAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-static {p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->access$500(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    invoke-interface {v0, p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;->onCardSelected(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    return-void
.end method

.method setCardScrollListener(Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    return-void
.end method

.method setData(Ljava/util/List;IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/wallet/ui/WalletCardViewInfo;",
            ">;IZ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-static {v0, p1, p3}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->access$400(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;Ljava/util/List;Z)Z

    move-result p3

    invoke-virtual {p0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->scrollToPosition(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p1, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    return p3
.end method

.method setExpectedViewWidth(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f30a3d7    # 0.69f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    int-to-float v1, v1

    const v2, 0x3fcba2e9

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardHeightPx:I

    iget v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    int-to-float v2, v1

    const v3, 0x3d124925

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    int-to-float v1, v1

    const v2, -0x430a3d71    # -0.03f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    iget v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    sget v2, Lcom/android/systemui/R$dimen;->card_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mTotalCardWidth:I

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardEdgeToCenterDistance:F

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updatePadding(I)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;->queryWalletCards()V

    :cond_1
    return-void
.end method

.method setSelectionListener(Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    return-void
.end method
