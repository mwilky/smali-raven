.class Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;
.super Ljava/lang/Object;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$Ha1eNRLfiQDhhc5SyU7bRIFujtQ(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    iget p4, p3, Landroidx/slice/widget/EventInfo;->rowIndex:I

    iget p3, p3, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-static {p1, p4, p3, p2}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardClickLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;III)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;->mContext:Landroid/content/Context;

    const/16 p3, 0x682

    invoke-virtual {p2, p0, p3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroidx/slice/Slice;)V
    .locals 2

    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setScrollable(Z)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSliceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setMode(I)V

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p3}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    iget-object p3, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper;Lcom/android/settings/homepage/contextualcards/ContextualCard;Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;)V

    invoke-virtual {p3, v0}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->isLargeCard()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0, p3}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    :cond_0
    return-void
.end method

.method createViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
