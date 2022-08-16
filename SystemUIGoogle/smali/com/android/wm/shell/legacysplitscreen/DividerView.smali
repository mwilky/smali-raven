.class public Lcom/android/wm/shell/legacysplitscreen/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;
    }
.end annotation


# static fields
.field public static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public mAdjustedForIme:Z

.field public mBackground:Landroid/view/View;

.field public mBackgroundLifted:Z

.field public mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

.field public mCurrentAnimator:Landroid/animation/ValueAnimator;

.field public final mDefaultDisplay:Landroid/view/Display;

.field public mDividerInsets:I

.field public mDividerPositionX:I

.field public mDividerPositionY:I

.field public mDividerSize:I

.field public mDockSide:I

.field public final mDockedInsetRect:Landroid/graphics/Rect;

.field public final mDockedRect:Landroid/graphics/Rect;

.field public mDockedStackMinimized:Z

.field public final mDockedTaskRect:Landroid/graphics/Rect;

.field public mExitAnimationRunning:Z

.field public mExitStartPosition:I

.field public mFirstLayout:Z

.field public mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

.field public final mHandleDelegate:Lcom/android/wm/shell/legacysplitscreen/DividerView$1;

.field public mHomeStackResizable:Z

.field public mImeController:Lcom/android/wm/shell/legacysplitscreen/DividerImeController;

.field public mIsInMinimizeInteraction:Z

.field public final mLastResizeRect:Landroid/graphics/Rect;

.field public mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

.field public mMoving:Z

.field public final mOtherInsetRect:Landroid/graphics/Rect;

.field public final mOtherRect:Landroid/graphics/Rect;

.field public final mOtherTaskRect:Landroid/graphics/Rect;

.field public mRemoved:Z

.field public final mResetBackgroundRunnable:Lcom/android/wm/shell/legacysplitscreen/DividerView$2;

.field public mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

.field public mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field public mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

.field public mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

.field public mStartPosition:I

.field public mStartX:I

.field public mStartY:I

.field public mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

.field public mSurfaceHidden:Z

.field public mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTouchElevation:I

.field public mTouchSlop:I

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

.field public mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandleDelegate:Lcom/android/wm/shell/legacysplitscreen/DividerView$1;

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mResetBackgroundRunnable:Lcom/android/wm/shell/legacysplitscreen/DividerView$2;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p3, "display"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    add-int/2addr v1, p0

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final applyDismissingParallax(Landroid/graphics/Rect;III)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-gt p3, v2, :cond_0

    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    goto :goto_2

    :cond_0
    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p4

    iget p4, p4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p3, p4, :cond_3

    if-eq p2, v5, :cond_2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v4

    :goto_1
    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p4}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p4

    iget v2, p4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v9, v2

    move-object v2, p4

    move p4, v9

    goto :goto_2

    :cond_3
    move p4, v6

    move-object v2, v7

    :goto_2
    if-eqz v7, :cond_c

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    if-ne p2, v4, :cond_4

    goto :goto_3

    :cond_4
    iget v8, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p3, v8, :cond_6

    goto :goto_4

    :cond_5
    :goto_3
    iget v8, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p3, v8, :cond_6

    :goto_4
    move v6, v4

    :cond_6
    if-eqz v6, :cond_c

    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p3

    const/high16 v0, 0x40600000    # 3.5f

    div-float/2addr p3, v0

    if-ne p2, v1, :cond_7

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    :cond_7
    int-to-float p4, p4

    iget v0, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq p2, v4, :cond_b

    if-eq p2, v1, :cond_a

    if-eq p2, v3, :cond_9

    if-eq p2, v5, :cond_8

    goto :goto_5

    :cond_8
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    add-int/2addr p3, p0

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_9
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int p2, p3, p0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p4

    add-int/2addr p3, p0

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_a
    sub-int p0, p3, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_b
    sub-int p0, p3, p4

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_c
    :goto_5
    return-void
.end method

.method public final calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v5, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method public final getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Landroid/animation/ValueAnimator;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    :cond_1
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v2

    iget p1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    new-instance p2, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView$3;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;Lcom/android/wm/shell/legacysplitscreen/DividerView$$ExternalSyntheticLambda2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSfVsyncAnimationHandler:Landroid/animation/AnimationHandler;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    return-object p1
.end method

