.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionFooterContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method public static synthetic $r8$lambda$leyz1iSK_w-hr1g85IiJBMlfPX0(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->lambda$bindView$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x175

    const/16 v3, 0x5de

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->mContext:Landroid/content/Context;

    const/4 p2, 0x5

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->setIsExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->onConditionsChanged()V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
