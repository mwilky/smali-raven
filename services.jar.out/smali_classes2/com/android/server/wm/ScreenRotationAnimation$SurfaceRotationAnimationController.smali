.class Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceRotationAnimationController"
.end annotation


# instance fields
.field private mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method public static synthetic $r8$lambda$wJe6NDrB63BnRyvW-E-a-FgRopM(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;
    .locals 4

    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    return-object v0
.end method

.method private initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 3

    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    invoke-direct {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    return-object v0
.end method

.method private onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    move/from16 v6, p1

    int-to-long v7, v6

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v5

    :goto_1
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v5

    :goto_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v5

    :goto_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x5047ffcc

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    aput-object v0, v14, v3

    const/4 v4, 0x2

    aput-object v9, v14, v4

    const/4 v4, 0x3

    aput-object v10, v14, v4

    const/4 v4, 0x4

    aput-object v11, v14, v4

    invoke-static {v12, v13, v3, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    move/from16 v6, p1

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_5
    move/from16 v6, p1

    :try_start_2
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xbf86b21

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v4, v5, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/2addr v3, v5

    iput v3, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move/from16 v6, p1

    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;
    .locals 5

    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, p2, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-object v0
.end method

.method private startColorAnimation()V
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$800(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    const/4 v0, 0x3

    new-array v12, v0, [F

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v13

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v14

    int-to-long v0, v10

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v2

    float-to-long v2, v2

    mul-long v15, v0, v2

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v17

    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v2, v15

    move-object/from16 v4, v17

    move v5, v13

    move v6, v14

    move-object v7, v12

    move-object/from16 v18, v12

    move-object v12, v8

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$600(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$500(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$700(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    :cond_4
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method startCustomAnimation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$100(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method startScreenRotationAnimation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startColorAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method
