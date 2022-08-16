.class public Landroidx/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;,
        Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;,
        Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;,
        Landroidx/leanback/widget/BaseCardView$AnimationBase;,
        Landroidx/leanback/widget/BaseCardView$LayoutParams;
    }
.end annotation


# static fields
.field public static final LB_PRESSED_STATE_SET:[I


# instance fields
.field public final mActivatedAnimDuration:I

.field public mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

.field public final mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

.field public mCardType:I

.field public mDelaySelectedAnim:Z

.field public mExtraViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mInfoAlpha:F

.field public mInfoOffset:F

.field public mInfoViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mInfoVisFraction:F

.field public mInfoVisibility:I

.field public mMainViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mMeasuredHeight:I

.field public mMeasuredWidth:I

.field public final mSelectedAnimDuration:I

.field public mSelectedAnimationDelay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040064

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidx/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$1;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    sget-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v0, 0x6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean p3, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v0, p2, :cond_2

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-ne v0, p3, :cond_3

    iget p3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne p3, p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final animateInfoOffset(Z)V
    .locals 6

    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :cond_1
    new-instance v1, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;

    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    if-eqz p1, :cond_2

    int-to-float p1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v1, p0, v2, p1}, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$2;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final cancelAnimations()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroidx/leanback/widget/BaseCardView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p1, :cond_2

    aget v3, p0, v0

    const v4, 0x10100a7

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v1, v5

    :cond_0
    const v4, 0x101009e

    if-ne v3, v4, :cond_1

    move v2, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    sget-object p0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    sget-object p0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    return-object p0

    :cond_4
    if-eqz v2, :cond_5

    sget-object p0, Landroid/view/View;->ENABLED_STATE_SET:[I

    return-object p0

    :cond_5
    sget-object p0, Landroid/view/View;->EMPTY_STATE_SET:[I

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    float-to-int v6, v1

    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    move v6, v2

    move v7, v3

    :goto_2
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-ne v6, v4, :cond_4

    sub-float/2addr v1, v7

    cmpg-float v6, v1, v3

    if-gez v6, :cond_6

    move v1, v3

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v6, v8, :cond_6

    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v7, v6

    goto :goto_3

    :cond_5
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    sub-float/2addr v1, v6

    :cond_6
    :goto_3
    move v6, v2

    :goto_4
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_9

    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v5, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v10, v9

    cmpl-float v10, v10, v7

    if-lez v10, :cond_7

    float-to-int v9, v7

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v10

    float-to-int v11, v1

    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v12

    int-to-float v9, v9

    add-float/2addr v1, v9

    float-to-int v12, v1

    invoke-virtual {v8, v10, v11, v13, v12}, Landroid/view/View;->layout(IIII)V

    sub-float/2addr v7, v9

    cmpg-float v8, v7, v3

    if-gtz v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a

    goto :goto_6

    :cond_a
    move v4, v2

    :goto_6
    if-eqz v4, :cond_c

    move v3, v2

    :goto_7
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    float-to-int v7, v1

    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    float-to-int v8, v8

    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    sub-int v1, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {p0, v2, v2, v1, v3}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_6

    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v7, :cond_3

    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    move v5, v4

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    if-eqz v5, :cond_8

    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    move v5, v4

    goto :goto_6

    :cond_8
    move v5, v1

    :goto_6
    move v9, v1

    :goto_7
    const/16 v10, 0x8

    if-ge v9, v2, :cond_e

    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    iget v12, v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    if-ne v12, v4, :cond_b

    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_a

    move v10, v1

    :cond_a
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_b
    if-ne v12, v7, :cond_d

    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_c

    move v10, v1

    :cond_c
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_d
    iget-object v10, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v1

    move v5, v3

    move v9, v5

    :goto_9
    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_10

    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_f

    invoke-virtual {p0, v11, v2, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v5, v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v9, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    div-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v11, :cond_11

    move v11, v4

    goto :goto_a

    :cond_11
    move v11, v1

    :goto_a
    if-eqz v11, :cond_18

    move v11, v1

    move v12, v11

    :goto_b
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_14

    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_13

    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget v14, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-eq v14, v4, :cond_12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v12

    move v12, v14

    :cond_12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_14
    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-ne v11, v8, :cond_15

    move v8, v4

    goto :goto_c

    :cond_15
    move v8, v1

    :goto_c
    if-eqz v8, :cond_17

    move v8, v1

    move v11, v8

    :goto_d
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_19

    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_16

    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v11, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_17
    move v11, v1

    goto :goto_e

    :cond_18
    move v11, v1

    move v12, v11

    :cond_19
    :goto_e
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    if-eqz v2, :cond_1a

    move v2, v4

    goto :goto_f

    :cond_1a
    move v2, v1

    :goto_f
    if-eqz v2, :cond_1b

    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v2, v7, :cond_1b

    move v1, v4

    :cond_1b
    int-to-float v2, v5

    int-to-float v3, v12

    if-eqz v1, :cond_1c

    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    mul-float/2addr v3, v4

    :cond_1c
    add-float/2addr v2, v3

    int-to-float v3, v11

    add-float/2addr v2, v3

    if-eqz v1, :cond_1d

    goto :goto_10

    :cond_1d
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    :goto_10
    sub-float/2addr v2, v6

    float-to-int v1, v2

    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v2, p1

    invoke-static {v1, v2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v3

    shl-int/lit8 v3, v9, 0x10

    move/from16 v4, p2

    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne p1, v0, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v0

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_4
    return-void
.end method

.method public final setInfoViewVisibility(Z)V
    .locals 6

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    if-eqz p1, :cond_0

    move p1, v3

    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_2

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iput v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    goto/16 :goto_8

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-ne v0, v5, :cond_9

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ne v0, v5, :cond_7

    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_4

    move v0, v3

    :goto_3
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    move v2, v4

    :cond_5
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    goto/16 :goto_8

    :cond_6
    new-instance p1, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-direct {p1, p0, v0, v2}, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$3;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$3;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_8

    :cond_7
    move v0, v3

    :goto_4
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz p1, :cond_8

    move v4, v3

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    if-eqz p1, :cond_a

    move v0, v3

    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    move v0, v4

    goto :goto_7

    :cond_b
    move v0, v2

    :goto_7
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    new-instance v0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    if-eqz p1, :cond_d

    move v2, v4

    :cond_d
    invoke-direct {v0, p0, v1, v2}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FF)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    new-instance v0, Landroidx/leanback/widget/BaseCardView$4;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$4;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$AnimationBase;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_e
    :goto_8
    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result p1

    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
