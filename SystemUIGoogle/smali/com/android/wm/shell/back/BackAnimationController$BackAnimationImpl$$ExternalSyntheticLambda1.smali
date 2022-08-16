.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput p2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$2:F

    iput p4, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iget v2, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$1:F

    iget v3, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$2:F

    iget v1, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$3:I

    iget v5, p0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda1;->f$4:I

    iget-object p0, v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string v8, "BackAnimationController"

    if-ne v1, v0, :cond_b

    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v1, :cond_4

    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, 0x46dd5950

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v4

    const-string v1, "initAnimation mMotionStarted=%b"

    invoke-static {v9, v10, v7, v1, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "Animation is being initialized but is already started."

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v6, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v4, v1}, Landroid/app/IActivityTaskManager;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Failed to initAnimation"

    invoke-static {v8, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v1, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mInitTouchLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v4, Lcom/android/wm/shell/back/BackAnimationController;->PROGRESS_THRESHOLD:I

    if-ltz v4, :cond_6

    int-to-float v4, v4

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mProgressThreshold:F

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v9

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v1}, Landroid/window/BackNavigationInfo;->getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    new-instance v10, Landroid/window/BackEvent;

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Landroid/window/BackEvent;-><init>(FFFILandroid/view/RemoteAnimationTarget;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v9}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToLauncher(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_2

    :cond_7
    if-eq v9, v7, :cond_9

    if-ne v9, v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    if-ne v9, v0, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v1

    :cond_9
    :goto_2
    if-nez v1, :cond_a

    goto/16 :goto_6

    :cond_a
    :try_start_1
    invoke-interface {v1, v10}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p0

    const-string v0, "dispatchOnBackProgressed error: "

    invoke-static {v8, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :cond_b
    if-eq v1, v6, :cond_c

    if-ne v1, v7, :cond_17

    :cond_c
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_d

    int-to-long v0, v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x2363b9cd

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Finishing gesture with event action: %d"

    invoke-static {v2, v3, v6, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_BACK_PREVIEW_enabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0xdfb413

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v0, "onGestureFinished() mTriggerBack == %s"

    invoke-static {v1, v2, v4, v0, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToLauncher(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackToLauncherCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v2}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v2

    :goto_3
    if-eqz v1, :cond_12

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    iput-boolean v6, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTransitionInProgress:Z

    iget-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mResetTransitionRunnable:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    const-wide/16 v9, 0x7d0

    invoke-interface {v3, v4, v9, v10}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_12
    :goto_4
    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTriggerBack:Z

    if-eqz v3, :cond_14

    if-nez v2, :cond_13

    goto :goto_5

    :cond_13
    :try_start_2
    invoke-interface {v2}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    const-string v3, "dispatchOnBackInvoked error: "

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_14
    if-nez v2, :cond_15

    goto :goto_5

    :cond_15
    :try_start_3
    invoke-interface {v2}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    const-string v3, "dispatchOnBackCancelled error: "

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-ne v0, v6, :cond_16

    if-nez v1, :cond_17

    :cond_16
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishAnimation()V

    :cond_17
    :goto_6
    return-void
.end method
