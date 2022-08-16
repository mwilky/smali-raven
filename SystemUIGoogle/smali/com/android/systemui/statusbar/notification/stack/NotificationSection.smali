.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
.super Ljava/lang/Object;
.source "NotificationSection.java"


# instance fields
.field public mBottomAnimator:Landroid/animation/ObjectAnimator;

.field public mBounds:Landroid/graphics/Rect;

.field public mBucket:I

.field public mCurrentBounds:Landroid/graphics/Rect;

.field public mEndAnimationRect:Landroid/graphics/Rect;

.field public mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mOwningView:Landroid/view/View;

.field public mStartAnimationRect:Landroid/graphics/Rect;

.field public mTopAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mStartAnimationRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mOwningView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBucket:I

    return-void
.end method


# virtual methods
.method public final updateBounds(IIZ)I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eq v5, v3, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ne v4, v3, :cond_2

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_1
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    move v3, p1

    goto :goto_2

    :cond_5
    move v3, p1

    move v4, v3

    :cond_6
    :goto_2
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p3, :cond_b

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    move-result v0

    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v0, :cond_9

    :cond_7
    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget v1, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    iget p3, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float p3, p3

    add-float/2addr v1, p3

    int-to-float p2, p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    :goto_4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_b
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->top:I

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    return p2
.end method