.method public final getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final isHorizontalDivision()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final notifySplitScreenBoundsChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mDockedRect:Landroid/graphics/Rect;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set touchable region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_5
    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mBoundsChangedListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    return-void
.end method

.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0226

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerHandleView;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const v0, 0x7f0b0225

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    const v0, 0x7f0b0411

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchElevation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(FLandroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v0, 0x3f6

    goto :goto_1

    :cond_1
    const/16 v0, 0x3f7

    :goto_1
    invoke-static {v2, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandleDelegate:Lcom/android/wm/shell/legacysplitscreen/DividerView$1;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p2

    iget p2, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->resizeSplits(I)Z

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-boolean p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {p5, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p5

    iget p5, p5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, v0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iput p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iput p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v3, p5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, p5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v2, p5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p5, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    const/4 p5, 0x0

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v1, p5

    invoke-direct {p2, p4, p5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v0, p5

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-direct {p2, p5, p4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    new-instance p5, Landroid/graphics/Region;

    invoke-direct {p5, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p5, p2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object v0, p2, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object p2, p2, Lcom/android/wm/shell/common/SystemWindows;->mViewRoots:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControlViewHost;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    move-result-object p2

    instance-of v1, p2, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    check-cast p2, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;

    invoke-virtual {p2, p5, v0}, Lcom/android/wm/shell/common/SystemWindows$SysUiWindowManager;->setTouchableRegionForWindow(Landroid/graphics/Region;Landroid/view/View;)V

    :goto_2
    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFirstLayout:Z

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 p5, 0x2

    if-ne p2, p5, :cond_6

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    goto :goto_4

    :cond_6
    if-ne p2, p3, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_3
    move v6, p4

    move p4, p2

    move p2, v6

    goto :goto_4

    :cond_7
    const/4 p3, 0x3

    if-ne p2, p3, :cond_8

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_3

    :cond_8
    move p2, p4

    :goto_4
    iget-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, p4, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->notifySplitScreenBoundsChanged()V

    :cond_9
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_6

    goto/16 :goto_8

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    if-gt v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchSlop:I

    if-le v2, v3, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    :cond_4
    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_5

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    sub-int p1, p2, p1

    :goto_1
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_8

    :cond_6
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->setResizing(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {p2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_8

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr p1, v4

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_8
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    sub-int p1, p2, p1

    :goto_2
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p2

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    :goto_3
    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v4, v1, v0}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    const/16 v6, 0x186

    if-ne v4, v5, :cond_a

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v3

    invoke-static {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto/16 :goto_7

    :cond_a
    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v5}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    if-ne v4, v5, :cond_d

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_c

    if-ne v5, v3, :cond_b

    goto :goto_4

    :cond_b
    move v3, v1

    goto :goto_5

    :cond_c
    :goto_4
    move v3, v0

    :goto_5
    invoke-static {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    const/16 v5, 0x185

    if-ne v4, v3, :cond_e

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_7

    :cond_e
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v4, v3, :cond_10

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    if-eqz v6, :cond_f

    move v2, v0

    :cond_f
    invoke-static {v3, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_7

    :cond_10
    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v3}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    if-ne v4, v3, :cond_12

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_6

    :cond_11
    move v2, v0

    :goto_6
    invoke-static {v3, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_12
    :goto_7
    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    int-to-float p1, p1

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v4, v4

    invoke-virtual {v3, v2, p1, v4, p2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/ValueAnimator;FFF)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    :cond_13
    :goto_8
    return v0

    :cond_14
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartY:I

    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->setResizing(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    :cond_15
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    if-eqz p2, :cond_16

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_9

    :cond_16
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    :goto_9
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMoving:Z

    return p1
.end method

.method public final releaseBackground()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method public final repositionSnapTargetBeforeMinimized()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method

.method public final resetBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    if-nez p5, :cond_1

    move-object p5, p4

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v1, v1

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    iget p3, p5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget v1, p5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p2, p5, Landroid/graphics/Rect;->left:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    neg-int p2, p2

    iget p3, p5, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    neg-int p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondarySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/SystemWindows;->getViewSurface(Landroid/view/View;)Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p0

    int-to-float p0, p3

    invoke-virtual {p1, p2, p4, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerInsets:I

    sub-int/2addr p3, p0

    int-to-float p0, p3

    invoke-virtual {p1, p2, p0, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    :goto_1
    return-void
.end method

.method public final resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v0, p2

    move-object/from16 v1, p3

    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mRemoved:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/4 v8, 0x0

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez p4, :cond_3

    move v11, v10

    goto :goto_0

    :cond_3
    move v11, v9

    :goto_0
    if-eqz v11, :cond_4

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_4
    move-object/from16 v12, p4

    :goto_1
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    const/4 v13, 0x3

    if-eqz v2, :cond_7

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-ne v0, v13, :cond_5

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    neg-int v1, v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v11, :cond_6

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6
    return-void

    :cond_7
    const/4 v14, 0x2

    const v2, 0x7fffffff

    iget-boolean v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitAnimationRunning:Z

    if-eqz v3, :cond_c

    if-eq v0, v2, :cond_c

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/high16 v2, 0x3e800000    # 0.25f

    if-ne v1, v14, :cond_8

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int v1, v7, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_8
    if-ne v1, v10, :cond_9

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int v1, v7, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_9
    if-ne v1, v13, :cond_a

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    sub-int/2addr v1, v7

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Rect;->offset(II)V

    :cond_a
    :goto_2
    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    if-ne v0, v13, :cond_b

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerSize:I

    add-int/2addr v1, v7

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Rect;->offset(II)V

    :cond_b
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_c
    if-eq v0, v2, :cond_e

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-virtual {v6, v0, v3, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v3

    invoke-virtual {v6, v0, v2, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v0

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v5, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-virtual {v1, v9, v9, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v9, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v1, v15

    invoke-virtual {v4, v5, v15, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_d
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v15, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v15, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v1, v9

    invoke-virtual {v4, v5, v9, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-virtual {v6, v1, v4, v7, v3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;III)V

    iget-object v1, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v7, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;III)V

    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v5, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_e
    iget-object v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mOtherRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v2, v10, :cond_f

    iget v2, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_f
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-ne v0, v14, :cond_13

    iget v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_11

    if-ne v0, v13, :cond_10

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    :goto_5
    move v0, v10

    :goto_6
    if-eqz v0, :cond_13

    :cond_12
    move v9, v10

    goto :goto_7

    :cond_13
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v6, v12, v9, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    if-eqz v11, :cond_14

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v6, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0, v12}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->releaseTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_14
    return-void
.end method

.method public final restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    iget p3, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mStartPosition:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public final saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mState:Lcom/android/wm/shell/legacysplitscreen/DividerState;

    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    iput p1, v0, Lcom/android/wm/shell/legacysplitscreen/DividerState;->mRatioPositionBeforeMinimized:F

    return-void
.end method

.method public final setAdjustedForIme(JZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mAdjustedForIme:Z

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/legacysplitscreen/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mResetBackgroundRunnable:Lcom/android/wm/shell/legacysplitscreen/DividerView$2;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mAdjustedForIme:Z

    return-void
.end method

.method public final setMinimizedDockStack(ZZLandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->updateDockSide()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resetBackground()V

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    if-eq p2, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockedStackMinimized:Z

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->repositionSnapTargetBeforeMinimized()V

    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_6

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHomeStackResizable:Z

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getMinimizedSnapAlgorithm(Z)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, p2, p2, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget p2, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, p2, p2, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeStackSurfaces(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mIsInMinimizeInteraction:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTiles:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimaryDim:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondaryDim:Landroid/view/SurfaceControl;

    :goto_0
    const p2, 0x3a83126f    # 0.001f

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    return-void
.end method

.method public final startDragging(ZZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->setResizing(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackgroundLifted:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p2

    const v1, 0x3fb33333    # 1.4f

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchElevation:I

    int-to-float v4, v4

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mBackgroundLifted:Z

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mCallback:Lcom/android/wm/shell/legacysplitscreen/DividerView$DividerCallbacks;

    if-eqz p2, :cond_5

    check-cast p2, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {p2}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->onDraggingStart()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, p1

    :goto_2
    return v0
.end method

.method public final stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJLandroid/view/animation/PathInterpolator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView;->setTouching(ZZ)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mWindowManager:Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->setSlippery(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->releaseBackground()V

    return-void
.end method

.method public final updateDockSide()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDockSide:I

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mMinimizedShadow:Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;->mDockSide:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;->mDockSide:I

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/legacysplitscreen/MinimizedDockShadow;->updatePaint(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
