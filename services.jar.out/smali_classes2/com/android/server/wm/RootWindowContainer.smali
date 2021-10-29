.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;,
        Lcom/android/server/wm/RootWindowContainer$SleepToken;,
        Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;,
        Lcom/android/server/wm/RootWindowContainer$MyHandler;,
        Lcom/android/server/wm/RootWindowContainer$FindTaskResult;,
        Lcom/android/server/wm/RootWindowContainer$AnyTaskForIdMatchTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# static fields
.field private static final DISPLAY_OFF_SLEEP_TOKEN_TAG:Ljava/lang/String; = "Display-off"

.field static final MATCH_ATTACHED_TASK_ONLY:I = 0x0

.field static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_ATTACHED_TASK_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "WindowManager"

.field static final TAG_STATES:Ljava/lang/String; = "WindowManager"

.field static final TAG_TASKS:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field mCurrentUser:I

.field private mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

.field mDefaultMinSizeOfResizeableTaskDp:I

.field private mDestroyAllActivitiesReason:Ljava/lang/String;

.field private final mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private final mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

.field private mScreenBrightnessOverride:F

.field mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mSleepTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/RootWindowContainer$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mTaskLayersChanged:Z

.field mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTmpBoolean:Z

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private mTmpRemoteException:Landroid/os/RemoteException;

.field private mTmpTaskLayerRank:I

.field final mTopFocusedAppByProcess:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFocusedDisplayId:I

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mUserRootTaskInFront:Landroid/util/SparseIntArray;

