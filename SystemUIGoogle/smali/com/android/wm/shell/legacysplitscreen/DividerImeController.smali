.class public final Lcom/android/wm/shell/legacysplitscreen/DividerImeController;
.super Ljava/lang/Object;
.source "DividerImeController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# instance fields
.field public mAdjusted:Z

.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mHiddenTop:I

.field public mImeWasShown:Z

.field public mLastAdjustTop:I

.field public mLastPrimaryDim:F

.field public mLastSecondaryDim:F

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mPaused:Z

.field public mPausedTargetAdjusted:Z

.field public mSecondaryHasFocus:Z

.field public mShownTop:I

.field public final mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

.field public mTargetAdjusted:Z

.field public mTargetPrimaryDim:F

.field public mTargetSecondaryDim:F

.field public mTargetShown:Z

.field public final mTaskOrganizer:Landroid/window/TaskOrganizer;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/TaskOrganizer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    iput v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    return-void
.end method


# virtual methods
.method public final isDividerHidden()Z
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public final onEnd(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 0

    if-nez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_0
    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    iget p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    :cond_1
    return-void
.end method

.method public final onImeControlTargetChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    :cond_0
    return-void
.end method

.method public final onImeEndPositioning(IZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onEnd(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onImePositionChanged(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p2

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v0, p2

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->onProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onImeStartPositioning(IIIZZ)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->isDividerHidden()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    iput p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    iput-boolean p4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne p1, v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    if-eqz p4, :cond_2

    if-eqz p1, :cond_2

    if-nez p5, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget p5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    if-gez p5, :cond_4

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move p2, p3

    :goto_2
    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    goto :goto_4

    :cond_4
    if-eqz p4, :cond_5

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    goto :goto_3

    :cond_5
    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    :goto_3
    if-eq p5, p2, :cond_7

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eq p2, p1, :cond_6

    iget-boolean p3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-ne p1, p3, :cond_6

    iput-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p2, :cond_7

    iput-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    :cond_7
    :goto_4
    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-eqz p2, :cond_a

    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPausedTargetAdjusted:Z

    if-nez p1, :cond_8

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_9

    :cond_8
    move v1, v0

    :cond_9
    return v1

    :cond_a
    iput-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mImeWasShown:Z

    if-eqz p1, :cond_c

    if-eqz p4, :cond_c

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq p1, p2, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->startAsyncAnimation()V

    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateImeAdjustState(Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-nez p1, :cond_d

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eqz p0, :cond_e

    :cond_d
    move v1, v0

    :cond_e
    return v1
.end method

.method public final onProgress(FLandroid/view/SurfaceControl$Transaction;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v7, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    sub-float v1, v8, p1

    :goto_0
    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    sub-float v1, v8, v1

    iget v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v5, v4

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    iget-object v3, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->resizeSplitSurfaces(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    sub-float/2addr v8, p1

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastPrimaryDim:F

    mul-float/2addr v1, v8

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v7, p2, v0, v2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastSecondaryDim:F

    mul-float/2addr v1, v8

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    invoke-virtual {v7, p2, v0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    return-void
.end method

.method public final setDimsHidden(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->updateDimTargets()V

    iget p2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setResizeDimLayer(Landroid/view/SurfaceControl$Transaction;ZF)V

    :goto_0
    return-void
.end method

.method public final startAsyncAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x113

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mLastAdjustTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/common/DisplayImeController;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/legacysplitscreen/DividerImeController$1;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerImeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateDimTargets()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSurfaceHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    xor-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSecondaryHasFocus:Z

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetPrimaryDim:F

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput v2, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetSecondaryDim:F

    return-void
.end method

.method public final updateImeAdjustState(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mAdjusted:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    iget-boolean v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetAdjusted:Z

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mShownTop:I

    iget v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mHiddenTop:I

    invoke-virtual {v1, v0, v3, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->updateAdjustedBounds(III)V

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedSecondary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v3, v0}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mAdjustedPrimary:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v0}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v1, v3, v0}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mSecondary:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v3}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v2, v2}, Landroid/window/WindowContainerTransaction;->setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mWindowManagerProxy:Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/legacysplitscreen/WindowManagerProxy;->queueSyncTransactionIfWaiting(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTaskOrganizer:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0x113

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x154

    :goto_1
    invoke-virtual {p1, v3, v4, v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->setAdjustedForIme(JZ)V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-boolean v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mTargetShown:Z

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerImeController;->mPaused:Z

    if-nez p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    iget-boolean p0, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    if-ne p0, v2, :cond_6

    goto :goto_2

    :cond_6
    iput-boolean v2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mAdjustedForIme:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->updateTouchable()V

    :goto_2
    return-void
.end method
