.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;,
        Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnificationController"


# instance fields
.field private mActivatedMode:I

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private mFullScreenModeEnabledTime:J

.field private mImeWindowVisible:Z

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationCapabilities:I

.field private final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/PointF;

.field private mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field private mWindowModeEnabledTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/MagnificationController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/magnification/MagnificationController;ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method private disableFullScreenMagnificationIfNeeded(I)V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    nop

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    :cond_1
    return-void
.end method

.method private getCurrentMagnificationBoundsCenterLocked(II)Landroid/graphics/PointF;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getCenterY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    return-object v0
.end method

.method private handleUserInteractionChanged(II)V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    :cond_1
    return-void
.end method

.method private isActivated(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v4, :cond_0

    monitor-exit v3

    return v2

    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isMagnifying(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isForceShowMagnifiableBounds(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    move v0, v1

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v3, :cond_4

    monitor-exit v1

    return v2

    :cond_4
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->isWindowMagnifierEnabled(I)Z

    move-result v2

    move v0, v2

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_5
    :goto_2
    return v0
.end method

.method private logMagnificationModeWithImeOnIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private updateMagnificationButton(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->showMagnificationButton(II)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->removeMagnificationButton(I)Z

    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setUserId(I)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserIdLocked()I

    move-result v3

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/magnification/WindowMagnificationManager$Callback;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFullScreenMagnificationControllerInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    return-void
.end method

.method public logMagnificationUsageState(IJ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJ)V

    return-void
.end method

.method public onAccessibilityActionPerformed(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->onDisplayRemoved(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->onDisplayRemoved(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFullScreenMagnificationActivationState(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onImeWindowVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mImeWindowVisible:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPerformScaleAction(IF)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setScale(IF)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->persistScale(I)V

    return-void
.end method

.method public onRequestMagnificationSpec(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-object v2, v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onShortcutTriggered(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public onTouchInteractionEnd(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onTouchInteractionStart(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->handleUserInteractionChanged(II)V

    return-void
.end method

.method public onTripleTapped(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationButton(II)V

    return-void
.end method

.method public onWindowMagnificationActivationState(IZ)V
    .locals 5

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded()V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->disableFullScreenMagnificationIfNeeded(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJ)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivatedMode:I

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setMagnificationCapabilities(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    return-void
.end method

.method public transitionMagnificationModeLocked(IILcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;)V
    .locals 16

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationBoundsCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v10

    nop

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getDisableMagnificationEndRunnableLocked(I)Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-result-object v11

    const/4 v0, 0x1

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    invoke-interface {v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(Z)V

    return-void

    :cond_0
    const-string v1, "MagnificationController"

    if-eqz v11, :cond_2

    invoke-static {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->access$000(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v2

    if-ne v2, v8, :cond_1

    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->restoreToCurrentMagnificationMode()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request during transition, abandon current:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->access$100(Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->setExpiredAndRemoveFromListLocked()V

    :cond_2
    if-nez v10, :cond_3

    const-string v2, "Invalid center, ignore it"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;->onResult(Z)V

    return-void

    :cond_3
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->getPersistedScale()F

    move-result v14

    new-instance v15, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationController$TransitionCallBack;IIFLandroid/graphics/PointF;)V

    const/4 v1, 0x2

    if-ne v8, v1, :cond_4

    invoke-virtual {v12, v7, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v13, v7, v1, v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)V

    :goto_0
    move-object/from16 v1, p0

    invoke-direct {v1, v7, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    return-void
.end method

.method public updateUserIdIfNeeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setUserId(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setUserId(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
