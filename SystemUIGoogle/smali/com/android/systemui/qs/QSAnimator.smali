.class public Lcom/android/systemui/qs/QSAnimator;
.super Ljava/lang/Object;
.source "QSAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/PagedTileLayout$PageListener;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    }
.end annotation


# instance fields
.field private mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mAllViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowFancy:Z

.field private final mAnimatedQsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mFullRows:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastPosition:F

.field private mNeedsAnimatorUpdate:Z

.field private final mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mNumQuickTiles:I

.field private mOnFirstPage:Z

.field private mOnKeyguard:Z

.field private mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

.field private final mQQSFooterActions:Landroid/view/View;

.field private mQQSFooterActionsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

.field private mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private final mQSFooterActions:Landroid/view/View;

.field private final mQs:Lcom/android/systemui/plugins/qs/QS;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private final mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mShowCollapsedOnKeyguard:Z

.field private mTranslateWhileExpanding:Z

.field private mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUpdateAnimators:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$X3NBs2olMRBkDKYFVdJQOpLFabM(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/QSSecurityFooter;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSExpansionPathInterpolator;Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/qs/FooterActionsView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    new-instance v0, Lcom/android/systemui/qs/QSAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    new-instance v0, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iput-object p2, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iput-object p4, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iput-object p5, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iput-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object p12, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActions:Landroid/view/View;

    iput-object p11, p0, Lcom/android/systemui/qs/QSAnimator;->mQSFooterActions:Landroid/view/View;

    iput-object p7, p0, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iput-object p6, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p8, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p10, p0, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {p6, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    invoke-virtual {p4, p0}, Lcom/android/systemui/util/ViewController;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p4}, Lcom/android/systemui/util/ViewController;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    goto :goto_0

    :cond_1
    const-string p1, "QSAnimator"

    const-string p2, "QS Not using page layout"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p4, p0}, Lcom/android/systemui/qs/QSPanelController;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSAnimator;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    return-object p0
.end method