.field mWallpaperActionPending:Z

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$2k3zC_nv2SZ_nI8-ixMORvQU-jI(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4gCTEucWBVcwoFBz8ZTyncHFYkw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FLmzhr01j2GERvqrf-mKQKpEFpE(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YLZAlJ3sCipIy27vYwSdw4Ep3R4(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$auelgeOhCvbItmS_07q5VFEb1ac(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->startActivityForAttachedApplicationIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$p59QcVpCDJNtvMsRJBNKaYgnBHw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/RootWindowContainer$1;)V

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$1;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Display-off"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->destroyActivity(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RootWindowContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/RootWindowContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    return p1
.end method

.method private applySurfaceChangesTransaction()V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/Watermark;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(IILandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v1, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppTransitioning()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static clearOtherAppTimeTrackers(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_0
    return-void
.end method

.method private destroyActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private getRootTask(III)Lcom/android/server/wm/Task;
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1
.end method

.method private getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 8

    new-instance v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iput v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    goto :goto_0

    :cond_0
    new-array v5, v3, [I

    new-array v6, v3, [Z

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    invoke-direct {v7, p1, v6, v5}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/Task;[Z[I)V

    invoke-virtual {v1, v7, v4}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Function;Z)Z

    aget-boolean v7, v6, v4

    if-eqz v7, :cond_1

    aget v2, v5, v4

    :cond_1
    iput v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->position:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    iput-boolean v5, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    iget-object v5, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDescendantTaskCount()I

    move-result v5

    new-array v6, v5, [I

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    new-array v6, v5, [Landroid/graphics/Rect;

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    new-array v6, v5, [I

    iput-object v6, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    new-array v3, v3, [I

    aput v4, v3, v4

    sget-object v6, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda4;

    const-class v7, Lcom/android/server/wm/Task;

    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    invoke-static {v6, v7, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :cond_2
    iput-object v2, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private static handleAppCrash(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    const-string v0, "handleAppCrashed"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    return-void
.end method

.method private handleResizingWindows()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isValidLaunchRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :pswitch_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeDream()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p3, v2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$addStartingWindowsForVisibleActivities$25(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$allPausedActivitiesComplete$34([ZLcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v3, Lcom/android/server/wm/Task$ActivityState;->STOPPED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v4, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    sget-object v5, Lcom/android/server/wm/Task$ActivityState;->FINISHING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/Task$ActivityState;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x355b0786

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v2}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    aput-boolean v1, p0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$allResumedActivitiesVisible$33([ZLcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    aput-boolean v3, p0, v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$cancelInitializingActivities$37(Lcom/android/server/wm/Task;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllOccludedActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$40([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[ZLcom/android/server/wm/Task;)V
    .locals 9

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const/4 v8, 0x0

    move-object/from16 v2, p7

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, p0, v0

    aget-boolean v1, p6, v0

    aget-boolean v2, p0, v0

    or-int/2addr v1, v2

    aput-boolean v1, p6, v0

    return-void
.end method

.method static synthetic lambda$dumpActivities$41(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  Resumed activities in task display areas (from top to bottom):"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$42([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V
    .locals 8

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    invoke-virtual {p4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    aget-boolean v5, p3, v0

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;

    invoke-direct {v7, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    const-string v6, "    Resumed: "

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    return-void
.end method

.method static synthetic lambda$dumpActivities$43(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  Activities waiting to finish:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpActivities$44(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  Activities waiting to stop:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpWindowsNoHeader$9(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "    "

    invoke-virtual {p4, p1, v3, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    :cond_3
    return-void
.end method

.method static synthetic lambda$findRootTaskBehind$24([ZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 3

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    aput-boolean v2, p0, v0

    return v0
.end method

.method static synthetic lambda$finishTopCrashedActivities$18(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p4, p0, p1}, Lcom/android/server/wm/Task;->finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p4, p2, :cond_0

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    :cond_0
    aput-object v0, p3, v1

    :cond_1
    return-void
.end method

.method static synthetic lambda$finishVoiceTask$32(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    return-void
.end method

.method static synthetic lambda$getDisplayContextsWithNonToastVisibleWindows$10(ILcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getDumpActivities$39(ZLjava/util/ArrayList;Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p2}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method static synthetic lambda$getRootTaskInfo$21(Lcom/android/server/wm/Task;[Z[ILcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p3, :cond_0

    aput-boolean v0, p1, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTopVisibleActivities$13(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    if-ne p2, p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$hasVisibleWindowAboveButDoesNotOwnNotificationShade$31(I[ZLcom/android/server/wm/WindowState;)Z
    .locals 4

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    aput-boolean v1, p1, v2

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f8

    if-ne v0, v3, :cond_2

    aget-boolean v0, p1, v2

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method static synthetic lambda$lockAllProfileTasks$35(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$8(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    return-void
.end method

.method static synthetic lambda$putTasksToSleep$28(Z[ZZLcom/android/server/wm/Task;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    aget-boolean v1, p1, v0

    invoke-virtual {p3, p2}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v2

    and-int/2addr v1, v2

    aput-boolean v1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$resumeFocusedTasksTopActivities$19(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 4

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-ne p5, p0, :cond_1

    aget-boolean v2, p1, v1

    or-int/2addr v2, p2

    aput-boolean v2, p1, v1

    return-void

    :cond_1
    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p5, p3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_2
    aget-boolean v2, p1, v1

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, p1, v1

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(ILcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    if-ne p0, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$startPowerModeLaunchIfNeeded$38([Z[ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 6

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    :goto_0
    const/4 v2, 0x0

    aget-boolean v3, p0, v2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    and-int/2addr v3, v5

    aput-boolean v3, p0, v2

    if-eqz v1, :cond_2

    aget-boolean v3, p1, v2

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    and-int/2addr v3, v4

    aput-boolean v3, p1, v2

    :cond_2
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$switchUser$16(ILcom/android/server/wm/Task;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->switchUser(I)V

    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    :cond_0
    return-void
.end method

.method private static makeSleepTokenKey(Ljava/lang/String;I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private static matchesActivity(Lcom/android/server/wm/ActivityRecord;IZLandroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private static processTaskForTaskInfo(Lcom/android/server/wm/Task;Landroid/app/ActivityTaskManager$RootTaskInfo;[I)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    aput v3, v2, v1

    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "unknown"

    :goto_0
    aput-object v3, v2, v1

    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "assist"

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    return v0
.end method

.method private startActivityForAttachedApplicationIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_3

    iget v0, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v2, :cond_3

    iget-object v0, p2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-ne p3, p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, p1, p2, v3, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    nop

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in new application when starting activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const-string v2, "displayAdded"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->notifyDisplayReady()V

    return-void
.end method

.method private static updateActivityApplicationInfo(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addStartingWindowsForVisibleActivities()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method allPausedActivitiesComplete()Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v0, v1

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    aget-boolean v2, v0, v2

    return v2
.end method

.method allResumedActivitiesIdle()Z
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->idle:Z

    if-nez v5, :cond_4

    :cond_2
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v5

    int-to-long v7, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x37ece3cd

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v6

    aput-object v5, v12, v1

    invoke-static {v9, v10, v1, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v6

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    return v1
.end method

.method allResumedActivitiesVisible()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;

    invoke-direct {v2, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda46;-><init>([Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Function;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    aget-boolean v1, v0, v1

    return v1
.end method

.method anyTaskForId(I)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(II)Lcom/android/server/wm/Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;
    .locals 11

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should not specify activity options for non-restore lookup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;

    const-class v2, Lcom/android/server/wm/Task;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    const/4 v2, 0x0

    if-eqz v9, :cond_4

    if-eqz p3, :cond_3

    nop

    invoke-virtual {p0, v2, p3, v9, p4}, Lcom/android/server/wm/RootWindowContainer;->getLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v2, v10, :cond_3

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "anyTaskForId"

    move-object v2, v9

    move-object v3, v10

    move v4, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    :cond_3
    return-object v9

    :cond_4
    if-nez p2, :cond_5

    return-object v2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    const/4 v3, 0x1

    if-ne p2, v3, :cond_7

    return-object v0

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v0, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    if-nez v3, :cond_8

    return-object v2

    :cond_8
    return-object v0
.end method

.method applySleepTokens(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->setIsSleeping(Z)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/RootWindowContainer;ZLcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpBoolean:Z

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_2
    return v0
.end method

.method canShowStrictModeViolation(I)Z
    .locals 2

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda49;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    nop

    if-eqz v4, :cond_7

    if-eq v4, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    if-ne v4, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    iget v3, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-nez v3, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v1
.end method

.method cancelInitializingActivities()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 2

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda8;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method closeSystemDialogActivities(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method copyAnimToLayoutParams()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    const/4 v0, 0x1

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    :cond_2
    return v0
.end method

.method createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->makeSleepTokenKey(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    if-nez v2, :cond_0

    new-instance v3, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/RootWindowContainer$SleepToken;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the same sleep token twice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V

    return-void
.end method

.method dispatchConfigurationToChild(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topDisplayFocusedRootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v14, 0x0

    aput-boolean v14, v2, v14

    move-object v15, v2

    new-array v2, v1, [Z

    aput-boolean v14, v2, v14

    move-object v12, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    move v9, v2

    :goto_0
    if-ltz v9, :cond_1

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    aget-boolean v1, v15, v14

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda34;-><init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;

    move-object/from16 v11, p5

    invoke-direct {v1, v15, v13, v11, v12}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;-><init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V

    invoke-virtual {v10, v1}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p5

    aget-boolean v16, v15, v14

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;

    invoke-direct {v9, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;)V

    const/16 v17, 0x0

    const-string v4, "  "

    const-string v5, "Fin"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v18, v9

    move-object/from16 v9, p5

    move-object/from16 v11, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int v1, v16, v1

    aput-boolean v1, v15, v14

    aget-boolean v16, v15, v14

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    invoke-direct {v11, v13}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    const/4 v12, 0x0

    const-string v4, "  "

    const-string v5, "Stop"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    move-result v1

    or-int v1, v16, v1

    aput-boolean v1, v15, v14

    aget-boolean v1, v15, v14

    return v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v5, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2

    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda31;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    nop

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4, p1, v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Landroid/content/res/Configuration;Lcom/android/server/wm/WindowContainer;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->reportDescendantOrientationChangeIfNeeded()V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3, p1, p4, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method executeAppTransitionForAllDisplay()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 8

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    sget-object v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda3;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v5, p1

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v2
.end method

.method findRootTaskBehind(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    invoke-direct {v2, v1, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>([ZLcom/android/server/wm/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a root task behind root task ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p5

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x5cf64ed6

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v4

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v12, 0x3

    aput-object v7, v11, v12

    const/4 v12, 0x4

    aput-object v8, v11, v12

    invoke-static {v9, v10, v4, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual {v2, p1, p2, v7, v8}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->init(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v3

    :cond_1
    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v9, v9, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v2, v9, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;

    invoke-direct {v9, p0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v9}, Lcom/android/server/wm/RootWindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_3

    return-object v9

    :cond_3
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v10}, Lcom/android/internal/protolog/ProtoLogGroup;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v2, :cond_4

    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x5204a23e

    move-object v12, v3

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v4, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v2
.end method

.method findTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->findTask(ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method finishDisabledPackageActivities(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZIZ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mFinishDisabledPackageActivitiesHelper:Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->process(Ljava/lang/String;Ljava/util/Set;ZZIZ)Z

    move-result v0

    return v0
.end method

.method finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v2, v1, v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayPolicy;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method forAllDisplays(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getAllRootTaskInfos(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultDisplay()Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDefaultDisplayHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    move-object v0, v2

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-object v0
.end method

.method getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda50;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDisplayUiContext(I)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayUiContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda32;-><init>(ZLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method getLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;III)Lcom/android/server/wm/Task;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    move/from16 v11, p8

    move/from16 v10, p9

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    move v9, v0

    move v8, v1

    goto :goto_1

    :cond_2
    move v9, v0

    move v8, v1

    :goto_1
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    invoke-virtual {v14, v0}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v1, 0x2

    move/from16 v7, p5

    invoke-virtual {v6, v9, v1, v14, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v14, v9}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_3
    move/from16 v7, p5

    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v5

    const/16 v16, 0x0

    if-eqz v12, :cond_5

    iget-object v1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_5

    iget-object v2, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_5
    if-nez v2, :cond_6

    if-eq v8, v0, :cond_6

    invoke-virtual {v6, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    const/16 v17, 0x0

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v11, :cond_7

    if-lez v10, :cond_7

    if-eqz v15, :cond_7

    iget-object v0, v6, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v3, v11, v10, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    move/from16 v0, v17

    :goto_3
    move/from16 v18, v0

    if-nez v18, :cond_9

    invoke-direct {v6, v15, v3}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v7, v4

    move/from16 v20, v5

    move v1, v8

    move/from16 v21, v9

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object v0, v15

    goto/16 :goto_5

    :cond_9
    :goto_4
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    move/from16 v19, v3

    move-object/from16 v3, p3

    move-object v7, v4

    move-object/from16 v4, p2

    move/from16 v20, v5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->getValidLaunchRootTaskInTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_a
    move/from16 v19, v3

    move-object v7, v4

    move/from16 v20, v5

    :cond_b
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object v7, v4

    move v1, v8

    move-object/from16 v8, p1

    move v0, v9

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v2, v12

    move-object/from16 v12, p6

    move-object v3, v13

    move/from16 v13, p7

    move-object v5, v14

    move/from16 v14, v20

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v15, p5

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v16

    if-eqz v16, :cond_d

    return-object v16

    :cond_c
    move-object v7, v4

    move/from16 v20, v5

    move v1, v8

    move/from16 v21, v9

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    move-object v0, v15

    :goto_5
    move-object v4, v7

    :cond_d
    const/4 v7, 0x0

    if-eqz v3, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v16

    :cond_e
    if-nez v16, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_6

    :cond_f
    move-object/from16 v15, v16

    :goto_6
    if-eqz v2, :cond_10

    iget v8, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    move/from16 v17, v8

    goto :goto_7

    :cond_10
    nop

    :goto_7
    move/from16 v8, v17

    if-eqz v15, :cond_14

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v9, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v6, v0, v9}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v9

    if-eqz v9, :cond_13

    if-nez v8, :cond_11

    move/from16 v14, v20

    invoke-virtual {v7, v0, v5, v3, v14}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v8

    goto :goto_8

    :cond_11
    move/from16 v14, v20

    :goto_8
    invoke-virtual {v15, v8, v14}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v9

    if-nez v9, :cond_12

    iget-boolean v9, v15, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_15

    :cond_12
    return-object v15

    :cond_13
    move/from16 v14, v20

    goto :goto_9

    :cond_14
    move/from16 v14, v20

    :cond_15
    :goto_9
    if-eqz v7, :cond_17

    iget-object v9, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v6, v0, v9}, Lcom/android/server/wm/RootWindowContainer;->canLaunchOnDisplay(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_a

    :cond_16
    move-object/from16 v16, v7

    move/from16 v17, v8

    goto :goto_b

    :cond_17
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-nez v8, :cond_18

    invoke-virtual {v7, v0, v5, v3, v14}, Lcom/android/server/wm/TaskDisplayArea;->resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I

    move-result v8

    move-object/from16 v16, v7

    move/from16 v17, v8

    goto :goto_b

    :cond_18
    move-object/from16 v16, v7

    move/from16 v17, v8

    :goto_b
    move-object/from16 v7, v16

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v18, v14

    move-object/from16 v19, v15

    move/from16 v15, p5

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v7

    return-object v7
.end method

.method getLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .locals 10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/RootWindowContainer;->getLaunchRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;III)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ROOT"

    return-object v0
.end method

.method getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    iget v1, p1, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_4

    return-object v5

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method protected getRootTask(I)Lcom/android/server/wm/Task;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootTask(II)Lcom/android/server/wm/Task;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(III)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/RunningTasks;->getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;)V

    return-void
.end method

.method getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda47;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    return-object v2
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityAssistInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method getValidLaunchRootTaskInTaskDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/Task;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    return-object v1

    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz p5, :cond_4

    iget v2, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    :goto_1
    nop

    :goto_2
    nop

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v3

    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v2

    move v3, v2

    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;

    invoke-direct {v4, p0, p2, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;I)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eq p1, v5, :cond_8

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    :goto_3
    invoke-virtual {p1, v2, v1, v0, p4}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v1
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda9;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v5

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v8, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v13, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move v14, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v15

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v9, v10, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v11, v18

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v17, 0x1

    aput-object v20, v11, v17

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v16, 0x2

    aput-object v20, v11, v16

    const/16 v20, 0x3

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v11, v20

    const/16 v20, 0x4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v11, v20

    move/from16 v20, v7

    move-object/from16 v19, v8

    move-wide/from16 v21, v9

    const v7, -0x1cb99646

    const/16 v8, 0x1fc

    const/4 v9, 0x0

    invoke-static {v12, v7, v8, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move/from16 v20, v7

    :goto_0
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_1

    iget-wide v7, v0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0xd346f16

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    and-int/lit16 v7, v3, 0x80

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    iput-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v7, :cond_3

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    if-eqz v7, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x7c7d62da

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v13, 0x1

    aput-object v8, v11, v13

    const/4 v13, 0x0

    invoke-static {v9, v10, v12, v13, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    iget v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v7, v0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    :cond_4
    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-boolean v9, v8, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_9

    iget-boolean v9, v0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_8

    if-eqz p2, :cond_9

    const/16 v9, 0x7d9

    if-ne v7, v9, :cond_9

    :cond_8
    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    move/from16 v9, v20

    :goto_2
    const/high16 v10, 0x40000

    and-int/2addr v10, v6

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_a
    move v7, v9

    goto :goto_3

    :cond_b
    move/from16 v7, v20

    :goto_3
    return v7
.end method

.method hasAwakeDisplay()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_0

    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_0
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;-><init>(I[Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method invalidateTaskLayers()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method isLayoutNeeded()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isOnTop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$applySleepTokens$20$RootWindowContainer(ZLcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->awakeFromSleepingLocked()V

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, v2, v2}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_1
    invoke-virtual {p3, v2, v0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$attachApplication$15$RootWindowContainer(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpRemoteException:Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda2;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v0, p0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/QuadFunction;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    return-void
.end method

.method public synthetic lambda$closeSystemDialogActivities$30$RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/RootWindowContainer;->shouldCloseAssistant(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_1
    return-void
.end method

.method public synthetic lambda$findTask$17$RootWindowContainer(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    :cond_1
    return-object v0
.end method

.method public synthetic lambda$getAllRootTaskInfos$22$RootWindowContainer(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$getAllRootTaskInfos$23$RootWindowContainer(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$getValidLaunchRootTaskInTaskDisplayArea$29$RootWindowContainer(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)Z
    .locals 1

    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->isValidLaunchRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$lockAllProfileTasks$36$RootWindowContainer(ILcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;

    invoke-direct {v1, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda48;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$rankTaskLayers$26$RootWindowContainer(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$rankTaskLayers$27$RootWindowContainer(Lcom/android/server/wm/Task;)V
    .locals 3

    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    :goto_0
    iget v2, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    if-eq v2, v0, :cond_1

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$startHomeOnDisplay$12$RootWindowContainer(ILjava/lang/String;ZZLcom/android/server/wm/TaskDisplayArea;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 7

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$startHomeOnEmptyDisplays$11$RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 7

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$updatePreviousProcess$14$RootWindowContainer(Lcom/android/server/wm/Task;)Lcom/android/server/wm/WindowProcessController;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method lockAllProfileTasks(I)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    move-object v6, v1

    goto/16 :goto_1

    :cond_2
    new-instance v6, Lcom/android/server/wm/Task$Builder;

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v6, v7}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task$Builder;->setDeferTaskAppear(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task$Builder;->setHasBeenVisible(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->setLastParentBeforePip()V

    iget-object v7, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    iget-object v7, v1, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v8, v1, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/Task;->setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    :cond_3
    const v7, 0x7fffffff

    invoke-virtual {p1, v6, v7, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->maybeApplyLastRecentsAnimationTransaction()V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_4

    sget-object v8, Lcom/android/server/wm/Task$ActivityState;->STOPPED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eq v8, v0, :cond_5

    invoke-virtual {v6, v0, v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v6}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(ILcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/ActivityRecord;->setWindowingMode(I)V

    iput-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    invoke-virtual {v6, v4}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v1
.end method

.method moveRootTaskToDisplay(IIZ)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveRootTaskToDisplay: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveRootTaskToTaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to move rootTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to its current taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveRootTaskToTaskDisplayArea: Unknown taskDisplayArea="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveRootTaskToTaskDisplayArea: rootTask="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not attached to any task display area."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveRootTaskToTaskDisplayArea: Unknown rootTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;)V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged()V

    :cond_0
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

.method public onDisplayRemoved(I)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->remove()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onSettingsRetrieved()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method performSurfacePlacement()V
    .locals 3

    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method performSurfacePlacementNoTrace()V
    .locals 15

    const-string v0, "performLayoutAndPlaceSurfaces"

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-wide/16 v9, 0x20

    const-string v11, "applySurfaceChanges"

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_1
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_a

    :catch_0
    move-exception v11

    :try_start_1
    const-string v12, "WindowManager"

    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    invoke-direct {p0, v7}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    :cond_2
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    iget-boolean v11, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v11, :cond_3

    iget v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v9, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v10, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v9, v8

    iput v9, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x27ba2454

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-static {v11, v12, v2, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v9, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0xb

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    :cond_a
    add-int/lit8 v2, v2, -0x1

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iput-boolean v3, v9, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    iget-object v12, v11, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v12, v9, :cond_b

    invoke-virtual {v11, v4}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_b
    iget-object v12, v11, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12, v9}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    if-gtz v2, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_d
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_e

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v1, :cond_10

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v9}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v12, :cond_f

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_10
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v9, :cond_13

    iget v9, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightnessOverride:F

    const/4 v11, 0x0

    cmpg-float v11, v9, v11

    if-ltz v11, :cond_12

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v9, v11

    if-lez v11, :cond_11

    goto :goto_6

    :cond_11
    move v5, v9

    goto :goto_7

    :cond_12
    :goto_6
    nop

    :goto_7
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v12, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v5, v9, :cond_14

    iput-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    invoke-virtual {v5, v10, v9}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_14
    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v5, :cond_16

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x41c0358b

    move-object v10, v4

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v5, v9, v3, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_18

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v3, :cond_18

    :cond_17
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v4, v4

    if-ge v4, v3, :cond_19

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v5, v3, 0xa

    new-array v5, v5, [Lcom/android/server/wm/WindowState;

    iput-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_1b

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    if-eqz v9, :cond_1a

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    :goto_9
    if-ltz v5, :cond_1c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_1c
    sget-object v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void

    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method prepareForShutdown()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v2, "shutdown"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method putTasksToSleep(ZZ)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v0, v1

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda33;-><init>(Z[ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean v1, v0, v2

    return v1
.end method

.method rankTaskLayers()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    :cond_1
    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v8, p2

    invoke-static {v0, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v5, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    if-nez v5, :cond_5

    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v12, v0

    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_4

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v11}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    const/4 v0, 0x0

    :goto_2
    array-length v15, v14

    if-ge v0, v15, :cond_1

    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v11, p3

    :try_start_3
    invoke-interface {v0, v14, v15, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v13, v0

    :cond_2
    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v11, p3

    goto :goto_3

    :cond_3
    move/from16 v11, p3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v11, p3

    :goto_4
    move v6, v13

    goto/16 :goto_a

    :cond_4
    move/from16 v11, p3

    move v6, v13

    goto :goto_5

    :cond_5
    move/from16 v11, p3

    :goto_5
    const/4 v12, 0x1

    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    goto :goto_9

    :cond_7
    :goto_6
    :try_start_4
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_9

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x17d51a79

    const/4 v14, 0x0

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v15, v12

    invoke-static {v3, v13, v12, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :cond_9
    const/4 v12, 0x0

    :cond_a
    :goto_8
    :try_start_5
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    const/4 v12, 0x1

    :cond_c
    return v12

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move/from16 v11, p3

    :goto_a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .locals 6

    const-string v0, "removeReplacedWindows"

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5a4f608f

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    const v1, 0x54da4e01

    :try_start_0
    sget-object v4, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    throw v4
.end method

.method varargs removeRootTasksInWindowingModes([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksInWindowingModes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method varargs removeRootTasksWithActivityTypes([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->removeRootTasksWithActivityTypes([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, " from "

    const-string v3, "WindowManager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove non-exist sleep token: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mHashKey:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->access$200(Lcom/android/server/wm/RootWindowContainer$SleepToken;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove sleep token for non-existing display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->access$300(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->access$300(Lcom/android/server/wm/RootWindowContainer$SleepToken;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Display-off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    :cond_4
    return-void
.end method

.method removeUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method resolveActivities(ILandroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-interface {v1, p2, v0, v2, p1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 6

    const/16 v0, 0x400

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x400

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "WindowManager"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :cond_2
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v2
.end method

.method resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-class v3, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveActivities(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-lez v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    :cond_5
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resolveSecondaryHomeActivity: Should not be default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resumeFocusedTasksTopActivities()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    :cond_0
    const/4 v1, 0x0

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, v7, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p4}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    move v10, v1

    move v11, v2

    :goto_0
    if-ltz v11, :cond_6

    invoke-virtual {p0, v11}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    move v4, v10

    new-array v13, v9, [Z

    new-instance v14, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v13

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/Task;[ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v12, v14}, Lcom/android/server/wm/DisplayContent;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean v1, v13, v8

    or-int/2addr v1, v10

    aget-boolean v2, v13, v8

    if-nez v2, :cond_4

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v6

    or-int/2addr v1, v6

    move v10, v1

    goto :goto_1

    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    if-nez v7, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    const-string v14, "no-focusable-task"

    invoke-virtual {p0, v6, v14, v10}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v6

    or-int/2addr v1, v6

    move v10, v1

    goto :goto_1

    :cond_4
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    :cond_5
    move v10, v1

    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_6
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    return v10
.end method

.method resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resumeHomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    :cond_2
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v7

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z

    move-result v0

    return v0
.end method

.method scheduleAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method scheduleDestroyAllActivities(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDestroyAllActivitiesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method setSecureSurfaceState(I)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda12;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    new-instance v3, Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v2, p0}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;)V

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_0

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->calculateDefaultMinimalSizeOfResizeableTasks()V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    const v2, 0x7fffffff

    iget-object v3, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    if-nez v1, :cond_4

    return v0

    :cond_4
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_5

    return v0

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startHomeOnAllDisplays(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;I)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;I)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    move-result v0

    return v0
.end method

.method startHomeOnDisplay(ILjava/lang/String;IZZ)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move p3, v2

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    new-instance v8, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/RootWindowContainer;ILjava/lang/String;ZZ)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/android/server/wm/DisplayContent;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method startHomeOnEmptyDisplays(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method startHomeOnTaskDisplayArea(ILjava/lang/String;Lcom/android/server/wm/TaskDisplayArea;ZZ)Z
    .locals 6

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    move-object p3, v1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne p3, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    :cond_3
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz p5, :cond_6

    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForHomeStart()V

    :cond_6
    const-string v3, "android.intent.extra.EXTRA_START_REASON"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/wm/ActivityStartController;->startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return v2

    :cond_7
    :goto_2
    return v2
.end method

.method startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    new-array v3, v0, [Z

    aput-boolean v0, v3, v2

    new-instance v4, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;

    invoke-direct {v4, v1, v3, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda36;-><init>([Z[ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    aget-boolean v4, v1, v2

    if-nez v4, :cond_2

    aget-boolean v4, v3, v2

    if-eqz v4, :cond_3

    :cond_2
    move v2, v0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startLaunchPowerMode(I)V

    :cond_5
    return-void
.end method

.method switchUser(ILcom/android/server/am/UserState;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    const-string v7, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    :goto_1
    return v4
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method updateActivityApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-object v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, p1, v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/QuadConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, -0x1

    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v6

    or-int/2addr v0, v6

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-ne v1, v4, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    :cond_1
    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_1

    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    :cond_4
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_5

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v2, :cond_5

    int-to-long v4, v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x12993590

    const/4 v7, 0x0

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v6, v3, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v0
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getItemFromRootTasks(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v0, :cond_0

    iget-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    :cond_0
    return-void
.end method

.method updateRotationUnchecked()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method updateUIDsPresentOnDisplay()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    return-void
.end method

.method updateUserRootTask(ILcom/android/server/wm/Task;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    return-void
.end method
