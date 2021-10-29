.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/WindowContainer;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$Builder;,
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;,
        Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/Task$ActivityTaskHandler;,
        Lcom/android/server/wm/Task$ActivityState;,
        Lcom/android/server/wm/Task$TaskVisibility;,
        Lcom/android/server/wm/Task$ReparentMoveRootTaskMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_LAST_SNAPSHOT_BUFFER_SIZE:Ljava/lang/String; = "last_snapshot_buffer_size"

.field private static final ATTR_LAST_SNAPSHOT_CONTENT_INSETS:Ljava/lang/String; = "last_snapshot_content_insets"

.field private static final ATTR_LAST_SNAPSHOT_TASK_SIZE:Ljava/lang/String; = "last_snapshot_task_size"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final LAYER_RANK_INVISIBLE:I = -0x1

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_ROOT_TASK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_ROOT_TASK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_ROOT_TASK_TO_FRONT:I = 0x0

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field static final TASK_VISIBILITY_INVISIBLE:I = 0x2

.field static final TASK_VISIBILITY_VISIBLE:I = 0x0

.field static final TASK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field private static final sTmpBounds:Landroid/graphics/Rect;

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field mAdjacentTask:Lcom/android/server/wm/Task;

.field mAffiliatedTaskId:I

.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field private final mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

.field mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field mConfigWillChange:Z

.field mCreatedByOrganizer:Z

.field mCurrentUser:I

.field private mDeferTaskAppear:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

.field final mExitingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceNotOrganized:Z

.field private mForceShowForAllUsers:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasBeenVisible:Z

.field mInRemoveTask:Z

.field mInResumeTopActivity:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field mLastTimeMoved:J

.field mLaunchCookie:Landroid/os/IBinder;

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

.field mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field private mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field private mPreserveNonFloatingState:Z

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mRemoveWithTaskOrganizer:Z

.field private mRemoving:Z

.field mResizeMode:I

.field private mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRotation:I

.field private mShadowRadius:F

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-nHv3hp3munhu4Gy96iX2y0sRuI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3xH7pQV3TePK6a8j4i6TaVmj4QQ(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$41C-LKlpe6PrnN0veKem-6gKpNY(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4uoiBIGNMTDRqeJdiWkAelWVBX8(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nTho283cVKQ1bb86OUzh4bK9Cc(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Klnp7Kt9fwk14ulYoCaswc9xIRI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UqOZnD1FgFOGmAuBU4uaaelTkDg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aBtoFv3xFrd63lyHY-Ao7UwldMY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dJ3OUx6e_LHbcEmkA9VVYo7V4gY(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qjBpDLSo_osTHUebmVR0R-BqIrQ(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p26

    move-object/from16 v5, p32

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v8, 0x1

    iput v8, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v9, -0x1

    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iput v9, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    iput v9, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput v9, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v10, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v10}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iput v9, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    iput v9, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    iput v9, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    new-instance v10, Lcom/android/server/wm/Dimmer;

    invoke-direct {v10, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput v7, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    new-instance v7, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v7}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    new-instance v7, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v7, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/Task;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    new-instance v7, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    new-instance v7, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    new-instance v7, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v7, v0, v6}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$1;)V

    iput-object v7, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    iput-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v6, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v7, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v7, p12

    iput v7, v0, Lcom/android/server/wm/Task;->mUserId:I

    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    move/from16 v10, p27

    iput-boolean v10, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p18, :cond_0

    move-object/from16 v11, p18

    goto :goto_0

    :cond_0
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_0
    iput-object v11, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p19, :cond_1

    move-object/from16 v11, p19

    goto :goto_1

    :cond_1
    new-instance v11, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v11}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_1
    iput-object v11, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    const/4 v11, -0x2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/Task;->setOrientation(I)V

    new-instance v11, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v11, v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 v14, p33

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v15, p34

    iput-object v15, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 v8, p28

    iput-boolean v8, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    move/from16 v7, p9

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    move/from16 v7, p10

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 v7, p11

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    move/from16 v7, p29

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 v7, p13

    iput v7, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 v7, p15

    iput-wide v7, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 v7, p17

    iput-boolean v7, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 v8, p20

    iput v8, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 v7, p21

    iput v7, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 v7, p22

    iput v7, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 v7, p23

    iput v7, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 v7, p24

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v7, p25

    iput-object v7, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iput v4, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-eqz v5, :cond_2

    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v3, p31

    goto :goto_2

    :cond_2
    iput-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 v3, p30

    iput v3, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    move/from16 v3, p31

    iput v3, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    new-instance v3, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v4, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    move/from16 v3, p35

    iput-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    move-object/from16 v4, p36

    iput-object v4, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    move/from16 v6, p37

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    move/from16 v1, p38

    iput-boolean v1, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v16

    move/from16 v0, v16

    :goto_3
    invoke-static {v2, v0}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task$1;)V
    .locals 0

    invoke-direct/range {p0 .. p38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/wm/Task;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method private autoRemoveFromRecents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .locals 8

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    iget v4, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v2, v3}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private canBeOrganized()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskOrganizerController;->isSupportedWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v0, v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    return v0

    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    :cond_8
    :goto_4
    return v0

    :cond_9
    :goto_5
    return v0
.end method

.method private canReuseAsLeafTask()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private canSpecifyOrientation()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_4
    const-string v0, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method private clearPinnedTaskIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private closeRecentsChain()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method private computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 5

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_0
    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .locals 2

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private computeMinUserPosition(II)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method static computeScreenLayoutOverride(III)I
    .locals 3

    and-int/lit8 p0, p0, 0x3f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private containsActivityFromRootTask(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    move-object v2, v0

    move-object v3, p0

    move/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/Task;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    const/4 v1, 0x1

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_1
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_2
    return v1
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    :goto_0
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    if-le v3, v2, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_5

    if-nez v2, :cond_5

    return v4

    :cond_5
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_6

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_6

    return v4

    :cond_6
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    sget-object v1, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v2, v1, v3}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v0, v2}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getRelativePosition()Landroid/graphics/Point;
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private getShadowRadius(Z)F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/16 v1, 0x14

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_3
    return v2
.end method

