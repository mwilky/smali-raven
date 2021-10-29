.class Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WalletCardCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallet/ui/WalletCardCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardCarouselScrollListener"
.end annotation


# instance fields
.field private mOldState:I

.field final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Lcom/android/systemui/wallet/ui/WalletCardCarousel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;-><init>(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    iget p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    iput p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->mOldState:I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    const/4 p3, -0x1

    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    invoke-static {p1, v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$602(Lcom/android/systemui/wallet/ui/WalletCardCarousel;F)F

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$700(Lcom/android/systemui/wallet/ui/WalletCardCarousel;Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    if-eq v0, p3, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    const/4 p3, 0x1

    :cond_2
    add-int/2addr v0, p3

    if-ltz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$800(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->access$500(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-static {p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$800(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->access$500(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget p2, p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p2, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-static {p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$800(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->access$500(Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget p3, p3, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-static {v0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$900(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)F

    move-result v0

    div-float/2addr p3, v0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletCardCarousel$CardCarouselScrollListener;->this$0:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-static {p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->access$1000(Lcom/android/systemui/wallet/ui/WalletCardCarousel;)Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    :cond_4
    :goto_1
    return-void
.end method
