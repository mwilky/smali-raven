.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x2710L


# instance fields
.field private mCanceled:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingNonAppAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/NonAppWindowAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 11

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x26ee615e

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4a6cd2bb

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_3

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x260da918

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v2

    invoke-static {v8, v9, v2, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_4
    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createNonAppWindowAnimations(I)[Landroid/view/RemoteAnimationTarget;
    .locals 13

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x6d53e5fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    move v7, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->startNonAppWindowAnimations(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;IJJLjava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .locals 12

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x236bb261

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v8

    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v11}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/WindowManagerService;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private invokeAnimationCancelled()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private linkToDeathOfRunner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 10

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x59472ff0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0, v6, v2, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x21369e24

    move-object v6, v1

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x39f4f264

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperAnimationAdapter;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x32ddec5b

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_9

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getLastAnimationType()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingNonAppAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x731b7367

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "RemoteAnimationController#finished"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-direct {p0, v3}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0xecb62ed

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    nop

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    :cond_0
    return-void
.end method

.method private setRunningRemoteAnimation(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find process with pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Calling pid of remote animation was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private unlinkToDeathOfRunner()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    :cond_0
    return-void
.end method

.method private writeStartDebugStatement()V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7518e37a

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v6, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v7, ""

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/FastPrintWriter;->close()V

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x31d185c0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v6, v7, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x70be04df

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .locals 13

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x788bb79d

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method goodToGo(I)V
    .locals 12

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x3416e054

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x10178441

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const v4, 0x461c4000    # 10000.0f

    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-long v4, v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    array-length v3, v0

    const/4 v9, 0x1

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardOccludeTransitOld(I)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x69eddc66

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v9, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->createNonAppWindowAnimations(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v11, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;

    move-object v3, v11

    move-object v4, p0

    move v5, p1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RemoteAnimationController;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    invoke-direct {p0, v9}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public synthetic lambda$createWallpaperAnimations$2$RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$goodToGo$1$RemoteAnimationController(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v10, p2

    :try_start_1
    array-length v4, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v4, v4

    move-object/from16 v11, p3

    :try_start_2
    array-length v6, v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    int-to-long v6, v6

    move-object/from16 v12, p4

    :try_start_3
    array-length v8, v12

    int-to-long v8, v8

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, 0x21c21b3

    const/16 v15, 0x54

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/16 v16, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/16 v16, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v3, v16

    const/4 v2, 0x0

    invoke-static {v13, v14, v15, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {v4 .. v9}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v10, p2

    :goto_1
    move-object/from16 v11, p3

    :goto_2
    move-object/from16 v12, p4

    :goto_3
    const-string v2, "WindowManager"

    const-string v3, "Failed to start remote animation"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    :goto_4
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x77f5446b

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$0$RemoteAnimationController()V
    .locals 1

    const-string v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method