.method private hasVisibleChildren()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private inFrontOfStandardRootTask()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Z

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    return-void
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    :cond_3
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    return-void
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopActivityLaunchedBehind()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$applyAnimationUnchecked$14(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$awakeFromSleepingLocked$17(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->awakeFromSleepingLocked()V

    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$20(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p4, Lcom/android/server/wm/Task;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$21(Lcom/android/server/wm/Task;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method static synthetic lambda$fillTaskInfo$15(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$finishAllActivitiesImmediately$23(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishAllActivitiesImmediatelyLocked: finishing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic lambda$finishIfVoiceTask$22(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    return-void
.end method

.method static synthetic lambda$forAllOccludedActivities$9(Ljava/util/function/Consumer;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getDescendantTaskCount$7(Lcom/android/server/wm/Task;[I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$30(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$getPausingActivity$1(Lcom/android/server/wm/Task;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getResumedActivity$0(Lcom/android/server/wm/Task;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getTopFullscreenActivity$11(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getTopVisibleActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getTopWaitSplashScreenActivity$13(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$goToSleepIfPossible$18(Z[ILcom/android/server/wm/Task;)V
    .locals 2

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    :cond_0
    return-void
.end method

.method static synthetic lambda$navigateUpTo$25(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$navigateUpTo$26(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 7

    if-ne p4, p0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    aput v0, p1, v0

    const/4 v1, 0x0

    aput-object v1, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$performClearTask$6(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    return-void
.end method

.method static synthetic lambda$startPausingLocked$19(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[ILcom/android/server/wm/Task;)V
    .locals 2

    invoke-virtual {p5, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p4, v0

    :cond_0
    return-void
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$2(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$3(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$topActivityWithStartingWindow$4(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$topRunningActivity$10(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v8

    if-eq v3, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    if-eq v2, v8, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_5

    invoke-direct {p0, v2, v8}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v9}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    :cond_6
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v10, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_7

    iput-boolean v6, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    :cond_7
    goto :goto_2

    :cond_8
    iput-boolean v7, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    if-nez v6, :cond_a

    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_a
    return-void
.end method

.method private performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Ljava/util/function/BiFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v3, :cond_1

    const/high16 v3, 0x20000000

    and-int/2addr v3, p2

    if-nez v3, :cond_1

    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "clear-task-top"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

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

.method private resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_1
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/Task;->computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    return-void

    :cond_2
    return-void
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz p1, :cond_0

    if-ne p0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    :cond_0
    return-void
.end method

.method static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .locals 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, -0x1

    move-object/from16 v24, v3

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    new-instance v25, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v26, v25

    new-instance v25, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    move-object/from16 v27, v25

    const/16 v25, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const-string v31, ""

    const/16 v32, 0x0

    const/16 v33, 0x4

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, -0x1

    const/16 v38, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v39

    move-object/from16 v40, v5

    const/4 v5, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v41, v15

    move/from16 v42, v16

    move/from16 v43, v17

    move-object/from16 v44, v19

    move-wide/from16 v45, v20

    move/from16 v47, v22

    move/from16 v5, v23

    move/from16 v21, v25

    move/from16 v20, v28

    move/from16 v48, v29

    move/from16 v49, v30

    move-object/from16 v50, v31

    move-object/from16 v51, v32

    move-object/from16 v52, v35

    move/from16 v53, v36

    move/from16 v54, v37

    move-object/from16 v22, v0

    move/from16 v19, v6

    move-object/from16 v17, v11

    move v15, v14

    move/from16 v0, v39

    move-object/from16 v6, v40

    move v11, v10

    move v14, v13

    move-object v10, v9

    move v13, v12

    move/from16 v12, v38

    move-object v9, v8

    move-object v8, v7

    move/from16 v7, v33

    :goto_0
    move/from16 v23, v15

    const-string v15, "ActivityTaskManager"

    move/from16 v28, v14

    if-ltz v0, :cond_3

    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v32

    move/from16 v33, v13

    sparse-switch v32, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v13, "root_has_reset"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v13, "window_layout_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x6

    goto/16 :goto_2

    :sswitch_2
    const-string v13, "real_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v13, "never_relinquish_identity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x10

    goto/16 :goto_2

    :sswitch_4
    const-string v13, "calling_package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x15

    goto/16 :goto_2

    :sswitch_5
    const-string v13, "persist_task_version"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1c

    goto/16 :goto_2

    :sswitch_6
    const-string v13, "last_description"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v13, "affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto/16 :goto_2

    :sswitch_8
    const-string v13, "min_width"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1a

    goto/16 :goto_2

    :sswitch_9
    const-string v13, "calling_feature_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x16

    goto/16 :goto_2

    :sswitch_a
    const-string v13, "prev_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v13, "task_type"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xd

    goto/16 :goto_2

    :sswitch_c
    const-string v13, "calling_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x14

    goto/16 :goto_2

    :sswitch_d
    const-string v13, "user_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xa

    goto/16 :goto_2

    :sswitch_e
    const-string v13, "root_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x5

    goto/16 :goto_2

    :sswitch_f
    const-string v13, "supports_picture_in_picture"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x18

    goto/16 :goto_2

    :sswitch_10
    const-string v13, "auto_remove_recents"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x8

    goto/16 :goto_2

    :sswitch_11
    const-string v13, "last_snapshot_buffer_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1f

    goto/16 :goto_2

    :sswitch_12
    const-string v13, "orig_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x3

    goto/16 :goto_2

    :sswitch_13
    const-string v13, "non_fullscreen_bounds"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x19

    goto/16 :goto_2

    :sswitch_14
    const-string v13, "last_snapshot_task_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1d

    goto/16 :goto_2

    :sswitch_15
    const-string v13, "min_height"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1b

    goto/16 :goto_2

    :sswitch_16
    const-string v13, "resize_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x17

    goto/16 :goto_2

    :sswitch_17
    const-string v13, "effective_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xc

    goto :goto_2

    :sswitch_18
    const-string v13, "user_setup_complete"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xb

    goto :goto_2

    :sswitch_19
    const-string v13, "task_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v13, "real_activity_suspended"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x2

    goto :goto_2

    :sswitch_1b
    const-string v13, "next_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x13

    goto :goto_2

    :sswitch_1c
    const-string v13, "task_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :sswitch_1d
    const-string v13, "last_time_moved"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0xf

    goto :goto_2

    :sswitch_1e
    const-string v13, "last_snapshot_content_insets"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x1e

    goto :goto_2

    :sswitch_1f
    const-string v13, "asked_compat_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v13, 0x9

    goto :goto_2

    :goto_1
    const/4 v13, -0x1

    :goto_2
    packed-switch v13, :pswitch_data_0

    move-object/from16 v13, v27

    const-string v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    const-string v8, "Task: Unknown attribute="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v15, v27

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    move-object/from16 v32, v8

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v32, v8

    goto/16 :goto_3

    :pswitch_2
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    move-object/from16 v32, v8

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v54, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v53, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v52, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move/from16 v34, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v15, v27

    move-object/from16 v13, v31

    move-object/from16 v51, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v15, v27

    move-object/from16 v13, v31

    move-object/from16 v50, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v49, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v48, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v20, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v21, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move/from16 v47, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    move/from16 v15, v23

    move/from16 v14, v28

    move-wide/from16 v45, v29

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v15, v27

    move-object/from16 v13, v31

    move-object/from16 v44, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v41, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v18, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move/from16 v43, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v42, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move/from16 v14, v28

    move v15, v13

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move v14, v13

    move/from16 v15, v23

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    move/from16 v15, v23

    move/from16 v14, v28

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v15, v27

    move-object/from16 v13, v31

    move-object/from16 v17, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v15, v27

    move-object/from16 v10, v31

    const/4 v11, 0x1

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v15, v27

    move-object/from16 v9, v31

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :pswitch_1c
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :pswitch_1d
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v19, v13

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :pswitch_1e
    move-object/from16 v15, v27

    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :pswitch_1f
    move-object/from16 v15, v27

    const/4 v13, -0x1

    if-ne v5, v13, :cond_1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v27, v15

    move/from16 v15, v23

    move/from16 v14, v28

    move/from16 v13, v33

    goto :goto_4

    :cond_1
    move-object/from16 v32, v8

    move-object/from16 v27, v15

    goto :goto_3

    :cond_2
    move-object/from16 v32, v8

    :goto_3
    move/from16 v15, v23

    move/from16 v14, v28

    move-object/from16 v8, v32

    move/from16 v13, v33

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v32, v8

    move/from16 v33, v13

    move-object/from16 v8, v26

    invoke-virtual {v8, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    :goto_5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move/from16 v22, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    move/from16 v1, v22

    move-object/from16 v22, v8

    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v3, :cond_4

    goto :goto_6

    :cond_4
    move/from16 v24, v1

    goto/16 :goto_8

    :cond_5
    :goto_6
    const/4 v8, 0x2

    if-ne v1, v8, :cond_a

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "affinity_intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v14, v8

    goto :goto_7

    :cond_6
    const-string v8, "intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v13, v8

    goto :goto_7

    :cond_7
    const-string v8, "activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    nop

    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move/from16 v24, v1

    goto :goto_7

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_5

    :cond_a
    move/from16 v24, v1

    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_5

    :cond_b
    move/from16 v24, v22

    move-object/from16 v22, v8

    :goto_8
    if-nez v11, :cond_c

    move-object v10, v9

    goto :goto_9

    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v10, 0x0

    :cond_d
    :goto_9
    if-gtz v18, :cond_11

    if-eqz v13, :cond_e

    move-object v0, v13

    goto :goto_a

    :cond_e
    move-object v0, v14

    :goto_a
    move-object v1, v0

    const/4 v8, 0x0

    if-eqz v1, :cond_10

    move/from16 v26, v3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    nop

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v18, v8

    const/16 v8, 0x2200

    move/from16 v31, v11

    move/from16 v11, v42

    :try_start_1
    invoke-interface {v3, v0, v8, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :cond_f
    move/from16 v8, v18

    :goto_b
    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move/from16 v18, v8

    move/from16 v31, v11

    move/from16 v11, v42

    goto :goto_c

    :cond_10
    move/from16 v26, v3

    move/from16 v18, v8

    move/from16 v31, v11

    move/from16 v11, v42

    :goto_c
    move/from16 v8, v18

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating task #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": effectiveUid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    move/from16 v26, v3

    move/from16 v31, v11

    move/from16 v11, v42

    move/from16 v8, v18

    :goto_e
    const/4 v1, 0x1

    if-ge v12, v1, :cond_12

    move/from16 v15, v41

    if-ne v15, v1, :cond_13

    const/4 v1, 0x2

    if-ne v7, v1, :cond_13

    const/4 v7, 0x1

    move/from16 v0, v34

    goto :goto_f

    :cond_12
    move/from16 v15, v41

    const/4 v1, 0x3

    if-ne v7, v1, :cond_13

    const/4 v7, 0x2

    const/16 v34, 0x1

    move/from16 v0, v34

    goto :goto_f

    :cond_13
    move/from16 v0, v34

    :goto_f
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v3}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/android/server/wm/Task$Builder;->access$300(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/server/wm/Task$Builder;->access$400(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v10}, Lcom/android/server/wm/Task$Builder;->access$500(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v3, v32

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$600(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v33

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$700(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v28

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$800(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v23

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$900(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/android/server/wm/Task$Builder;->access$1000(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v3, v44

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v29, v5

    move-object/from16 v18, v6

    move-wide/from16 v5, v45

    invoke-static {v1, v5, v6}, Lcom/android/server/wm/Task$Builder;->access$1200(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v30, v3

    move/from16 v3, v47

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v34, v3

    move-object/from16 v3, v22

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1400(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v3, v27

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1500(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v21

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1600(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v20

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1700(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v48

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1800(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v35, v3

    move/from16 v3, v49

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$1900(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v36, v3

    move-object/from16 v3, v50

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2000(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v37, v3

    move-object/from16 v3, v51

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2100(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/server/wm/Task$Builder;->access$2200(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/wm/Task$Builder;->access$2300(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v38, v3

    move/from16 v3, v19

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2400(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v3, v43

    invoke-static {v1, v3}, Lcom/android/server/wm/Task$Builder;->access$2500(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v39, v3

    move/from16 v3, v53

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v40, v3

    move/from16 v3, v54

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v1

    move/from16 v41, v3

    move-object/from16 v3, v52

    iput-object v3, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v42, v3

    move-object/from16 v3, v17

    iput-object v3, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_14

    move/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object/from16 v25, v0

    const/high16 v0, -0x80000000

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_10
    if-ltz v0, :cond_15

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_14
    move/from16 v17, v0

    :cond_15
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1f
        -0x5eb23152 -> :sswitch_1e
        -0x5ccdaff6 -> :sswitch_1d
        -0x5ba06deb -> :sswitch_1c
        -0x591a685c -> :sswitch_1b
        -0x43dc2f14 -> :sswitch_1a
        -0x430d08ca -> :sswitch_19
        -0x3a0f4851 -> :sswitch_18
        -0x37680e48 -> :sswitch_17
        -0x3395d9b2 -> :sswitch_16
        -0x313f784c -> :sswitch_15
        -0x2fcb75f7 -> :sswitch_14
        -0x2a27c539 -> :sswitch_13
        -0x2a0990b3 -> :sswitch_12
        -0x20dc8352 -> :sswitch_11
        -0x1df202b3 -> :sswitch_10
        -0x158140a0 -> :sswitch_f
        -0x9b3481b -> :sswitch_e
        -0x8c511f1 -> :sswitch_d
        -0x7e175ab -> :sswitch_c
        0xac8bdb4 -> :sswitch_b
        0x13bdcee4 -> :sswitch_a
        0x1782e55f -> :sswitch_9
        0x2046b199 -> :sswitch_8
        0x24172928 -> :sswitch_7
        0x33cf43d3 -> :sswitch_6
        0x3c12eca9 -> :sswitch_5
        0x40756fcb -> :sswitch_4
        0x56e1584e -> :sswitch_3
        0x5bc3bc90 -> :sswitch_2
        0x772fa04e -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 8

    const-string v0, "noMoreActivities"

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "noMoreActivities"

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x88e815e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move v7, v0

    if-eqz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->cancelInitializingActivities()V

    if-nez v7, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    :cond_3
    iput-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    if-ne v0, v6, :cond_6

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v9, v4, v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x281163f6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v10, v11, v4, v9, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v4

    :cond_6
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-nez v0, :cond_7

    return v4

    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v10

    if-nez v10, :cond_9

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x1f73cdce

    move-object v11, v9

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return v4

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6ef9cc35

    move-object v11, v9

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v0, v5, v4, v9, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return v4

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v11, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v11}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v0

    const-string v11, "ActivityTaskManager"

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": user "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is stopped"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v12, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    const/4 v0, 0x0

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v12, v13, :cond_d

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :cond_d
    move-object v13, v0

    :goto_1
    if-nez p3, :cond_e

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v5

    goto :goto_2

    :cond_e
    move v0, v4

    :goto_2
    iget-object v14, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v15, "resumeTopActivityInnerLocked"

    if-eqz v14, :cond_10

    sget-boolean v14, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v14, :cond_f

    iget-object v14, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 v17, v7

    const v7, 0x3ae9a216

    move/from16 v18, v10

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v14, v10, v4

    const/4 v5, 0x0

    invoke-static {v9, v7, v4, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    move/from16 v17, v7

    move/from16 v18, v10

    :goto_3
    invoke-virtual {v1, v4, v6, v15}, Lcom/android/server/wm/Task;->startPausingLocked(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v0, v5

    move v5, v0

    goto :goto_4

    :cond_10
    move/from16 v17, v7

    move/from16 v18, v10

    move v5, v0

    :goto_4
    if-eqz v5, :cond_17

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2a4a2012

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v7, v4, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7, v4, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_7

    :cond_12
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_5

    :cond_13
    move v0, v4

    :goto_5
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_14

    const-string v9, "pre-top-activity"

    goto :goto_6

    :cond_14
    const-string v9, "pre-activity"

    :goto_6
    invoke-virtual {v7, v6, v4, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    :cond_15
    :goto_7
    if-eqz v13, :cond_16

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_8

    :cond_16
    const/4 v4, 0x1

    :goto_8
    return v4

    :cond_17
    iget-object v0, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_19

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_18

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x2423d534

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const/4 v14, 0x0

    invoke-static {v7, v9, v4, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    const/4 v10, 0x1

    :goto_9
    return v10

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1a
    if-eqz v2, :cond_1b

    if-eq v2, v6, :cond_1b

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_1b
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v7, v4, v9}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed trying to unstop package "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_a
    nop

    :goto_b
    const/4 v0, 0x1

    iget-object v7, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v9, 0x2

    if-eqz v2, :cond_20

    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_1d

    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_c

    :cond_1c
    invoke-virtual {v7, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_c
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v10, v0

    goto :goto_f

    :cond_1d
    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_f

    :cond_1e
    nop

    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_1f

    const/16 v10, 0x20

    goto :goto_d

    :cond_1f
    move v10, v4

    :goto_d
    const/4 v14, 0x1

    invoke-virtual {v7, v14, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_e

    :cond_20
    iget-object v10, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_f

    :cond_21
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    :goto_e
    move v10, v0

    :goto_f
    if-eqz v10, :cond_22

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_10

    :cond_22
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :goto_10
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_37

    if-eqz v12, :cond_24

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v12, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_23
    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    move v0, v4

    :goto_11
    move v14, v0

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_25

    if-eqz v14, :cond_26

    :cond_25
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_26
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v12, :cond_27

    const/4 v0, 0x0

    goto :goto_12

    :cond_27
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_12
    move-object v9, v0

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/Task$ActivityState;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_28

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move/from16 v22, v5

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    move-object/from16 v23, v0

    move-object/from16 v21, v8

    const v0, 0x5a078e8

    const/4 v8, 0x0

    invoke-static {v2, v0, v3, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_28
    move/from16 v22, v5

    move-object/from16 v21, v8

    :goto_13
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v0, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v3, v5, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v2

    xor-int/2addr v2, v5

    move v0, v2

    goto :goto_14

    :cond_29
    move v2, v0

    :goto_14
    if-eqz v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_2a

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v15, v11

    const/16 v19, 0x1

    aput-object v5, v15, v19

    move/from16 v23, v2

    move-object/from16 v16, v3

    const v2, -0xdf64aa9

    const/4 v3, 0x0

    invoke-static {v8, v2, v11, v3, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_2a
    move/from16 v23, v2

    :goto_15
    if-eq v0, v6, :cond_2b

    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    :cond_2b
    iget-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v2, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v2, 0x1

    goto :goto_17

    :cond_2d
    :goto_16
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :goto_17
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return v2

    :cond_2e
    move/from16 v23, v2

    :try_start_1
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2f

    if-lez v3, :cond_2f

    invoke-static {v2}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :cond_2f
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_30

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :cond_30
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    iget v3, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v24, v2

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v3, v5, v8, v2}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v3

    invoke-static {v2, v3}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_31

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    move-object/from16 v26, v0

    move-object/from16 v16, v2

    const v0, -0x1fcf770e

    const/4 v2, 0x0

    invoke-static {v3, v0, v8, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_18

    :cond_31
    move-object/from16 v26, v0

    :goto_18
    nop

    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    move-object/from16 v20, v7

    const/4 v5, 0x1

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v2, "resume-exception"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return v3

    :catch_3
    move-exception v0

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_32

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object/from16 v20, v7

    const/4 v7, 0x0

    aput-object v2, v8, v7

    const/16 v19, 0x1

    aput-object v3, v8, v19

    move-object/from16 v25, v0

    move-object/from16 v16, v2

    const v0, -0x71489db

    const/4 v2, 0x0

    invoke-static {v5, v0, v7, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_32
    move-object/from16 v25, v0

    move-object/from16 v20, v7

    :goto_19
    invoke-virtual {v6, v4, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    if-eqz v9, :cond_33

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v9, v0, v15}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting because process died: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_34

    const/4 v2, 0x1

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v2, 0x0

    goto :goto_1a

    :cond_34
    if-eqz v12, :cond_36

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_1a

    :cond_35
    const/4 v2, 0x0

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    :goto_1a
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x1

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return v3

    :cond_37
    move v2, v4

    move/from16 v22, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v3, 0x1

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_38

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_1b

    :cond_38
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    :goto_1b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_39

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x5e800ec8

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const/4 v8, 0x0

    invoke-static {v3, v4, v2, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_39
    const/4 v5, 0x1

    :goto_1c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6, v5, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :goto_1d
    return v5
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .locals 4

    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_0

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    if-eq v1, v2, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method private sendTaskAppeared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    return v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    :cond_2
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v4, 0x2

    if-nez v3, :cond_7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_4
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x7a744c8b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v6, v7, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x283aa656

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v1

    invoke-static {v8, v9, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_9
    iput-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    :goto_2
    nop

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    :goto_4
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    :cond_c
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_5

    :cond_d
    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    :cond_e
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_10

    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_f

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_6

    :cond_10
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    :goto_6
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v1, v2, :cond_11

    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_11
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6cb9a502

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eq v2, p0, :cond_2

    invoke-direct {v2, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_1
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    nop

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    :cond_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    nop

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    :cond_6
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_7
    if-ne p0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .locals 15

    move-object v1, p0

    const-string v0, "movePinnedActivityToOriginalTask"

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v3, "taskDisplayArea is null, bail early"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    move/from16 v5, p1

    const/4 v6, 0x0

    if-nez p2, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v7

    invoke-virtual {v2, v5, v6, v4, v7}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    if-ne v5, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedRootTask()V

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/Task;)V

    :cond_2
    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    move v10, v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_0

    :cond_4
    move v12, v8

    :goto_0
    move v10, v12

    :cond_5
    const/4 v11, 0x2

    if-ne v3, v11, :cond_6

    iget-object v12, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, p0, v6}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_6
    if-ne v10, v11, :cond_7

    invoke-virtual {p0, v8}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_7
    if-eq v10, v8, :cond_8

    if-eqz v9, :cond_8

    iget-boolean v12, v9, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_8

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    iget v14, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v14, v8, v12}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    :cond_8
    iget-object v12, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v9, :cond_9

    :try_start_0
    iget-object v12, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-super {p0, v5}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    if-ne v3, v11, :cond_a

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v13

    if-eqz v13, :cond_a

    nop

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v13

    invoke-virtual {v9, v12, v13, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/Task;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    if-eqz p2, :cond_b

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_b
    if-eqz v9, :cond_c

    if-ne v3, v8, :cond_c

    if-ne v5, v11, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v11, 0x0

    invoke-virtual {v0, v6, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v6, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method private shouldStartChangeTransition(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-ne p2, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eq v3, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSurfaceBounds()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    return-void
.end method

.method private warnForNonLeafTask(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on non-leaf task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x4f52761a

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->setActivityType(I)V

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    iget v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const v2, 0x7fffffff

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_3
    throw v2
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    return-void

    :cond_2
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    :cond_4
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    :cond_5
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    :cond_1
    const/4 v2, 0x0

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez p3, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    move-object v3, v0

    :cond_3
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    move-object v3, v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    :cond_4
    return-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adjustFocusToNextFocusableTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-object v1

    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultMinSizeOfResizeableTaskDp:I

    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move v0, v4

    :cond_0
    if-ne v1, v5, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    return-void

    :cond_6
    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_7

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_7
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_3
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xc8fcb49

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v2, v7, v9

    const/4 v9, 0x2

    aput-object v3, v7, v9

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v1, p5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .locals 0

    return-object p0
.end method

.method awakeFromSleepingLocked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    const-string v0, "ActivityTaskManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    :cond_1
    return-void
.end method

.method canAffectSystemUiFlags()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method cancelInitializingActivities()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;->INSTANCE:Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    return-void
.end method

.method cancelTaskWindowTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method checkBehindFullscreenActivity(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCheckBehindFullscreenActivityHelper:Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$CheckBehindFullscreenActivityHelper;->process(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method checkReadyForSleep()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_0
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const-string v0, "cleanUpActivityReferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method clearLastRecentsAnimationTransaction(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method clearPreserveNonFloatingState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    return-void
.end method

.method clearRootProcess()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_0
    return-void
.end method

.method completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "completePauseLocked"

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x3585dae8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v2, :cond_c

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    sget-object v3, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v3

    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    const-string v8, "completePausedLocked"

    invoke-virtual {v2, v7, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x6d8d8932

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v1, v10, v6

    invoke-static {v7, v9, v6, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, v6, v8}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move v9, v3

    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x62b1960f

    const/16 v13, 0x3c

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v4

    const/4 v15, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v7, :cond_5

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x6962ec20

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    sget-object v1, Lcom/android/server/wm/Task$ActivityState;->STOPPING:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v2, v1, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_7
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    invoke-virtual {v2, v4, v6, v1}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x58f8bc9e

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v6

    invoke-static {v7, v8, v6, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    move-object v2, v1

    :cond_a
    :goto_0
    if-eqz v2, :cond_b

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :cond_b
    iput-object v5, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_c
    if-eqz p1, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    :cond_e
    move-object v3, v5

    if-eqz v3, :cond_f

    if-eqz v2, :cond_10

    if-eq v3, v2, :cond_10

    :cond_f
    iget-object v4, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_10
    :goto_1
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v6, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_13
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    :cond_0
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    :cond_1
    const v6, 0x3bcccccd    # 0.00625f

    mul-float/2addr v5, v6

    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    if-eqz v3, :cond_4

    move v10, v9

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_5
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v11

    if-nez v10, :cond_8

    const/4 v12, 0x5

    if-eq v4, v12, :cond_8

    if-eqz v8, :cond_6

    iget-object v12, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    move-object v12, v13

    :goto_4
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_8
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v12, :cond_9

    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_14

    :cond_9
    if-nez v10, :cond_a

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_a
    if-nez v10, :cond_d

    if-nez p3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-eqz v12, :cond_d

    :cond_b
    if-eqz p3, :cond_c

    move-object/from16 v12, p3

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    :goto_5
    nop

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15, v12}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    goto :goto_6

    :cond_d
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    iget-object v14, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    :cond_e
    if-eq v12, v13, :cond_f

    if-eqz v10, :cond_f

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v13, v12}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v12

    invoke-static {v13, v14, v15}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_f
    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_6
    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v12, :cond_11

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    if-eqz v8, :cond_10

    if-nez v10, :cond_10

    iget v13, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_7

    :cond_10
    move v13, v12

    :goto_7
    iput v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11
    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v12, :cond_13

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    iget v13, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_8

    :cond_12
    move v13, v12

    :goto_8
    iput v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_13
    iget v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v12, :cond_14

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/Task;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    iput v12, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_14
    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v12, :cond_16

    iget v12, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v12, v13, :cond_15

    goto :goto_9

    :cond_15
    const/4 v9, 0x2

    :goto_9
    iput v9, v1, Landroid/content/res/Configuration;->orientation:I

    :cond_16
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_19

    iget-object v9, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v5

    float-to-int v12, v12

    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_17

    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_17
    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v13, :cond_18

    iget v12, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_18
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v12}, Lcom/android/server/wm/Task;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    :cond_19
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/Task;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method cropWindowsToRootTaskBounds()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eq p0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method dismissPip()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchTaskInfoChangedIfNeeded(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_0
    return-void
.end method

.method dontAnimateDimExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_e

    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v3, "null"

    if-nez v2, :cond_10

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_14

    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_17

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNotOrganized:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceNotOrganized=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Exiting application tokens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exiting App #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v2, "AnimatingApps:"

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .locals 13

    move-object v8, p0

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    move-object v9, p2

    move/from16 v10, p6

    invoke-direct {v0, p0, v10, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/Task;ZLjava/io/PrintWriter;)V

    const/4 v1, 0x0

    if-nez p5, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v11, v0

    move v0, v1

    goto :goto_0

    :cond_0
    move-object v11, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mPausingActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v5, "    mResumedActivity: "

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz p3, :cond_1

    iget-object v2, v8, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "    mLastPausedActivity: "

    move-object v1, p2

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    or-int/2addr v0, v1

    move v12, v0

    goto :goto_1

    :cond_1
    move v12, v0

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/Task;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    or-int/2addr v0, v12

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    const-wide v3, 0x1090000000dL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    const-wide v3, 0x1090000000eL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_3
    const-wide v2, 0x10500000011L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1090000001dL

    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x1080000001eL

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    :try_start_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_0
    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    :goto_2
    if-nez v0, :cond_3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    goto :goto_3

    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_3
    iput-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v5

    :goto_4
    iput-object v4, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_5

    :cond_6
    move-object v4, v5

    :goto_5
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v4, p1, Landroid/app/TaskInfo;->numActivities:I

    iget-wide v6, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v6, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v4, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget-object v4, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_7

    iget v6, v4, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_6

    :cond_7
    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_6
    iput v6, p1, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    iput v6, p1, Landroid/app/TaskInfo;->topActivityType:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->isResizeable:Z

    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_7

    :cond_8
    move-object v6, v5

    :goto_7
    iput-object v6, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_8

    :cond_9
    move-object v6, v5

    :goto_8
    iput-object v6, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    :goto_9
    iput-boolean v1, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    iget-object v1, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v1, v2, :cond_b

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_b

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_a

    :cond_b
    const/4 v2, -0x1

    :goto_a
    iput v2, p1, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->isFocused:Z

    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v2

    iput-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    :cond_c
    iput-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    return-void
.end method

.method fillsParent()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method finishAllActivitiesImmediately()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "finishAllActivitiesImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lcom/android/server/wm/Task$ActivityState;->STARTED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v7, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    sget-object v8, Lcom/android/server/wm/Task$ActivityState;->PAUSING:Lcom/android/server/wm/Task$ActivityState;

    sget-object v9, Lcom/android/server/wm/Task$ActivityState;->PAUSED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v6, v7, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    const-class v1, Lcom/android/server/wm/Task;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Function;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method forAllOccludedActivities(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Function;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method forAllTasks(Ljava/util/function/Function;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivityType()I
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDescendantTaskCount()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    const-class v3, Lcom/android/server/wm/Task;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    sget-object v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const-class v6, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v6

    invoke-static {v5, v6, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayCutoutInsets()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_0
    nop

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    return-object v1

    :cond_4
    :goto_3
    return-object v1
.end method

.method getDisplayId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_0
    return-object v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    const/16 v3, 0x1b

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method getHasBeenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getItemFromRootTasks(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/Task;",
            "TR;>;Z)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method getMainWindowSizeChangeTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getMainWindowSizeChangeTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMainWindowSizeChangeTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getOrganizedTask()Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getOrientation(I)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getRootTaskId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getSnapshot(ZZ)Landroid/window/TaskSnapshot;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .locals 5

    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    nop

    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    nop

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_2

    nop

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    iput-object v4, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput-object v4, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :cond_2
    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    return-object v0
.end method

.method getTaskOutset()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mRenderShadowsInCompositor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    :cond_1
    return v1
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v2, p0

    goto/16 :goto_9

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->isTopActivityLaunchedBehind()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v11

    if-ne v11, v2, :cond_2

    return v2

    :cond_2
    if-ne v11, v12, :cond_3

    const/4 v6, 0x1

    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v14

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v12

    :goto_0
    if-ltz v15, :cond_16

    invoke-virtual {v10, v15}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_4

    move-object/from16 v2, p0

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_5

    move/from16 v17, v12

    goto :goto_1

    :cond_5
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v2, p0

    if-ne v3, v2, :cond_8

    if-nez v17, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    if-nez v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v18

    if-eqz v18, :cond_6

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v18, v12

    :goto_3
    move/from16 v9, v18

    move/from16 v18, v1

    goto/16 :goto_6

    :cond_8
    if-nez v17, :cond_9

    goto/16 :goto_5

    :cond_9
    move/from16 v18, v1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-ne v1, v12, :cond_b

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v6, 0x1

    move/from16 v1, v18

    goto/16 :goto_5

    :cond_a
    const/4 v12, 0x2

    return v12

    :cond_b
    const/4 v12, 0x6

    if-ne v1, v12, :cond_d

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v6, 0x1

    move/from16 v1, v18

    goto :goto_5

    :cond_c
    const/4 v12, 0x2

    return v12

    :cond_d
    const/4 v12, 0x3

    if-ne v1, v12, :cond_e

    if-nez v4, :cond_e

    const/16 v18, 0x1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    xor-int/lit8 v20, v7, 0x1

    move/from16 v4, v20

    if-ne v13, v12, :cond_f

    if-eqz v4, :cond_f

    const/4 v12, 0x2

    return v12

    :cond_e
    const/4 v12, 0x4

    if-ne v1, v12, :cond_f

    if-nez v5, :cond_f

    const/16 v18, 0x1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    xor-int/lit8 v20, v8, 0x1

    move/from16 v5, v20

    if-ne v13, v12, :cond_f

    if-eqz v5, :cond_f

    const/4 v12, 0x2

    return v12

    :cond_f
    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    const/4 v12, 0x2

    return v12

    :cond_10
    const/4 v12, 0x2

    if-eqz v14, :cond_11

    if-eqz v18, :cond_11

    return v12

    :cond_11
    iget-object v12, v3, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_15

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, v3, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto :goto_4

    :cond_12
    const/4 v12, 0x2

    return v12

    :cond_13
    :goto_4
    const/4 v6, 0x1

    move/from16 v1, v18

    goto :goto_5

    :cond_14
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    move/from16 v1, v18

    :goto_5
    add-int/lit8 v15, v15, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v2, p0

    move/from16 v18, v1

    :goto_6
    if-nez v9, :cond_17

    const/4 v1, 0x2

    return v1

    :cond_17
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_7

    :pswitch_1
    if-eqz v8, :cond_18

    const/4 v1, 0x1

    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_7

    :pswitch_2
    const/4 v1, 0x1

    if-eqz v7, :cond_1a

    return v1

    :pswitch_3
    const/4 v1, 0x1

    if-nez v7, :cond_19

    if-eqz v8, :cond_1a

    :cond_19
    const/4 v1, 0x2

    return v1

    :cond_1a
    :goto_7
    if-eqz v6, :cond_1b

    move v3, v1

    goto :goto_8

    :cond_1b
    const/4 v3, 0x0

    :goto_8
    return v3

    :cond_1c
    move-object/from16 v2, p0

    :goto_9
    const/4 v1, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method goToSleepIfPossible(Z)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [I

    aput v2, v0, v2

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v3, p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>(Z[I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x26c235ca

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v3, "sleep"

    invoke-virtual {p0, v2, v1, v4, v3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x3f8fb992

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v5, v6, v2, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->containsActivityFromRootTask(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v5, v3

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x705a3c51

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v3, v7, v1, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    const/4 v0, 0x0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, v4, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_8
    return v0
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 7

    const-string v0, "handleAppDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x197a7b00

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_3
    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method hasWindowsAlive()Z
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysOnTop()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method isAnimatingByRecents()Z
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isClearingToReuseTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method public isCompatible(II)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isDragResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFloating()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusableAndVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocused()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method isFocusedRootTaskOnDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isForceHidden()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isHomeOrRecentsRootTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method isInChangeTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    return-object v0
.end method

.method isLeafTask()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOrganized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method isRootTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isTaskId(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTopActivityFocusable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTopRootTaskInDisplayArea()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method isUidPresent(I)Z
    .locals 3

    sget-object v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda13;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return v1
.end method

.method public synthetic lambda$dismissPip$31$Task()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public synthetic lambda$dump$27$Task(ZLjava/io/PrintWriter;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  RootTask #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCreatedByOrganizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$dumpActivities$28$Task(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    const-string v0, "    "

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "* "

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mBounds="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " mMinHeight="

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p6, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p4, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p6, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    const-string v0, "      "

    invoke-virtual {p6, p4, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$dumpActivities$29$Task(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;Ljava/io/FileDescriptor;ZZLcom/android/server/wm/Task;)V
    .locals 16

    const-string v0, "    "

    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Task;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Lcom/android/server/wm/Task;)V

    if-nez p6, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v2, v14}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    move-object/from16 v15, p10

    invoke-virtual {v15, v2, v3}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;Z)V

    const/4 v7, 0x1

    xor-int/lit8 v8, p8, 0x1

    const/4 v11, 0x0

    const-string v5, "    "

    const-string v6, "Hist"

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move-object v4, v14

    move/from16 v9, p9

    move-object/from16 v10, p6

    move-object v12, v1

    move-object/from16 v13, p10

    invoke-static/range {v2 .. v13}, Lcom/android/server/wm/ActivityTaskSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    return-void
.end method

.method public synthetic lambda$getNextFocusableTask$8$Task(ZLjava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$inFrontOfStandardRootTask$24$Task([ZLcom/android/server/wm/Task;)Z
    .locals 3

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-ne p2, p0, :cond_1

    aput-boolean v2, p1, v0

    :cond_1
    return v0
.end method

.method public synthetic lambda$performClearTask$5$Task(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setWindowingMode$16$Task(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    :pswitch_1
    const-string v0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object v0

    :pswitch_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    :pswitch_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    :pswitch_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method maybeApplyLastRecentsAnimationTransaction()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    :cond_1
    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x456f6dcc    # -0.00110299f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1b9e2278

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_0
    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    :cond_3
    const-string v0, "moveTaskToBackLocked"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    return v3

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v2, v4, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eq v1, p0, :cond_5

    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :goto_1
    return v3
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x3

    if-eq p1, p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    :goto_1
    return-void

    :cond_2
    if-eqz p4, :cond_3

    sget-object v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {v4, v5, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    :goto_2
    invoke-direct {p0, v2, p1, v1, p3}, Lcom/android/server/wm/Task;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_6
    if-nez p5, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    nop

    return-void

    :cond_8
    :goto_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_9
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    throw v1
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    :goto_1
    if-eqz p2, :cond_3

    if-eq p2, p0, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-ne p2, p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez p2, :cond_4

    move-object p2, p0

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    if-eq v8, v2, :cond_2

    if-eqz v7, :cond_2

    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v8, v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v5, v8, v2, v4, v9}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_2

    move-object v0, v8

    const/4 v6, 0x1

    move v8, v6

    move-object v6, v0

    goto :goto_0

    :cond_2
    move v8, v6

    move-object v6, v0

    :goto_0
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, -0x1

    if-eqz v15, :cond_3

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v12, 0x1

    :try_start_0
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v15, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_1
    if-nez v12, :cond_3

    return v4

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    new-array v14, v9, [I

    aput p4, v14, v4

    new-array v13, v9, [Landroid/content/Intent;

    aput-object p5, v13, v4

    new-array v12, v9, [Lcom/android/server/uri/NeededUriGrants;

    aput-object p6, v12, v4

    move-object v11, v6

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v0, v11, v14, v13, v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v5, v0, v2, v9, v9}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;Lcom/android/server/wm/WindowContainer;ZZ)Z

    aget v18, v14, v4

    aget-object v19, v13, v4

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v15

    iget v15, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    const/4 v0, 0x3

    if-eq v15, v0, :cond_6

    const/4 v0, 0x2

    if-eq v15, v0, :cond_6

    if-eq v15, v9, :cond_6

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_4

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    goto/16 :goto_5

    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget v10, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v25, v5

    const/16 v5, 0x400

    :try_start_2
    invoke-interface {v0, v9, v5, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    const-string v9, "navigateUpTo"

    invoke-virtual {v5, v3, v9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    move v0, v9

    move v8, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v25, v5

    :goto_3
    const/4 v5, 0x0

    move v8, v5

    :goto_4
    const/4 v0, 0x1

    const-string v5, "navigate-top"

    move-object v10, v6

    move-object v9, v11

    move/from16 v11, v18

    move-object/from16 v20, v12

    move-object/from16 v12, v19

    move-object/from16 v23, v13

    move-object/from16 v13, p6

    move-object/from16 v24, v14

    move-object v14, v5

    move-object/from16 v5, v21

    move/from16 v21, v15

    move v15, v0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v10, p3

    goto :goto_6

    :cond_6
    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v5, v21

    move/from16 v21, v15

    :goto_5
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v10, p3

    invoke-virtual {v6, v4, v3, v10, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v10, p3

    move-object/from16 v25, v5

    move-object v9, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object v5, v15

    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onActivityStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    if-ne p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_2
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    if-eq v0, v5, :cond_3

    invoke-virtual {v4, p0}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v5, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eq v2, v6, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    move v8, v7

    :goto_0
    if-eqz v8, :cond_6

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9, v2, v6, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eq v1, v6, :cond_7

    const v6, 0x7fffffff

    invoke-virtual {v4, v6, p0, v7}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_7
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    :cond_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/ConfigurationContainer;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_5
    if-eqz p2, :cond_8

    move-object v3, p2

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_6

    sget-object v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    :cond_6
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_9

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v3, v4}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_9
    :goto_3
    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method onSizeCompatActivityChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method performClearTask(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    nop

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    throw v1
.end method

.method performClearTaskLocked()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "clear-task-all"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    throw v1
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    :cond_1
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p1, p0, :cond_1

    const-string v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    :cond_1
    return-void
.end method

.method preserveOrientationOnResize()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

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

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method removeIfPossible()V
    .locals 1

    const-string v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method removeIfPossible(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    :cond_1
    return-void
.end method

.method removeImmediately()V
    .locals 1

    const-string v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    return-void
.end method

.method removeLaunchTickMessages()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method removedFromRecents()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mPreserveNonFloatingState:Z

    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    iget-object v7, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ne v3, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    invoke-virtual {v7, v1, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v12

    if-ne v12, v10, :cond_1

    return v11

    :cond_1
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v13

    if-nez v13, :cond_2

    return v11

    :cond_2
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-static {v15, v13}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    move v15, v11

    :goto_1
    if-eqz v15, :cond_4

    iget-object v11, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v9, v11, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    :cond_4
    iget-object v11, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v8, v10}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v8

    move-object v8, v9

    move-object/from16 v9, p1

    goto/16 :goto_c

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v17, :cond_6

    move-object/from16 v17, v8

    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v8, v0, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v9

    move-object/from16 v2, v17

    move-object/from16 v9, p1

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v8

    move-object v8, v9

    move-object/from16 v9, p1

    goto/16 :goto_c

    :cond_6
    move-object/from16 v17, v8

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v4, :cond_9

    move-object/from16 v18, v9

    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    if-nez v2, :cond_a

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v18, v9

    :cond_a
    :goto_4
    const/4 v9, 0x1

    :goto_5
    :try_start_4
    invoke-virtual {v1, v12, v3, v9, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p6, :cond_b

    :try_start_5
    invoke-virtual {v7, v1, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    goto/16 :goto_c

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v12, v6}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    move/from16 v19, v2

    sget-object v2, Lcom/android/server/wm/Task$ActivityState;->RESUMED:Lcom/android/server/wm/Task$ActivityState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/Task$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v0, v2, :cond_d

    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move/from16 v19, v2

    :cond_d
    :goto_7
    if-nez v5, :cond_e

    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v2, 0x3

    if-ne v13, v2, :cond_f

    const/4 v2, 0x1

    if-ne v4, v2, :cond_f

    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveRecentsRootTaskToFront(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    if-eqz v15, :cond_10

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    xor-int/lit8 v2, v11, 0x1

    move-object/from16 v8, v18

    invoke-virtual {v8, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    goto :goto_8

    :cond_10
    move-object/from16 v8, v18

    :goto_8
    if-nez p5, :cond_12

    const/4 v0, 0x0

    if-nez v15, :cond_11

    const/4 v9, 0x1

    goto :goto_9

    :cond_11
    const/4 v9, 0x0

    :goto_9
    move-object/from16 v2, v17

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_a

    :cond_12
    move-object/from16 v2, v17

    const/4 v3, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    iget-object v9, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v7, v1, v0, v9, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    move-object/from16 v9, p1

    if-ne v9, v12, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    move v0, v3

    :goto_b
    return v0

    :catchall_4
    move-exception v0

    move-object/from16 v9, p1

    move-object/from16 v2, v17

    move-object/from16 v8, v18

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v20, v9

    move-object v9, v2

    move-object v2, v8

    move-object/from16 v8, v20

    :goto_c
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .locals 9

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 4

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object p1, v3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    const-class v3, Lcom/android/server/wm/Task;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resize(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    :cond_0
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v1

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    :cond_3
    const/4 v1, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v1

    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v0, v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/Task;->resolveLeafOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-object v0
.end method

.method resumeNextFocusAfterReparent()V
    .locals 3

    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    move v0, v3

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_5

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v0, v5

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    nop

    return v0

    :catchall_0
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    throw v2
.end method

.method returnsToHomeRootTask()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const v3, 0x10004000

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v4, 0x10004000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-object p0
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p8

    move-object v14, v0

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    :goto_0
    nop

    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move-object/from16 v12, p4

    invoke-static {v1, v12}, Lcom/android/server/wm/Task$Builder;->access$2600(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    move/from16 v13, p5

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v14, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    move v15, v0

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v16

    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v1, v14

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_3
    return-object v14
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const-string v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_3

    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_2
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    move-object v2, v0

    :cond_4
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const-string v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    const-string v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    const-string v0, "last_time_moved"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    const-string v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    :cond_8
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const-string v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const-string v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_9
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    move-object v2, v0

    :goto_1
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const-string v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    const-string v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const-string v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    const-string v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x1

    const-string v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_task_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_content_insets"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_snapshot_buffer_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_f

    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_10

    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_11

    return-void

    :cond_11
    throw v1
.end method

.method setActivityWindowingMode(I)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    return-void
.end method

.method setAdjacentTask(Lcom/android/server/wm/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    iput-object p0, p1, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setAlwaysOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    :cond_2
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz p2, :cond_0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    or-int/lit8 v1, v0, 0x2

    return v1

    :cond_0
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return-void
.end method

.method setDeferTaskAppear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_0
    return-void
.end method

.method setDragResizing(ZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for root task id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    :cond_2
    return-void
.end method

.method setForceHidden(IZ)Z
    .locals 7

    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz p2, :cond_0

    or-int/2addr v0, p1

    goto :goto_0

    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    if-eq v1, v3, :cond_3

    const-string v4, "setForceHidden"

    const-string v5, "setForceHidden"

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v4, 0x1

    return v4
.end method

.method setForceShowForAllUsers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    return-void
.end method

.method setHasBeenVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_1
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_1
    if-eqz p3, :cond_3

    move-object v1, p3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 1

    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    :goto_0
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    return-void
.end method

.method setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedTaskController;->setActions(Ljava/util/List;)V

    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedTaskController()Lcom/android/server/wm/PinnedTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedTaskController;->getAspectRatio()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    nop

    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedTaskController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, p1

    goto :goto_0

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/PinnedTaskController;->setAspectRatio(F)V

    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    return-void
.end method

.method setResizeMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setResumedActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded()V

    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v0

    return v0
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3

    const-string v1, "setTaskOrganizer"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setWindowingMode(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    return-void
.end method

.method setWindowingMode(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/Task;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method shouldAnimate()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldDeferRemoval()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasWindowsAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method shouldIgnoreInput()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeRootTaskWithLaunchBounds()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_0

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

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method showForAllUsers()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method showSurfaceOnCreation()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method showToCurrentUser()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v9, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    move v11, v3

    if-eq v10, v0, :cond_3

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    :goto_3
    move v12, v3

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_5

    if-eqz v11, :cond_5

    if-eqz v12, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v13, "here"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_7

    sget-boolean v16, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v16, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v16, v5, v2

    aput-object v17, v5, v1

    aput-object v6, v5, v4

    const v1, -0x6544f687

    invoke-static {v13, v1, v2, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v10, v7}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    if-ne v3, v15, :cond_8

    iget-object v6, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-eq v6, v14, :cond_8

    iget-object v6, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v2, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    :cond_8
    move-object v14, v15

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_9

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v6, v5, v1

    const/16 v16, 0x2

    aput-object v4, v5, v16

    move-object/from16 v18, v3

    const v1, -0x6544f687

    const/4 v3, 0x0

    invoke-static {v13, v1, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v14, v7}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_a
    if-eqz v11, :cond_16

    iget-object v13, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_b

    invoke-virtual {v13, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v1, 0x6

    if-eqz p3, :cond_e

    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_c

    const/16 v1, 0x10

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    invoke-direct {v0, v8, v3, v7, v9}, Lcom/android/server/wm/Task;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    goto :goto_4

    :cond_d
    const/4 v3, 0x1

    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v13, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_6
    const/4 v1, 0x1

    if-eqz p3, :cond_10

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    invoke-virtual {v0, v7, v7}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v7, :cond_f

    const/4 v3, 0x1

    goto :goto_7

    :cond_f
    move v3, v2

    :goto_7
    move v1, v3

    move/from16 v18, v1

    goto :goto_8

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_8

    :cond_11
    move/from16 v18, v1

    :goto_8
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_a

    :cond_12
    if-eqz v18, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v2, v6, :cond_13

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_9

    :cond_13
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_9

    :cond_14
    move-object/from16 v16, v1

    :goto_9
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/Task;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, p3

    move-object/from16 v17, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    :cond_15
    :goto_a
    goto :goto_b

    :cond_16
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_b
    return-void
.end method

.method final startPausingLocked(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/Task;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_1

    new-array v0, v10, [I

    aput v11, v0, v11

    new-instance v12, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    move-object v2, v12

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget v2, v0, v11

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    return v10

    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/Task$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v11, v9}, Lcom/android/server/wm/Task;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_4

    if-nez v9, :cond_3

    const-string v0, "Trying to pause when nothing is resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_3
    return v11

    :cond_4
    if-ne v3, v9, :cond_5

    const-string v0, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x10a7dd47

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v11

    invoke-static {v5, v6, v11, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-object v3, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lcom/android/server/wm/Task$ActivityState;->PAUSING:Lcom/android/server/wm/Task$ActivityState;

    const-string v5, "startPausingLocked"

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/Task$ActivityState;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v9, :cond_a

    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_a

    if-eqz v3, :cond_8

    const-string v6, "shouldResumeWhilePausing"

    invoke-virtual {v3, v6, v8}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v10

    goto :goto_1

    :cond_8
    move v6, v11

    :goto_1
    if-eqz v6, :cond_9

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v7}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v5, 0x1

    move v6, v5

    move v5, v0

    goto :goto_2

    :cond_9
    if-nez v6, :cond_a

    const/4 v0, 0x1

    move v6, v5

    move v5, v0

    goto :goto_2

    :cond_a
    move v6, v5

    move v5, v0

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v6, :cond_c

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x3bb1d3d1

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v0, v13, v11

    invoke-static {v2, v12, v11, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v7

    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v15, p4

    goto :goto_5

    :cond_c
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x70e7ce00

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v0, v14, v11

    invoke-static {v12, v13, v11, v4, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :try_start_0
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "userLeaving="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p4

    :try_start_1
    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v12, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v14, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v3, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v14, v8, v10, v5}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v10

    invoke-virtual {v0, v12, v13, v10}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v15, p4

    :goto_3
    const-string v10, "Exception thrown during pause"

    invoke-static {v2, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_4
    goto :goto_5

    :cond_e
    move-object/from16 v15, p4

    iput-object v4, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v1, Lcom/android/server/wm/Task;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_5
    if-nez p2, :cond_f

    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Task;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    if-nez v7, :cond_13

    if-nez p2, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_6

    :cond_10
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x18e2c569

    move-object v10, v4

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v11, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_6
    if-eqz v5, :cond_12

    invoke-virtual {v1, v11, v9}, Lcom/android/server/wm/Task;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    return v11

    :cond_12
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    const/4 v2, 0x1

    return v2

    :cond_13
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x6e1d4f8e

    move-object v10, v4

    check-cast v10, [Ljava/lang/Object;

    invoke-static {v0, v2, v11, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    if-nez v9, :cond_15

    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_15
    return v11
.end method

.method supportsFreeform()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method supportsMultiWindow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " attached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(II)Z

    move-result v0

    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method switchUser(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1
    return-void
.end method

.method taskAppearedReady()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p0, :cond_0

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " translucent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topActivityWithStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    sget-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object v1
.end method

.method touchActiveTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    return-void
.end method

.method unhandledBackLocked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskOutset()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method updateTaskDescription()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    sget-object v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainFunction(Lcom/android/internal/util/function/TriFunction;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycle()V

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method updateTaskMovement(ZI)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    :cond_1
    return-void
.end method

.method updateTaskOrganizerState(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(ZZ)Z

    move-result v0

    return v0
.end method

.method updateTaskOrganizerState(ZZ)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v3

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-ne v4, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v1

    return v1
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Task"

    :goto_0
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
