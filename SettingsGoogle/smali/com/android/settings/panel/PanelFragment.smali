.class public Lcom/android/settings/panel/PanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "PanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

.field private mDoneButton:Landroid/widget/Button;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderSubtitle:Landroid/widget/TextView;

.field private mHeaderTitle:Landroid/widget/TextView;

.field mLayoutView:Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMaxHeight:I

.field private mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPanel:Lcom/android/settings/panel/PanelContent;

.field private mPanelClosedKey:Ljava/lang/String;

.field private mPanelCreating:Z

.field private mPanelHeader:Landroid/widget/LinearLayout;

.field private final mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

.field mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSeeMoreButton:Landroid/widget/Button;

.field private final mSliceLiveData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleGroup:Landroid/widget/LinearLayout;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-ShZr5-ljayVGjTSX8eqHkwDaqI(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getCloseListener$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmcrNmEizUyL3RLdgwzlGOCunGw()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/panel/PanelFragment;->lambda$new$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$PaPGSxL5kKy3l1WQHWzqts9f34U(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UsA5BSEz1NdCg1MmIigEwBXDibE(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edpaRyAjdArv5TpM96LEUMTvqy4(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yfmhXqMAdI8O5m28S-d3zZ4uUeY(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getSeeMoreListener$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5C3djv1_NYW3MFRaFVE9eGxrps(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getHeaderIconListener$6(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMaxHeight(Lcom/android/settings/panel/PanelFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanelSlices(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPanelClosedKey(Lcom/android/settings/panel/PanelFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPanelCreating(Lcom/android/settings/panel/PanelFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateIn(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->animateIn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreatePanelContent(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/settings/panel/PanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/settings/panel/PanelFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private animateIn()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0d0449

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    const v0, 0x7f0d0449

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    new-array v1, p5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createPanelContent()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d044b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0516

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d01f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d044c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d044a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0616

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d0615

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d02ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d02af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0d049e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/android/settings/panel/PanelFeatureProvider;->getPanel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    new-instance v3, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    invoke-direct {v3, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-interface {v1, v3}, Lcom/android/settings/panel/PanelContent;->registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    instance-of v1, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    check-cast v3, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->updateProgressBar()V

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadAllSlices()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v3}, Lcom/android/settings/panel/PanelContent;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/panel/PanelFragment;->enableTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/panel/PanelFragment;->enablePanelHeader(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getSeeMoreListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getCloseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->enableCustomizedButton()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private enableCustomizedButton()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getCustomizedButtonTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private enablePanelHeader(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p1}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getHeaderIconListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0398

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private enableTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$getCloseListener$5(Landroid/view/View;)V
    .locals 0

    const-string p1, "done"

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getHeaderIconListener$6(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getSeeMoreListener$4(Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "see_more"

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0, p1}, Lcom/android/settings/panel/PanelContent;->onClickCustomizedButton(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$2(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isSliceLoaded(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isErrorSlice()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method private static synthetic lambda$new$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadAllSlices()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSlices()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPanelWhenReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isPanelReadyToLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/panel/PanelSlicesAdapter;-><init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/Map;I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/DividerItemDecoration;->setDividerCondition(I)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    return-void
.end method

.method private removeSliceLiveData(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateProgressBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method getCloseListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getHeaderIconListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getPanelViewType()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getViewType()I

    move-result p0

    return p0
.end method

.method getSeeMoreListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method isPanelCreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f06018a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0399

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "others"

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method updatePanelWithAnimation()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelCreating:Z

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0d0449

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/settings/panel/PanelFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelFragment$3;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
