.class public final Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;
.super Ljava/lang/Object;
.source "LegacySplitScreenController.java"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/animation/AnimationHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDismissingDockedStack()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const v0, 0x7f1302b9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;

    invoke-direct {v0, p2, p3}, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    const-wide/16 p2, 0x3e8

    invoke-interface {p1, p0, p2, p3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_1
    return-void
.end method

.method public final onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mForcedResizableController:Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const v0, 0x7f1300cf

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V
    .locals 8

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object p2, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-boolean p2, p2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenSupported:Z

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mMinimized:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->mView:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    if-eqz v0, :cond_4

    iget-object p0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getPrimarySplitSide()I

    move-result p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {v0, p3, p3}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->dockSideTopLeft(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    :goto_1
    move-object v2, p0

    iput-boolean p2, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitAnimationRunning:Z

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_2

    :cond_3
    iget p0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    :goto_2
    move v1, p0

    iput v1, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mExitStartPosition:I

    const-wide/16 v3, 0x150

    const-wide/16 v5, 0x64

    sget-object v7, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJLandroid/view/animation/PathInterpolator;)V

    :cond_4
    :goto_3
    return-void
.end method
