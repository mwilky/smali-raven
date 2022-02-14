.class Lcom/android/server/wm/NonAppWindowAnimationAdapter;
.super Ljava/lang/Object;
.source "NonAppWindowAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mDurationHint:J

.field private mLastAnimationType:I

.field private mStatusBarTransitionDelay:J

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field private final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iput-wide p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    iput-wide p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    return-void
.end method

.method static synthetic lambda$startNonAppWindowAnimationsForKeyguardExit$0(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 7

    iget-object v0, p8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    invoke-interface {p0, p8}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p8, v0, :cond_0

    new-instance v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    move-object v1, v0

    move-object v2, p8

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p8}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p8, v1, v0, v2, v3}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    invoke-virtual {v0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getFadeRotationAnimationController()Lcom/android/server/wm/FadeRotationAnimationController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    new-instance v7, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    move-object v1, v7

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    invoke-virtual {v1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static startNonAppWindowAnimations(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IJJLjava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "IJJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)[",
            "Landroid/view/RemoteAnimationTarget;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, v0

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, v0

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNavigationBarWindowAnimation(Lcom/android/server/wm/DisplayContent;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private static startNonAppWindowAnimationsForKeyguardExit(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "JJ",
            "Ljava/util/ArrayList<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v11, v9, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v12, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 20

    move-object/from16 v0, p0

    new-instance v15, Landroid/view/RemoteAnimationTarget;

    move-object v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    new-instance v2, Landroid/graphics/Rect;

    move-object v6, v2

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v8

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastSurfacePosition()Landroid/graphics/Point;

    move-result-object v9

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v12

    iget-object v2, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v18

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowContainer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_0

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getDurationHint()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mDurationHint:J

    return-wide v0
.end method

.method getLastAnimationType()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    return v0
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mStatusBarTransitionDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x44c5d0ec

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x772f64fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    iput p3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->mLastAnimationType:I

    return-void
.end method