.method private animateBrightnessSlider(Lcom/android/systemui/qs/TouchAnimator$Builder;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getBrightnessView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getBrightnessView()Landroid/view/View;

    move-result-object v1

    const-string v2, "sliderScaleY"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "translationY"

    const/4 v7, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSAnimator;->getRelativeTranslationY(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    new-instance v8, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v9, v7, [F

    fill-array-data v9, :array_0

    invoke-virtual {v8, v0, v2, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    new-array v2, v7, [F

    aput v3, v2, v5

    int-to-float p1, p1

    aput p1, v2, v4

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-array v1, v7, [F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v1, v5

    aput v3, v1, v4

    invoke-virtual {p1, v0, v6, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-instance p1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {p1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    const-string v3, "alpha"

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    new-array v1, v7, [F

    fill-array-data v1, :array_2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clearAnimationState()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    instance-of v5, v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->resetViewsHeights()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 4

    if-eq p2, p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSAnimator;->isAPage(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v2

    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, p1, v1

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/PagedTileLayout;

    if-nez v0, :cond_2

    aget v0, p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, p1, v2

    aget v0, p1, v1

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    aput v0, p1, v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getRelativeTranslationY(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, v0, p2, v2}, Lcom/android/systemui/qs/QSAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    aget p2, v1, p1

    aget p1, v0, p1

    sub-int/2addr p2, p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getOffsetTranslation()I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method private isAPage(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/android/systemui/qs/SideLabelTileLayout;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isIconInAnimatedRow(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mPagedLayout:Lcom/android/systemui/qs/PagedTileLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getColumnCount()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    add-int/2addr p0, v0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method private setCurrentPosition()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    return-void
.end method

.method private translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V
    .locals 6

    invoke-direct {p0, p6, p1, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v2, 0x1

    aget v3, p6, v2

    invoke-direct {p0, p6, p2, p3}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    aget p3, p6, v0

    aget p6, p6, v2

    sub-int/2addr p3, v1

    sub-int/2addr p3, p4

    const/4 p4, 0x2

    new-array v1, p4, [F

    const/4 v4, 0x0

    aput v4, v1, v0

    int-to-float v5, p3

    aput v5, v1, v2

    const-string v5, "translationX"

    invoke-virtual {p7, p1, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array v1, p4, [F

    neg-int p3, p3

    int-to-float p3, p3

    aput p3, v1, v0

    aput v4, v1, v2

    invoke-virtual {p7, p2, v5, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    sub-int/2addr p6, v3

    sub-int/2addr p6, p5

    new-array p3, p4, [F

    aput v4, p3, v0

    int-to-float p5, p6

    aput p5, p3, v2

    const-string p5, "translationY"

    invoke-virtual {p8, p1, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    new-array p3, p4, [F

    neg-int p4, p6

    int-to-float p4, p4

    aput p4, p3, v0

    aput v4, p3, v2

    invoke-virtual {p8, p2, p5, p3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-object p3, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateAnimators()V
    .registers 41

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "z":Z
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    move-object/from16 v2, p0

    .line 104
    .local v2, "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    move-object/from16 v12, p0

    iget-object v3, v12, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/systemui/qs/SideLabelTileLayout;

    .line 105
    .local v13, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    const/4 v14, 0x0

    .line 106
    .local v14, "offsetTranslation":I
    move-object/from16 v3, p0

    .line 107
    .local v3, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    const/4 v15, 0x0

    iput-boolean v15, v3, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 108
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object v11, v4

    .line 109
    .local v11, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object v10, v4

    .line 110
    .local v10, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    move-object v9, v4

    .line 111
    .local v9, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v16

    .line 112
    .local v16, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 113
    .local v7, "iArr":[I
    new-array v6, v8, [I

    .line 114
    .local v6, "iArr2":[I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    .line 115
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 117
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 118
    iput-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 119
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/qs/QSAnimator;->mNumQuickTiles:I

    .line 120
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanelController;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v5

    .line 121
    .local v5, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object v15, v5

    check-cast v15, Landroid/view/View;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6d

    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    iget-object v15, v3, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v15}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v4, v15

    iget-object v15, v3, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v15}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v4, v15

    .line 123
    .local v4, "measuredHeight":I
    iget-boolean v15, v3, Lcom/android/systemui/qs/QSAnimator;->mTranslateWhileExpanding:Z

    if-nez v15, :cond_91

    .line 124
    int-to-float v15, v4

    const v18, 0x3dcccccd    # 0.1f

    mul-float v15, v15, v18

    float-to-int v4, v15

    move v15, v4

    goto :goto_92

    .line 123
    :cond_91
    move v15, v4

    .line 126
    .end local v4    # "measuredHeight":I
    .local v15, "measuredHeight":I
    :goto_92
    const-string/jumbo v4, "translationY"

    .line 127
    .local v4, "str":Ljava/lang/String;
    move/from16 v18, v0

    .end local v0    # "z":Z
    .local v18, "z":Z
    new-array v0, v8, [F

    int-to-float v8, v15

    const/16 v17, 0x0

    aput v8, v0, v17

    const/4 v8, 0x1

    const/16 v20, 0x0

    aput v20, v0, v8

    invoke-virtual {v11, v5, v4, v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 128
    const-string v0, "alpha"

    .line 129
    .local v0, "str2":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSPanelController;->areThereTiles()Z

    move-result v8

    move/from16 v22, v1

    .end local v1    # "i":I
    .local v22, "i":I
    if-eqz v8, :cond_46a

    .line 130
    const/4 v8, 0x0

    .line 131
    .local v8, "i2":I
    const/16 v23, 0x0

    .line 132
    .local v23, "i3":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move/from16 v1, v23

    move/from16 v39, v8

    move-object v8, v3

    move/from16 v3, v39

    .end local v23    # "i3":I
    .local v1, "i3":I
    .local v3, "i2":I
    .local v8, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    :goto_c0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_451

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v2

    .end local v2    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .local v26, "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    move-object/from16 v2, v25

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 133
    .local v2, "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    move-object/from16 v25, v5

    .end local v5    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v25, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    iget-object v5, v8, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/QSPanelController;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v5

    .line 134
    .local v5, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    if-nez v5, :cond_10d

    .line 135
    move-object/from16 v27, v11

    .end local v11    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v27, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tileView is null "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "QSAnimator"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v36, v9

    move-object v11, v10

    move-object v12, v13

    move/from16 v34, v14

    move-object/from16 v2, v26

    move-object/from16 v5, v27

    const/16 v17, 0x0

    const/16 v27, 0x1

    move-object v14, v4

    move-object v4, v6

    move-object v13, v8

    move-object v8, v7

    goto/16 :goto_440

    .line 138
    .end local v27    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v11    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_10d
    move-object/from16 v27, v11

    .end local v11    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v27    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v12

    .line 139
    .local v12, "iconView":Landroid/view/View;
    iget-object v11, v8, Lcom/android/systemui/qs/QSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v11}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v11

    .line 140
    .local v11, "view":Landroid/view/View;
    nop

    .line 141
    move/from16 v28, v3

    .end local v3    # "i2":I
    .local v28, "i2":I
    iget-object v3, v8, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanelController;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getNumVisibleTiles()I

    move-result v3

    if-ge v1, v3, :cond_318

    iget-boolean v3, v8, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez v3, :cond_14b

    move-object/from16 v32, v2

    move-object/from16 v35, v6

    move-object/from16 v33, v7

    move-object/from16 v19, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v21, v12

    move-object/from16 v30, v13

    move/from16 v34, v14

    const/4 v12, 0x2

    move-object v14, v4

    move-object v6, v5

    move-object/from16 v5, v27

    move-object/from16 v27, v11

    goto/16 :goto_331

    .line 186
    :cond_14b
    iget-object v3, v8, Lcom/android/systemui/qs/QSAnimator;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/QuickQSPanelController;->getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v3

    .line 187
    .local v3, "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    if-eqz v3, :cond_2e8

    .line 188
    invoke-direct {v8, v7, v3, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 189
    invoke-direct {v8, v6, v5, v11}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 190
    const/16 v21, 0x1

    aget v29, v6, v21

    aget v30, v7, v21

    sub-int v29, v29, v30

    .line 191
    .local v29, "i4":I
    const/16 v17, 0x0

    aget v30, v6, v17

    aget v31, v7, v17

    move-object/from16 v32, v2

    .end local v2    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .local v32, "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    sub-int v2, v30, v31

    .line 192
    .local v2, "i5":I
    move-object/from16 v19, v6

    move-object/from16 v30, v13

    const/4 v13, 0x2

    .end local v6    # "iArr2":[I
    .end local v13    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v19, "iArr2":[I
    .local v30, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    new-array v6, v13, [F

    aput v20, v6, v17

    iget-object v13, v8, Lcom/android/systemui/qs/QSAnimator;->mQuickStatusBarHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getOffsetTranslation()I

    move-result v13

    sub-int v13, v29, v13

    int-to-float v13, v13

    const/16 v21, 0x1

    aput v13, v6, v21

    invoke-virtual {v10, v3, v4, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 193
    const/4 v13, 0x2

    new-array v6, v13, [F

    neg-int v13, v14

    int-to-float v13, v13

    aput v13, v6, v17

    aput v20, v6, v21

    invoke-virtual {v10, v5, v4, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 194
    const/4 v13, 0x2

    new-array v6, v13, [F

    aput v20, v6, v17

    int-to-float v13, v2

    aput v13, v6, v21

    const-string/jumbo v13, "translationX"

    invoke-virtual {v9, v3, v13, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 195
    move-object/from16 v31, v4

    const/4 v6, 0x2

    .end local v4    # "str":Ljava/lang/String;
    .local v31, "str":Ljava/lang/String;
    new-array v4, v6, [F

    neg-int v6, v2

    int-to-float v6, v6

    aput v6, v4, v17

    aput v20, v4, v21

    invoke-virtual {v9, v5, v13, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 196
    iget-object v4, v8, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-nez v4, :cond_1c5

    .line 197
    new-instance v4, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v13

    invoke-direct {v4, v8, v6, v13}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    iput-object v4, v8, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 198
    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v4

    move/from16 v28, v4

    .line 200
    :cond_1c5
    iget-object v4, v8, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->addView(Landroid/view/View;)V

    .line 201
    nop

    .line 202
    nop

    .line 203
    nop

    .line 206
    sget v4, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v4, :cond_205

    .line 207
    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v6

    move-object v13, v3

    .end local v3    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v13, "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    move-object/from16 v3, p0

    move/from16 v34, v14

    move-object/from16 v14, v31

    .end local v31    # "str":Ljava/lang/String;
    .local v14, "str":Ljava/lang/String;
    .local v34, "offsetTranslation":I
    move-object/from16 v31, v5

    .end local v5    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v31, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    move-object v5, v6

    move-object/from16 v35, v19

    const/16 v19, 0x2

    .end local v19    # "iArr2":[I
    .local v35, "iArr2":[I
    move-object v6, v11

    move-object/from16 v33, v7

    .end local v7    # "iArr":[I
    .local v33, "iArr":[I
    move v7, v2

    move-object/from16 v21, v12

    move/from16 v12, v19

    move-object/from16 v19, v8

    .end local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v12    # "iconView":Landroid/view/View;
    .local v19, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .local v21, "iconView":Landroid/view/View;
    move/from16 v8, v29

    move-object/from16 v36, v9

    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v36, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v9, v33

    move-object/from16 v37, v10

    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v37, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v10, v36

    move-object/from16 v38, v27

    move-object/from16 v27, v11

    .end local v11    # "view":Landroid/view/View;
    .local v27, "view":Landroid/view/View;
    .local v38, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v11, v37

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    goto :goto_235

    .line 209
    .end local v13    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v21    # "iconView":Landroid/view/View;
    .end local v33    # "iArr":[I
    .end local v34    # "offsetTranslation":I
    .end local v35    # "iArr2":[I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v38    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v3    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .restart local v5    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .restart local v7    # "iArr":[I
    .restart local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "iconView":Landroid/view/View;
    .local v14, "offsetTranslation":I
    .local v19, "iArr2":[I
    .local v27, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v31, "str":Ljava/lang/String;
    :cond_205
    move-object v13, v3

    move-object/from16 v33, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v21, v12

    move/from16 v34, v14

    move-object/from16 v35, v19

    move-object/from16 v38, v27

    move-object/from16 v14, v31

    const/4 v12, 0x2

    move-object/from16 v31, v5

    move-object/from16 v19, v8

    move-object/from16 v27, v11

    .end local v3    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v5    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v7    # "iArr":[I
    .end local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "iconView":Landroid/view/View;
    .restart local v13    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v14, "str":Ljava/lang/String;
    .local v19, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v21    # "iconView":Landroid/view/View;
    .local v27, "view":Landroid/view/View;
    .local v31, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .restart local v33    # "iArr":[I
    .restart local v34    # "offsetTranslation":I
    .restart local v35    # "iArr2":[I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v38    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/plugins/qs/QSTileView;->getIconWithBackground()Landroid/view/View;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, v27

    move v7, v2

    move/from16 v8, v29

    move-object/from16 v9, v33

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 211
    :goto_235
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v6, v27

    move v7, v2

    move/from16 v8, v29

    move-object/from16 v9, v33

    move-object/from16 v10, v36

    move-object/from16 v11, v37

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 212
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryIcon()Landroid/view/View;

    move-result-object v5

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/qs/QSAnimator;->translateContent(Landroid/view/View;Landroid/view/View;Landroid/view/View;II[ILcom/android/systemui/qs/TouchAnimator$Builder;Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 215
    sget v3, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v3, :cond_26b

    .line 216
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v3

    new-array v4, v12, [F

    fill-array-data v4, :array_586

    move-object/from16 v5, v38

    .end local v38    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v5, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v5, v3, v0, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_2a1

    .line 218
    .end local v5    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v38    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_26b
    move-object/from16 v5, v38

    .end local v38    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v5    # "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabel()Landroid/view/View;

    move-result-object v3

    new-array v4, v12, [F

    sget-boolean v6, Lcom/android/mwilky/Renovate;->mQQsLabel:Z

    if-eqz v6, :cond_27a

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_27c

    :cond_27a
    move/from16 v6, v20

    :goto_27c
    const/4 v7, 0x0

    aput v6, v4, v7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-virtual {v5, v3, v0, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 219
    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v3

    new-array v4, v12, [F

    sget-boolean v6, Lcom/android/mwilky/Renovate;->mQQsSecondaryLabel:Z

    if-eqz v6, :cond_294

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_296

    :cond_294
    move/from16 v6, v20

    :goto_296
    const/4 v7, 0x0

    aput v6, v4, v7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-virtual {v5, v3, v0, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 222
    :goto_2a1
    move-object/from16 v3, p0

    .line 223
    .end local v26    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .local v3, "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    move-object/from16 v6, v31

    .end local v31    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v6, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget v4, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v4, :cond_2bd

    .line 226
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2cf

    .line 228
    :cond_2bd
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabelContainer()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v4, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_2cf
    nop

    .line 232
    nop

    .line 233
    move/from16 v22, v1

    move-object v2, v3

    move-object/from16 v7, v21

    move-object/from16 v9, v27

    move/from16 v3, v28

    move-object/from16 v12, v30

    move-object/from16 v8, v33

    move-object/from16 v4, v35

    move-object/from16 v11, v37

    const/16 v17, 0x0

    const/16 v27, 0x1

    goto/16 :goto_435

    .line 187
    .end local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v21    # "iconView":Landroid/view/View;
    .end local v29    # "i4":I
    .end local v30    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .end local v32    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v33    # "iArr":[I
    .end local v34    # "offsetTranslation":I
    .end local v35    # "iArr2":[I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v2, "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .local v3, "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .restart local v4    # "str":Ljava/lang/String;
    .local v5, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v6, "iArr2":[I
    .restart local v7    # "iArr":[I
    .restart local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "iconView":Landroid/view/View;
    .local v13, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "offsetTranslation":I
    .restart local v26    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .local v27, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_2e8
    move-object/from16 v32, v2

    move-object/from16 v35, v6

    move-object/from16 v33, v7

    move-object/from16 v19, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v21, v12

    move-object/from16 v30, v13

    move/from16 v34, v14

    const/4 v12, 0x2

    move-object v13, v3

    move-object v14, v4

    move-object v6, v5

    move-object/from16 v5, v27

    move-object/from16 v27, v11

    .end local v2    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v3    # "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v4    # "str":Ljava/lang/String;
    .end local v7    # "iArr":[I
    .end local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "iconView":Landroid/view/View;
    .local v5, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v6, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v13, "tileView2":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v14, "str":Ljava/lang/String;
    .restart local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v21    # "iconView":Landroid/view/View;
    .local v27, "view":Landroid/view/View;
    .restart local v30    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .restart local v32    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v33    # "iArr":[I
    .restart local v34    # "offsetTranslation":I
    .restart local v35    # "iArr2":[I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v7, v21

    move-object/from16 v2, v26

    move-object/from16 v9, v27

    move/from16 v3, v28

    move-object/from16 v12, v30

    move-object/from16 v8, v33

    move-object/from16 v4, v35

    move-object/from16 v11, v37

    const/16 v17, 0x0

    const/16 v27, 0x1

    goto/16 :goto_435

    .line 141
    .end local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v21    # "iconView":Landroid/view/View;
    .end local v30    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .end local v32    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v33    # "iArr":[I
    .end local v34    # "offsetTranslation":I
    .end local v35    # "iArr2":[I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v2    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v4    # "str":Ljava/lang/String;
    .local v5, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v6, "iArr2":[I
    .restart local v7    # "iArr":[I
    .restart local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "iconView":Landroid/view/View;
    .local v13, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "offsetTranslation":I
    .local v27, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_318
    move-object/from16 v32, v2

    move-object/from16 v35, v6

    move-object/from16 v33, v7

    move-object/from16 v19, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object/from16 v21, v12

    move-object/from16 v30, v13

    move/from16 v34, v14

    const/4 v12, 0x2

    move-object v14, v4

    move-object v6, v5

    move-object/from16 v5, v27

    move-object/from16 v27, v11

    .line 142
    .end local v2    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v4    # "str":Ljava/lang/String;
    .end local v7    # "iArr":[I
    .end local v8    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "iconView":Landroid/view/View;
    .end local v13    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v5, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v6, "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .local v14, "str":Ljava/lang/String;
    .restart local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v21    # "iconView":Landroid/view/View;
    .local v27, "view":Landroid/view/View;
    .restart local v30    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .restart local v32    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .restart local v33    # "iArr":[I
    .restart local v34    # "offsetTranslation":I
    .restart local v35    # "iArr2":[I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :goto_331
    nop

    .line 143
    nop

    .line 144
    move-object/from16 v2, v19

    .line 145
    .end local v26    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .local v2, "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    nop

    .line 146
    iget-boolean v3, v2, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    if-eqz v3, :cond_35b

    .line 147
    move v3, v1

    .line 148
    .end local v22    # "i":I
    .local v3, "i":I
    invoke-direct {v2, v3}, Lcom/android/systemui/qs/QSAnimator;->isIconInAnimatedRow(I)Z

    move-result v4

    if-eqz v4, :cond_358

    .line 149
    nop

    .line 150
    nop

    .line 151
    new-array v4, v12, [F

    neg-int v7, v15

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v4, v8

    const/4 v7, 0x1

    aput v20, v4, v7

    invoke-virtual {v5, v6, v14, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 152
    iget-object v4, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    move-object/from16 v7, v21

    .end local v21    # "iconView":Landroid/view/View;
    .local v7, "iconView":Landroid/view/View;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35f

    .line 154
    .end local v7    # "iconView":Landroid/view/View;
    .restart local v21    # "iconView":Landroid/view/View;
    :cond_358
    move-object/from16 v7, v21

    .line 155
    .end local v21    # "iconView":Landroid/view/View;
    .restart local v7    # "iconView":Landroid/view/View;
    goto :goto_35f

    .line 158
    .end local v3    # "i":I
    .end local v7    # "iconView":Landroid/view/View;
    .restart local v21    # "iconView":Landroid/view/View;
    .restart local v22    # "i":I
    :cond_35b
    move-object/from16 v7, v21

    .line 159
    .end local v21    # "iconView":Landroid/view/View;
    .restart local v7    # "iconView":Landroid/view/View;
    nop

    .line 160
    move v3, v1

    .line 162
    .end local v22    # "i":I
    .restart local v3    # "i":I
    :goto_35f
    iget-object v4, v2, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/SideLabelTileLayout;

    move-object/from16 v9, v27

    move-object/from16 v8, v33

    .end local v27    # "view":Landroid/view/View;
    .end local v33    # "iArr":[I
    .local v8, "iArr":[I
    .local v9, "view":Landroid/view/View;
    invoke-direct {v2, v8, v4, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 163
    nop

    .line 164
    move-object/from16 v4, v35

    .end local v35    # "iArr2":[I
    .local v4, "iArr2":[I
    invoke-direct {v2, v4, v6, v9}, Lcom/android/systemui/qs/QSAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 165
    const/16 v18, 0x0

    .line 166
    new-array v10, v12, [F

    const/4 v11, 0x1

    aget v13, v4, v11

    aget v21, v8, v11

    move-object/from16 v12, v30

    .end local v30    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v12, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    invoke-virtual {v12, v3}, Lcom/android/systemui/qs/SideLabelTileLayout;->getPhantomTopPosition(I)I

    move-result v22

    add-int v21, v21, v22

    sub-int v13, v13, v21

    neg-int v13, v13

    int-to-float v13, v13

    const/16 v17, 0x0

    aput v13, v10, v17

    aput v20, v10, v11

    move-object/from16 v11, v37

    .end local v37    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v11, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v11, v6, v14, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 167
    iget-object v10, v2, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-nez v10, :cond_3a8

    .line 168
    new-instance v10, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getMeasuredHeight()I

    move-result v13

    move/from16 v21, v1

    move/from16 v1, v28

    .end local v28    # "i2":I
    .local v1, "i2":I
    .local v21, "i3":I
    invoke-direct {v10, v2, v1, v13}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;-><init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V

    iput-object v10, v2, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    goto :goto_3ac

    .line 167
    .end local v21    # "i3":I
    .local v1, "i3":I
    .restart local v28    # "i2":I
    :cond_3a8
    move/from16 v21, v1

    move/from16 v1, v28

    .line 170
    .end local v28    # "i2":I
    .local v1, "i2":I
    .restart local v21    # "i3":I
    :goto_3ac
    iget-object v10, v2, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    invoke-virtual {v10, v6}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->addView(Landroid/view/View;)V

    .line 171
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/android/systemui/plugins/qs/QSTileView;->setClipChildren(Z)V

    .line 172
    invoke-virtual {v6, v10}, Lcom/android/systemui/plugins/qs/QSTileView;->setClipToPadding(Z)V

    .line 173
    sget v10, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v10, :cond_3d9

    .line 174
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v10

    move/from16 v28, v1

    const/4 v13, 0x2

    .end local v1    # "i2":I
    .restart local v28    # "i2":I
    new-array v1, v13, [F

    fill-array-data v1, :array_58e

    invoke-virtual {v5, v10, v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 175
    iget-object v1, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    const/16 v27, 0x1

    goto :goto_427

    .line 177
    .end local v28    # "i2":I
    .restart local v1    # "i2":I
    :cond_3d9
    move/from16 v28, v1

    const/4 v13, 0x2

    .end local v1    # "i2":I
    .restart local v28    # "i2":I
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabel()Landroid/view/View;

    move-result-object v1

    new-array v10, v13, [F

    sget-boolean v13, Lcom/android/mwilky/Renovate;->mQQsLabel:Z

    if-eqz v13, :cond_3e9

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_3eb

    :cond_3e9
    move/from16 v13, v20

    :goto_3eb
    const/16 v17, 0x0

    aput v13, v10, v17

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    aput v13, v10, v22

    invoke-virtual {v5, v1, v0, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 178
    iget-object v1, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getLabel()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v1

    const/4 v10, 0x2

    new-array v13, v10, [F

    sget-boolean v10, Lcom/android/mwilky/Renovate;->mQQsSecondaryLabel:Z

    if-eqz v10, :cond_40f

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_411

    :cond_40f
    move/from16 v10, v20

    :goto_411
    const/16 v17, 0x0

    aput v10, v13, v17

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v27, 0x1

    aput v10, v13, v27

    invoke-virtual {v5, v1, v0, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 180
    iget-object v1, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/systemui/plugins/qs/QSTileView;->getSecondaryLabel()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_427
    iget-object v1, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v3, 0x1

    .line 184
    .end local v21    # "i3":I
    .local v1, "i3":I
    move-object v10, v2

    move/from16 v22, v3

    move-object/from16 v19, v10

    move/from16 v3, v28

    .line 236
    .end local v28    # "i2":I
    .local v3, "i2":I
    .restart local v22    # "i":I
    :goto_435
    const/4 v10, 0x0

    .line 237
    .end local v18    # "z":Z
    .local v10, "z":Z
    iget-object v13, v2, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v1, v22, 0x1

    .line 239
    move-object v13, v2

    move/from16 v18, v10

    .line 241
    .end local v6    # "tileView":Lcom/android/systemui/plugins/qs/QSTileView;
    .end local v7    # "iconView":Landroid/view/View;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "z":Z
    .end local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v32    # "qSTile":Lcom/android/systemui/plugins/qs/QSTile;
    .local v13, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v18    # "z":Z
    :goto_440
    move-object v6, v4

    move-object v7, v8

    move-object v10, v11

    move-object v8, v13

    move-object v4, v14

    move/from16 v14, v34

    move-object/from16 v9, v36

    move-object v11, v5

    move-object v13, v12

    move-object/from16 v5, v25

    move-object/from16 v12, p0

    goto/16 :goto_c0

    .line 132
    .end local v12    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .end local v25    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .end local v34    # "offsetTranslation":I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v4, "str":Ljava/lang/String;
    .local v5, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .local v6, "iArr2":[I
    .local v7, "iArr":[I
    .local v8, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .local v9, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v10, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v11, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v13, "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "offsetTranslation":I
    :cond_451
    move/from16 v21, v1

    move-object/from16 v26, v2

    move/from16 v28, v3

    move-object/from16 v25, v5

    move-object/from16 v19, v8

    move-object/from16 v36, v9

    move-object v5, v11

    move-object v12, v13

    move/from16 v34, v14

    move-object v14, v4

    move-object v4, v6

    move-object v8, v7

    move-object v11, v10

    .end local v1    # "i3":I
    .end local v2    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .end local v3    # "i2":I
    .end local v6    # "iArr2":[I
    .end local v7    # "iArr":[I
    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v13    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v4, "iArr2":[I
    .local v5, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v8, "iArr":[I
    .local v11, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v12    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "str":Ljava/lang/String;
    .restart local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .restart local v21    # "i3":I
    .restart local v25    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v26    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .restart local v28    # "i2":I
    .restart local v34    # "offsetTranslation":I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move-object/from16 v3, v19

    move/from16 v1, v22

    goto :goto_478

    .line 129
    .end local v8    # "iArr":[I
    .end local v12    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .end local v19    # "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .end local v21    # "i3":I
    .end local v25    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .end local v26    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .end local v28    # "i2":I
    .end local v34    # "offsetTranslation":I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v2    # "qSAnimator":Lcom/android/systemui/qs/QSAnimator;
    .local v3, "qSAnimator2":Lcom/android/systemui/qs/QSAnimator;
    .local v4, "str":Ljava/lang/String;
    .local v5, "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v6    # "iArr2":[I
    .restart local v7    # "iArr":[I
    .restart local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v11, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v13    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "offsetTranslation":I
    :cond_46a
    move-object/from16 v25, v5

    move-object v8, v7

    move-object/from16 v36, v9

    move-object v5, v11

    move-object v12, v13

    move/from16 v34, v14

    move-object v14, v4

    move-object v4, v6

    move-object v11, v10

    .end local v6    # "iArr2":[I
    .end local v7    # "iArr":[I
    .end local v9    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v10    # "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v13    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v4, "iArr2":[I
    .local v5, "firstPageBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v8    # "iArr":[I
    .local v11, "translationYBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v12    # "sideLabelTileLayout":Lcom/android/systemui/qs/SideLabelTileLayout;
    .local v14, "str":Ljava/lang/String;
    .restart local v25    # "tileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .restart local v34    # "offsetTranslation":I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    move/from16 v1, v22

    .line 243
    .end local v22    # "i":I
    .local v1, "i":I
    :goto_478
    iget-boolean v6, v3, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v6, :cond_540

    .line 244
    invoke-direct {v3, v5}, Lcom/android/systemui/qs/QSAnimator;->animateBrightnessSlider(Lcom/android/systemui/qs/TouchAnimator$Builder;)V

    .line 245
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v3, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 247
    move-object/from16 v6, v25

    .line 248
    .local v6, "qSTileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/4 v9, 0x2

    new-array v10, v9, [F

    fill-array-data v10, :array_596

    invoke-virtual {v7, v6, v0, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v7

    iput-object v7, v3, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 249
    iget-object v7, v3, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActions:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v9, 0x8

    if-eq v7, v9, :cond_4ad

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSFooterAnimation()V

    .line 252
    :cond_4ad
    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v9, 0x3f5c28f6    # 0.86f

    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v7

    .line 253
    .local v7, "startDelay":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    new-array v13, v10, [F

    fill-array-data v13, :array_59e

    invoke-virtual {v7, v9, v0, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 254
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSPanelController;->shouldUseHorizontalLayout()Z

    move-result v9

    if-eqz v9, :cond_4e4

    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanelController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v9, v9, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-object v10, v9

    .local v10, "uniqueObjectHostView":Lcom/android/systemui/util/animation/UniqueObjectHostView;
    if-nez v9, :cond_4da

    goto :goto_4e4

    .line 257
    :cond_4da
    const/4 v9, 0x2

    new-array v13, v9, [F

    fill-array-data v13, :array_5a6

    invoke-virtual {v7, v10, v0, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    goto :goto_4ef

    .line 255
    .end local v10    # "uniqueObjectHostView":Lcom/android/systemui/util/animation/UniqueObjectHostView;
    :cond_4e4
    :goto_4e4
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v9, v9, Lcom/android/systemui/qs/QSPanelController;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v9, v9, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->setAlpha(F)V

    .line 259
    :goto_4ef
    invoke-virtual {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v9

    iput-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 260
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mAllViews:Ljava/util/ArrayList;

    iget-object v10, v3, Lcom/android/systemui/qs/QSAnimator;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 262
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object/from16 v10, v36

    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .local v10, "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 263
    invoke-virtual {v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v9

    iput-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 264
    invoke-virtual {v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v9

    iput-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 265
    iget-object v9, v3, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 266
    .local v9, "heightExpansionAnimator":Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    if-eqz v9, :cond_52d

    .line 267
    iget-object v13, v3, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v13}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    :cond_52d
    iget-object v13, v3, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    .line 270
    .local v13, "heightExpansionAnimator2":Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    if-eqz v13, :cond_53d

    .line 271
    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    iget-object v1, v3, Lcom/android/systemui/qs/QSAnimator;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->getYInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_53f

    .line 270
    .end local v17    # "i":I
    .restart local v1    # "i":I
    :cond_53d
    move/from16 v17, v1

    .line 273
    .end local v1    # "i":I
    .end local v7    # "startDelay":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v9    # "heightExpansionAnimator":Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    .end local v13    # "heightExpansionAnimator2":Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
    .restart local v17    # "i":I
    :goto_53f
    goto :goto_546

    .line 274
    .end local v6    # "qSTileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .end local v10    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v17    # "i":I
    .restart local v1    # "i":I
    .restart local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    :cond_540
    move/from16 v17, v1

    move-object/from16 v10, v36

    .end local v1    # "i":I
    .end local v36    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v10    # "translationXBuilder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .restart local v17    # "i":I
    move-object/from16 v6, v25

    .line 276
    .restart local v6    # "qSTileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    :goto_546
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, v3, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v9, 0x2

    new-array v13, v9, [F

    fill-array-data v13, :array_5ae

    invoke-virtual {v1, v7, v0, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    iget-object v7, v3, Lcom/android/systemui/qs/QSAnimator;->mNonFirstPageListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v3, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 277
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const v7, 0x3e0f5c29    # 0.14f

    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_5b6

    invoke-virtual {v1, v6, v0, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v3, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 278
    return-void

    :array_586
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_58e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_596
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_59e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5a6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5ae
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5b6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateQQSFooterAnimation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQSFooterActions:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActions:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSAnimator;->getRelativeTranslationY(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActions:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    const-string v0, "translationY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActionsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQSFooterActions:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateQQSVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStarted()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSAnimator;->mAnimatedQsViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    return-void
.end method

.method public onRtlChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mUpdateAnimators:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sysui_qs_fancy_anim"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    goto :goto_0

    :cond_0
    const-string v0, "sysui_qs_move_whole_rows"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2, v1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mFullRows:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_qs_fancy_anim"

    const-string v1, "sysui_qs_move_whole_rows"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public requestAnimatorUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateAnimators()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnKeyguard:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v1

    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSAnimator;->mLastPosition:F

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOnFirstPage:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mFirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslationXAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSTileHeightAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mOtherTilesExpandAnimator:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->setPosition(F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mNonfirstPageDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllowFancy:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mAllPagesDelayedAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSAnimator;->mBrightnessAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQQSFooterActionsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_8
    return-void
.end method

.method setShowCollapsedOnKeyguard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mShowCollapsedOnKeyguard:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->updateQQSVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSAnimator;->setCurrentPosition()V

    return-void
.end method

.method public setTranslateWhileExpanding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSAnimator;->mTranslateWhileExpanding:Z

    return-void
.end method
