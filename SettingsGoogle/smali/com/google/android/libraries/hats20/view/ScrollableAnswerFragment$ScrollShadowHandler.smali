.class Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;
.super Ljava/lang/Object;
.source "ScrollableAnswerFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollShadowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;-><init>(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)V

    return-void
.end method

.method private hideBottomShadow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$300(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method private hideTopShadow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$400(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method private setElevation(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method private showBottomShadow()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$300(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_survey_controls_view_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method private showTopShadow()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$400(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_question_view_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method private updateShadowVisibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$100(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v3}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$200(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v4}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$100(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v4, p1

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v4}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$200(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->showTopShadow()V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->hideTopShadow()V

    :goto_4
    if-eqz v1, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->showBottomShadow()V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->hideBottomShadow()V

    :goto_6
    return-void
.end method


# virtual methods
.method public onHeightChanged(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->updateShadowVisibility(I)V

    :cond_0
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->this$0:Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;

    invoke-static {v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->access$100(Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;)Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment$ScrollShadowHandler;->updateShadowVisibility(I)V

    return-void
.end method
