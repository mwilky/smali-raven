.class final Lcom/android/server/wm/ActivityRecord;
.super Lcom/android/server/wm/WindowToken;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityRecord$Builder;,
        Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;,
        Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;,
        Lcom/android/server/wm/ActivityRecord$FinishRequest;,
        Lcom/android/server/wm/ActivityRecord$AddStartingWindow;,
        Lcom/android/server/wm/ActivityRecord$Token;,
        Lcom/android/server/wm/ActivityRecord$TransferSplashScreenState;,
        Lcom/android/server/wm/ActivityRecord$LaunchSourceType;,
        Lcom/android/server/wm/ActivityRecord$State;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMFEATURE:Ljava/lang/String; = "launched_from_feature"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final FINISH_RESULT_CANCELLED:I = 0x0

.field static final FINISH_RESULT_REMOVED:I = 0x2

.field static final FINISH_RESULT_REQUESTED:I = 0x1

.field static final INVALID_PID:I = -0x1

.field static final LAUNCH_SOURCE_TYPE_APPLICATION:I = 0x4

.field static final LAUNCH_SOURCE_TYPE_HOME:I = 0x2

.field static final LAUNCH_SOURCE_TYPE_SYSTEM:I = 0x1

.field static final LAUNCH_SOURCE_TYPE_SYSTEMUI:I = 0x3

.field private static final LAUNCH_TICK:I = 0x1f4

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2

.field private static final STOP_TIMEOUT:I = 0x2af8

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field static final TRANSFER_SPLASH_SCREEN_ATTACH_TO_CLIENT:I = 0x2

.field static final TRANSFER_SPLASH_SCREEN_COPYING:I = 0x1

.field static final TRANSFER_SPLASH_SCREEN_FINISH:I = 0x3

.field static final TRANSFER_SPLASH_SCREEN_IDLE:I = 0x0

.field private static final TRANSFER_SPLASH_SCREEN_TIMEOUT:I = 0x7d0

.field private static sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;


# instance fields
.field allDrawn:Z

.field app:Lcom/android/server/wm/WindowProcessController;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Lcom/android/server/wm/ActivityRecord$Token;

.field final assistToken:Landroid/os/Binder;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field finishing:Z

.field firstWindowDrawn:Z

.field forceNewConfig:Z

.field frozenBeforeDestroy:Z

.field hasBeenLaunched:Z

.field private icon:I

.field idle:Z

.field immersive:Z

.field inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromFeatureId:Ljava/lang/String;

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field lockTaskLaunchMode:I

.field private logo:I

.field final mActivityComponent:Landroid/content/ComponentName;

.field private final mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

.field mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mAppStopped:Z

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mClientVisibilityDeferred:Z

.field private final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field private mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field private mConfigurationSeq:I

.field private mCurrentLaunchCanTurnScreenOn:Z

.field private mDeferHidingClient:Z

.field private final mDestroyTimeoutRunnable:Ljava/lang/Runnable;

.field mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFreezingScreen:Z

.field mHandleExitSplashScreen:Z

.field mHandoverLaunchDisplayId:I

.field mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mHaveState:Z

.field private mIcicle:Landroid/os/Bundle;

.field mImeInsetsFrozenUntilStartInput:Z

.field private mInSizeCompatModeForBounds:Z

.field private mInheritShownWhenLocked:Z

.field private mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field mInputDispatchingTimeoutMillis:J

.field private mIsAspectRatioApplied:Z

.field mIsExiting:Z

.field private mLastAllDrawn:Z

.field mLastAllReadyAtSync:Z

.field private mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastContainsTurnScreenOnWindow:Z

.field private mLastDeferHidingClient:Z

.field mLastImeShown:Z

.field mLastNewIntent:Landroid/content/Intent;

.field private mLastParentBeforePip:Lcom/android/server/wm/Task;

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field mLastReportedMultiWindowMode:Z

.field mLastReportedPictureInPictureMode:Z

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchCookie:Landroid/os/IBinder;

.field mLaunchRootTask:Landroid/window/WindowContainerToken;

.field private final mLaunchSourceType:I

.field private final mLaunchTickRunnable:Ljava/lang/Runnable;

.field private mLaunchedFromBubble:Z

.field private mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

.field final mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

.field private mLocusId:Landroid/content/LocusId;

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mOccludesParent:Z

.field mOverrideTaskTransition:Z

.field private final mPauseTimeoutRunnable:Ljava/lang/Runnable;

.field private mPendingOptions:Landroid/app/ActivityOptions;

.field private mPendingRelaunchCount:I

.field private mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

.field private mPendingRemoteTransition:Landroid/window/RemoteTransition;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field mRelaunchReason:I

.field mRelaunchStartTime:J

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private mRemovingFromDisplay:Z

.field private mReportedDrawn:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRequestForceTransition:Z

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mRotationAnimationHint:I

.field mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field private mSharedStartingData:Lcom/android/server/wm/StartingData;

.field final mShowForAllUsers:Z

.field private mShowWhenLocked:Z

.field private mSizeCompatBounds:Landroid/graphics/Rect;

.field private mSizeCompatScale:F

.field private mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field mSplashScreenStyleEmpty:Z

.field mStartingData:Lcom/android/server/wm/StartingData;

.field mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field mStartingWindow:Lcom/android/server/wm/WindowState;

.field private mState:Lcom/android/server/wm/ActivityRecord$State;

.field private final mStopTimeoutRunnable:Ljava/lang/Runnable;

.field mTargetSdk:I

.field private mTaskOverlay:Z

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpOutNonDecorBounds:Landroid/graphics/Rect;

.field private final mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

.field mTransferringSplashScreenState:I

.field private mTurnScreenOn:Z

.field mUseTransferredAnimation:Z

.field final mUserId:I

.field private mVisible:Z

.field mVisibleRequested:Z

.field private mVisibleSetFromTransferredStartingWindow:Z

.field mVoiceInteraction:Z

.field mWaitForEnteringPinnedMode:Z

.field private mWillCloseOrEnterPip:Z

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field noDisplay:Z

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field reportedVisible:Z

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/wm/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final shareableActivityToken:Landroid/os/Binder;

.field final shortComponentName:Ljava/lang/String;

.field startingDisplayed:Z

.field startingMoved:Z

.field final stateNotNeeded:Z

.field stopped:Z

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/wm/Task;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field topResumedStateLossTime:J

.field uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private windowFlags:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p17

    move-wide/from16 v14, p21

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-direct {v0, v11}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/wm/ActivityRecord;->createTime:J

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    iput v5, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    new-instance v1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v7, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v7, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mInSizeCompatModeForBounds:Z

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    iput v5, v7, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mTmpOutNonDecorBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$1;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord$1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$2;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord$2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$3;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord$3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$4;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord$4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    const/4 v4, 0x0

    invoke-direct {v1, v7, v4}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$1;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$5;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityRecord$5;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    check-cast v1, Lcom/android/server/wm/ActivityRecord$Token;

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iput-object v12, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v11, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_0

    iget v4, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v4, v6, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_1
    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v4, v7, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    iget v4, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    iget v4, v12, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->setOrientation(I)V

    iget v4, v12, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v4, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    iget v4, v12, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    iget v4, v12, Landroid/content/pm/ActivityInfo;->privateFlags:I

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    iget v4, v12, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    if-nez v4, :cond_8

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_7

    const v5, 0x1030005

    goto :goto_6

    :cond_7
    const v5, 0x103006b

    :goto_6
    move v4, v5

    move v6, v4

    goto :goto_7

    :cond_8
    move v6, v4

    :goto_7
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v2, v6, v5, v3}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v4, v5, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v5, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    move/from16 v21, v6

    const/16 v6, 0xe

    const/4 v14, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    move/from16 v21, v6

    :goto_8
    const/4 v4, 0x1

    :goto_9
    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    iget-object v4, v5, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v6, 0xa

    const/4 v14, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    goto :goto_a

    :cond_b
    move/from16 v21, v6

    const/4 v14, 0x0

    iput-boolean v14, v7, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    :goto_a
    if-eqz v13, :cond_d

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v4

    iput-boolean v4, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v4

    if-ltz v4, :cond_c

    iput v4, v7, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    :cond_c
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v6

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    :cond_d
    const-class v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    invoke-static {v1, v7}, Lcom/android/server/wm/ActivityRecord$Token;->access$200(Lcom/android/server/wm/ActivityRecord$Token;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v14, p3

    iput v14, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iput v10, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move-object/from16 v15, p5

    iput-object v15, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v4, p6

    iput-object v4, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-direct {v7, v10, v9}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v0, p14

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    move-object/from16 v22, v6

    move/from16 v6, p15

    iput-boolean v6, v7, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v6, p10

    invoke-direct {v0, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v6, p12

    iput-object v6, v7, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v6, p13

    iput v6, v7, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "ActivityRecord ctor"

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    const/4 v0, 0x1

    invoke-super {v7, v0}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->idle:Z

    iput-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    move-object/from16 v0, p16

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v23, v2

    iget v2, v7, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_f

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    goto :goto_b

    :cond_e
    move-object/from16 v24, v2

    goto :goto_b

    :cond_f
    move-object/from16 v24, v2

    :goto_b
    sget-object v0, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    if-nez v0, :cond_10

    new-instance v0, Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-direct {v0}, Landroid/content/pm/ConstrainDisplayApisConfig;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    :cond_10
    iget v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v0, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v7, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    :cond_12
    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->icon:I

    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->logo:I

    invoke-virtual/range {p9 .. p9}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->theme:I

    iget v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_13

    iget v0, v7, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    :cond_13
    iget v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    if-eqz v9, :cond_15

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v9, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_15

    :cond_14
    iget-object v0, v9, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_15
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :goto_d
    iget v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_16
    iget v0, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    move-object/from16 v0, p0

    const/16 v18, 0x0

    move/from16 v1, p14

    move-object/from16 v6, v23

    move-object/from16 v19, v24

    move/from16 v2, p4

    move v9, v3

    move-object/from16 v3, p7

    const/16 v16, 0x0

    move-object/from16 v4, p17

    move/from16 v20, v18

    move-object/from16 v18, v5

    move-object/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    iget v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_17

    move/from16 v0, v17

    goto :goto_e

    :cond_17
    move/from16 v0, v20

    :goto_e
    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_18

    move-object/from16 v4, v16

    goto :goto_f

    :cond_18
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    :goto_f
    iput-object v4, v7, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-static {v12, v13}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    if-eqz v13, :cond_1b

    invoke-direct {v7, v13}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_19
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_10

    :cond_1a
    move-object/from16 v4, v16

    :goto_10
    iput-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    iput v2, v7, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    :cond_1b
    move-object/from16 v0, p19

    iput-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v1, p20

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    new-instance v2, Lcom/android/server/wm/LetterboxUiController;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3, v7}, Lcom/android/server/wm/LetterboxUiController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    const-wide/16 v2, 0x0

    move-wide/from16 v4, p21

    cmp-long v2, v4, v2

    if-lez v2, :cond_1c

    iput-wide v4, v7, Lcom/android/server/wm/ActivityRecord;->createTime:J

    :cond_1c
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v2, v7, v9, v6}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;JLcom/android/server/wm/ActivityRecord$1;)V
    .locals 0

    invoke-direct/range {p0 .. p22}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I

    move-result v0

    return v0
.end method

.method static activityResumedLocked(Landroid/os/IBinder;Z)V
    .locals 7

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x514ee942

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->setCustomizeSplashScreenExitAnimation(Z)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private allowTaskSnapshot()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    :goto_1
    nop

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    return v1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Z

    move-result v0

    return v0
.end method

.method private applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v8, 0x0

    if-eqz v7, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p5, :cond_f

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v9, v4, v7

    if-gez v9, :cond_1

    cmpg-float v9, v6, v7

    if-gez v9, :cond_1

    cmpg-float v9, p4, v7

    if-ltz v9, :cond_f

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v11

    cmpg-float v12, p4, v7

    if-gez v12, :cond_3

    move v12, v11

    goto :goto_0

    :cond_3
    move/from16 v12, p4

    :goto_0
    cmpl-float v13, v4, v7

    if-ltz v13, :cond_4

    cmpl-float v13, v12, v4

    if-lez v13, :cond_4

    move v12, v4

    goto :goto_1

    :cond_4
    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    cmpg-float v7, v12, v6

    if-gez v7, :cond_5

    move v12, v6

    :cond_5
    :goto_1
    move v7, v9

    move v13, v10

    cmpl-float v14, v11, v12

    const/high16 v15, 0x3f000000    # 0.5f

    if-lez v14, :cond_7

    if-ge v9, v10, :cond_6

    int-to-float v14, v7

    mul-float/2addr v14, v12

    add-float/2addr v14, v15

    float-to-int v13, v14

    goto :goto_3

    :cond_6
    int-to-float v14, v13

    mul-float/2addr v14, v12

    add-float/2addr v14, v15

    float-to-int v7, v14

    goto :goto_3

    :cond_7
    cmpg-float v14, v11, v12

    if-gez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    if-ge v9, v10, :cond_8

    const/4 v14, 0x1

    goto :goto_2

    :pswitch_0
    const/4 v14, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v14, 0x1

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_9

    int-to-float v8, v13

    div-float/2addr v8, v12

    add-float/2addr v8, v15

    float-to-int v7, v8

    goto :goto_3

    :cond_9
    int-to-float v8, v7

    div-float/2addr v8, v12

    add-float/2addr v8, v15

    float-to-int v13, v8

    :cond_a
    :goto_3
    if-gt v9, v7, :cond_b

    if-gt v10, v13, :cond_b

    const/4 v8, 0x0

    return v8

    :cond_b
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v7

    iget v14, v2, Landroid/graphics/Rect;->right:I

    if-lt v8, v14, :cond_c

    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    add-int/2addr v8, v14

    :cond_c
    iget v14, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v13

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v14, v15, :cond_d

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v0

    add-int/2addr v14, v15

    :cond_d
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v15, v8, v14}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    goto/16 :goto_3

    :pswitch_2
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/window/TransitionInfo$AnimationOptions;->makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v8

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v9

    const/16 v10, 0x8

    if-eqz v9, :cond_1

    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v12

    if-ne v1, v10, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    invoke-virtual {v11, v9, v12, v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_3

    :cond_1
    const/16 v11, 0x9

    if-ne v1, v11, :cond_2

    if-eqz v8, :cond_2

    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_3

    :cond_2
    iget-object v12, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v18

    if-ne v1, v10, :cond_3

    move/from16 v19, v6

    goto :goto_1

    :cond_3
    move/from16 v19, v7

    :goto_1
    invoke-virtual/range {v12 .. v19}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/hardware/HardwareBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v6, v7, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :pswitch_4
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v13

    iget-object v7, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v11

    move-object v8, v13

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/hardware/HardwareBuffer;IILandroid/os/IRemoteCallback;Z)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-static {v13, v7, v8, v6}, Landroid/window/TransitionInfo$AnimationOptions;->makeThumnbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_5

    if-eqz v13, :cond_5

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v10

    invoke-virtual {v13}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v11

    invoke-virtual {v13}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/window/TransitionInfo$AnimationOptions;->makeScaleUpAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    :pswitch_6
    iget-object v11, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v17

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    goto :goto_3

    :pswitch_7
    nop

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    goto :goto_4

    :cond_6
    move-object/from16 v6, p0

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private applyStartingWindowTheme(Ljava/lang/String;I)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    :cond_1
    return-void
.end method

.method private associateStartingDataWithTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object v1, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private attachStartingSurfaceToAssociatedTask()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityRecord;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v2, v2, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static canLaunchDreamActivity(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isDreaming()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v0}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v3

    :cond_3
    return v0
.end method

.method private static canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskFragment;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    nop

    :goto_0
    return v0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v0
.end method

.method private cleanUpActivityServices()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method

.method private clearLastParentBeforePip()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    :cond_0
    return-void
.end method

.method private clearThumbnail()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainerThumbnail;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    return-void
.end method

.method static computeAspectRatio(Landroid/graphics/Rect;)F
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method static computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const-string v2, "-si:"

    goto :goto_0

    :cond_0
    const-string v2, ":"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private containsTurnScreenOnWindow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private continueLaunchTicking()Z
    .locals 5

    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeLaunchTickMessages()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1
.end method

.method private createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x66889fc3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "ActivityRecord.createAnimationBoundsLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object v1
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSnapshot(Landroid/window/TaskSnapshot;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x4fe704c4

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/window/TaskSnapshot;I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    const/4 v0, 0x1

    return v0
.end method

.method private destroySurfaces(Z)V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    :cond_1
    return-void
.end method

.method private determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I
    .locals 2

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p9

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v0

    :cond_0
    const/4 v5, 0x1

    if-nez p7, :cond_2

    if-nez p6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    if-eqz p10, :cond_3

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    if-eqz p11, :cond_4

    invoke-interface/range {p11 .. p11}, Ljava/lang/Runnable;->run()V

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v0, [Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v10, "* "

    move-object/from16 v11, p12

    if-eq v11, v0, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v6, :cond_5

    move-object v11, v10

    goto :goto_1

    :cond_5
    move-object v11, v8

    :goto_1
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v6, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p6, :cond_7

    iget-object v11, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move-object v11, v0

    :cond_8
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    const-string v10, "    "

    :goto_3
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v6, :cond_a

    invoke-virtual {v2, v1, v7, v5}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_a
    if-eqz p6, :cond_b

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_b

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    :goto_4
    if-eqz p8, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v0

    :try_start_1
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-interface {v0, v12, v13, v7, v9}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v12, 0x7d0

    move-object v14, p0

    :try_start_2
    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v14, p0

    :goto_5
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    nop

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v14, p0

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v14, p0

    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    goto :goto_9

    :cond_c
    move-object v14, p0

    :goto_9
    return v5
.end method

.method private evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p3

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p4

    :cond_1
    return v0
.end method

.method private finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v4, p0

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord$Token;->access$100(Lcom/android/server/wm/ActivityRecord$Token;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad activity token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppCompatState(Z)I
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInSizeCompatModeForBounds:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    invoke-static {v0, p1, v1, v2}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const v1, -0x20000001

    and-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static getHorizontalCenterOffset(II)I
    .locals 2

    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I
    .locals 2

    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method

.method private getMinAspectRatio()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v0

    return v0
.end method

.method private static getPackageName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;
    .locals 2

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSplashscreenTheme()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSplashScreenThemeResName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception v1

    :cond_3
    :goto_2
    return v2
.end method

.method private getStartingWindowType(ZZZZZLandroid/window/TaskSnapshot;)I
    .locals 3

    const/4 v0, 0x2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    if-nez p5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p0, p6}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .locals 5

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method private hasFixedAspectRatio()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->hasFixedAspectRatio(I)Z

    move-result v0

    return v0
.end method

.method private hasNonDefaultColorWindow()Z
    .locals 2

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private static hasResizeChange(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xd80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAlwaysFocusable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    if-le v2, v0, :cond_1

    if-le v3, v1, :cond_1

    return v5

    :cond_1
    if-lt v2, v0, :cond_5

    if-ge v3, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, 0x3f000000    # 0.5f

    if-lez v6, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v9

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_3

    return v4

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v6

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpg-float v8, v7, v6

    if-gtz v8, :cond_4

    return v4

    :cond_4
    return v5

    :cond_5
    :goto_0
    return v5
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .locals 2

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .locals 1

    and-int/lit16 v0, p0, -0xd81

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isResolverActivity(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTransferringSplashScreen()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic lambda$applyOptionsAnimation$9(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void
.end method

.method static synthetic lambda$finishIfPossible$6(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimationIfOvarlay()V

    return-void
.end method

.method static synthetic lambda$hasNonDefaultColorWindow$8(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onAnimationFinished$16(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onFirstWindowDrawn$12(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onWindowsVisible$13(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$postApplyAnimation$11(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const-string v2, "immediately hidden"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeStartingWindowAnimation$4(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    return-void
.end method

.method static synthetic lambda$removeStartingWindowAnimation$5(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;ZLcom/android/server/wm/StartingData;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x67d86920

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/wm/StartingData;->needRevealAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "WindowManager"

    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method static synthetic lambda$setVisibility$10(Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showAllWindowsLocked$14(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    return-void
.end method

.method private launchedFromSystemSurface()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private loadThumbnailAnimation(Landroid/hardware/HardwareBuffer;)Landroid/view/animation/Animation;
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v4

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v9, v10, Landroid/content/res/Configuration;->orientation:I

    move-object v5, v3

    move-object v6, v2

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;Lcom/android/server/wm/WindowContainer;I)Landroid/view/animation/Animation;

    move-result-object v4

    return-object v4
.end method

.method private logAppCompatState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static offsetBounds(Landroid/content/res/Configuration;II)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private onSplashScreenAttachComplete()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void
.end method

.method private onWindowsDrawn(J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;J)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v2

    :cond_2
    move v10, v2

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne p0, v2, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    int-to-long v8, v4

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-void
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/16 v1, 0x200

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    if-lt v2, v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpOutNonDecorBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    invoke-virtual {v3, v5, p2, p1, v6}, Lcom/android/server/wm/Task;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v5, v6, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    nop

    :goto_1
    if-eq v2, v4, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :cond_6
    return v1
.end method

.method private postApplyAnimation(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v1, 0x6

    const/16 v2, 0x19

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    :cond_2
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p0, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    :cond_6
    :goto_1
    return-void
.end method

.method private prepareActivityHideTransitionAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void
.end method

.method private prepareActivityHideTransitionAnimationIfOvarlay()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    :cond_0
    return-void
.end method

.method private removeDestroyTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removePauseTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeStopTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeTransferSplashScreenTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestCopySplashScreen()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->copySplashScreenView(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V

    return-void
.end method

.method private resolveAspectRatioRestriction(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v0, p1, v5}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V

    :cond_1
    return-void
.end method

.method private resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;I)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v0

    nop

    invoke-direct {v6, v8, v9}, Lcom/android/server/wm/ActivityRecord;->orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v10, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    nop

    invoke-virtual {v0, v11}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v11

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v0

    :goto_1
    move v12, v0

    invoke-static/range {p2 .. p2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v12, :cond_4

    return-void

    :cond_4
    const/4 v13, 0x2

    move/from16 v14, p2

    if-ne v14, v13, :cond_5

    return-void

    :cond_5
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v5, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v3

    if-eqz v3, :cond_e

    if-ne v3, v5, :cond_6

    if-eqz v10, :cond_6

    move/from16 v17, v5

    move-object/from16 v22, v8

    move v8, v3

    goto/16 :goto_5

    :cond_6
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz v10, :cond_8

    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v9

    :goto_2
    move-object v2, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-ne v3, v13, :cond_9

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v11, v11, v16

    sub-int/2addr v11, v1

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v11, v8, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v3

    iget v3, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v11, v13, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v3, v11, v13, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_9
    move/from16 v17, v3

    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v11, v1, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3, v11, v1, v13}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v11, v1

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/LetterboxUiController;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result v13

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_a

    move v1, v13

    goto :goto_4

    :cond_a
    invoke-static {v8}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v1

    :goto_4
    move-object/from16 v18, v4

    move v4, v1

    const/16 v19, 0x1

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v21, v2

    move-object/from16 v2, v18

    move-object/from16 v22, v8

    move/from16 v8, v17

    move-object/from16 v3, v20

    move/from16 v17, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    const/4 v0, 0x2

    if-ne v8, v0, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_b
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_d

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_c

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_d

    :cond_c
    invoke-virtual {v15, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v6, Lcom/android/server/wm/ActivityRecord;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    return-void

    :cond_e
    move/from16 v17, v5

    move-object/from16 v22, v8

    move v8, v3

    :goto_5
    return-void
.end method

.method private resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_0
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    :goto_1
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    move v14, v6

    goto :goto_3

    :cond_3
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    move v14, v10

    :goto_3
    nop

    iget-object v10, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v11, 0x1

    :goto_5
    move/from16 v17, v11

    if-nez v17, :cond_6

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-nez v11, :cond_6

    iget-object v11, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11, v10}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_6

    :cond_6
    iget-object v11, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    move v10, v11

    move/from16 v18, v10

    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v18, v10

    :goto_7
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v10

    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-object v11, v15

    move-object v12, v13

    move-object v7, v13

    move/from16 v13, v18

    move-object v8, v15

    move v15, v9

    move/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-boolean v10, v10, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-nez v10, :cond_8

    nop

    invoke-direct {v0, v3, v8, v7}, Lcom/android/server/wm/ActivityRecord;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {v10, v2, v1, v11}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    iget v11, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v12, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v10, v11, v12}, Lcom/android/server/wm/TaskFragment;->computeScreenLayoutOverride(III)I

    move-result v10

    iput v10, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v10, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v11, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v10, v11, :cond_9

    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    iput v10, v2, Landroid/content/res/Configuration;->orientation:I

    :cond_9
    iget-object v10, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    if-gt v11, v13, :cond_a

    if-gt v12, v15, :cond_a

    move/from16 v21, v6

    move-object/from16 v22, v8

    move/from16 v1, v16

    goto :goto_8

    :cond_a
    int-to-float v1, v13

    move/from16 v21, v6

    int-to-float v6, v11

    div-float/2addr v1, v6

    int-to-float v6, v15

    move-object/from16 v22, v8

    int-to-float v8, v12

    div-float/2addr v6, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_8
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    iget v6, v10, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    if-eq v1, v6, :cond_b

    const/16 v19, 0x1

    goto :goto_9

    :cond_b
    const/16 v19, 0x0

    :goto_9
    move/from16 v6, v19

    iget v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    cmpl-float v8, v8, v16

    if-nez v8, :cond_d

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    move/from16 v16, v6

    goto :goto_b

    :cond_d
    :goto_a
    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v8, :cond_e

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    :cond_e
    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    move/from16 v16, v6

    const/4 v6, 0x0

    invoke-virtual {v8, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->scale(F)V

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    :goto_b
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_c

    :cond_f
    iget v8, v5, Landroid/graphics/Rect;->left:I

    :goto_c
    move/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v1, v1, v20

    div-int/lit8 v1, v1, 0x2

    move/from16 v20, v6

    goto :goto_d

    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    move/from16 v20, v6

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    :goto_d
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    if-nez v8, :cond_12

    if-eqz v1, :cond_11

    goto :goto_e

    :cond_11
    move-object/from16 v23, v4

    goto :goto_f

    :cond_12
    :goto_e
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_13

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_13
    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int v6, v8, v6

    move-object/from16 v23, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v4

    invoke-static {v2, v6, v4}, Lcom/android/server/wm/ActivityRecord;->offsetBounds(Landroid/content/res/Configuration;II)V

    :goto_f
    nop

    invoke-direct {v0, v10, v5}, Lcom/android/server/wm/ActivityRecord;->isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mInSizeCompatModeForBounds:Z

    return-void
.end method

.method static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "launched_from_uid"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "launched_from_package"

    invoke-interface {v0, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "launched_from_feature"

    invoke-interface {v0, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "resolved_type"

    invoke-interface {v0, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "component_specified"

    invoke-interface {v0, v3, v9, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    const-string v9, "user_id"

    invoke-interface {v0, v3, v9, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const-string v9, "id"

    const-wide/16 v10, -0x1

    invoke-interface {v0, v3, v9, v10, v11}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v13

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    new-instance v9, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v9}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object v12, v9

    invoke-virtual {v12, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v9

    move v11, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/4 v9, 0x3

    if-ne v11, v9, :cond_0

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-lt v9, v3, :cond_4

    :cond_0
    const/4 v9, 0x2

    if-ne v11, v9, :cond_3

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "intent"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v10, "persistable_bundle"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreActivity: unexpected name="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "ActivityTaskManager"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v9, p1

    move-object/from16 v19, v10

    move-object v10, v1

    move/from16 v20, v11

    move-object v11, v8

    move-object v0, v12

    move/from16 v12, v16

    move-wide/from16 v21, v13

    move-object/from16 v13, v17

    move v14, v5

    move/from16 v16, v3

    move v3, v15

    move/from16 v15, v18

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v10, Lcom/android/server/wm/ActivityRecord$Builder;

    move-object/from16 v11, v19

    invoke-direct {v10, v11}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v10, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->access$500(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/android/server/wm/ActivityRecord$Builder;->access$600(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    move-wide/from16 v12, v21

    invoke-static {v10, v12, v13}, Lcom/android/server/wm/ActivityRecord$Builder;->access$700(Lcom/android/server/wm/ActivityRecord$Builder;J)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    return-object v10

    :cond_5
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restoreActivity resolver error. Intent="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " resolvedType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    move/from16 v20, v11

    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreActivity error intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SWITCH_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v6, p1

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x591cd85e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v8, v9, v5, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SWITCH_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v6, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x165285c6

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v1

    aput-object v8, v11, v3

    invoke-static {v9, v10, v5, v4, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x3e0772fe

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x39c6b2e9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v4, v7, v1

    invoke-static {v5, v6, v3, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private scheduleTransferSplashScreenTimeout()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    :goto_1
    nop

    if-eq v3, v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    :goto_3
    return-object v1
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Landroid/service/dreams/DreamActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v1, v2, :cond_5

    const/4 v0, 0x5

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private setOptions(Landroid/app/ActivityOptions;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method private setVisibleRequested(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setInsetsFrozen(Z)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    return-void
.end method

.method private shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldBeVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v0

    return v0
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    not-int v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private shouldStartActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canStartChangeTransition()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method private shouldUseEmptySplashScreen(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getSplashScreenStyle()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-ne v1, v0, :cond_2

    return v3

    :cond_2
    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne v4, v2, :cond_3

    return v3

    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    return v0

    :cond_6
    if-eqz p2, :cond_8

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-eq v1, v0, :cond_7

    if-eq v1, v2, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    :cond_8
    :goto_0
    return v0
.end method

.method static splashScreenAttachedLocked(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ActivityTaskManager"

    const-string v2, "splashScreenTransferredLocked cannot find activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord;->onSplashScreenAttachComplete()V

    return-void
.end method

.method private transferSplashScreenIfNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    sget-boolean v0, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->requestCopySplashScreen()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 12

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v5, :cond_9

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v5, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    :cond_0
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v6, 0x3

    if-eqz v5, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x7386a871

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v5, v11, v3

    aput-object v7, v11, v4

    aput-object v8, v11, v1

    invoke-static {v9, v10, v3, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, p0, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    :cond_2
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    iput-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x595afbe3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v9, v1, v4

    invoke-static {v10, v11, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowState;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    :cond_4
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)V

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    :cond_8
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v4

    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_9
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1a6a4be1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    aput-object v6, v1, v4

    invoke-static {v7, v8, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v4

    :cond_b
    return v3
.end method

.method private updateColorTransform()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_0
    return-void
.end method

.method private updateCompatDisplayInsets()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_1
    new-instance v2, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private updateResolvedBoundsHorizontalPosition(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lt v6, v7, :cond_2

    nop

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/LetterboxUiController;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcom/android/server/wm/ActivityRecord;->offsetBounds(Landroid/content/res/Configuration;II)V

    goto :goto_2

    :cond_3
    invoke-static {v0, v5, v7}, Lcom/android/server/wm/ActivityRecord;->offsetBounds(Landroid/content/res/Configuration;II)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v6, v0, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p1, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method private validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p3

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    int-to-long v6, v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x6a3e1314

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v2, v8, v4, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_1

    return v5

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    sget-object v6, Lcom/android/internal/R$styleable;->Window:[I

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v9, p2

    invoke-virtual {v2, v9, v1, v6, v8}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object v2

    if-nez v2, :cond_2

    return v5

    :cond_2
    iget-object v6, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v8, 0x5

    invoke-virtual {v6, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iget-object v8, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v10, 0x4

    invoke-virtual {v8, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iget-object v11, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v12, 0xe

    invoke-virtual {v11, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iget-object v12, v2, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v13, 0xc

    invoke-virtual {v12, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    sget-boolean v13, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v13, :cond_3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x768ed2d

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v13, v10, v5

    const/16 v17, 0x1

    aput-object v14, v10, v17

    const/16 v18, 0x2

    aput-object v15, v10, v18

    const/16 v18, 0x3

    aput-object v16, v10, v18

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-nez v6, :cond_9

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_5

    return v5

    :cond_5
    if-eqz v12, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->launchedFromSystemSurface()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v1, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    move v4, v5

    :goto_0
    return v4

    :cond_8
    const/4 v1, 0x1

    return v1

    :cond_9
    :goto_1
    return v5
.end method


# virtual methods
.method abortAndClearOptionsAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void
.end method

.method activityPaused(Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v5, p1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x3fb4a784

    const/16 v8, 0xc

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v7, v8, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v5, p0, :cond_3

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_1

    const-string v7, "(due to timeout)"

    goto :goto_0

    :cond_1
    const-string v7, " (pause complete)"

    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x17af94d9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v6, v1, v4

    aput-object v7, v1, v2

    invoke-static {v8, v9, v4, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v1

    :cond_3
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v8, "(none)"

    :goto_1
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v6, "activityPausedLocked"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x37e1179d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v7, v8, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-direct {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    :cond_3
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0xa457f40

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v5, v8, v2

    invoke-static {v6, v7, v3, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x4dd4ca38

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-static {v5, v6, v3, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v3, "activityStoppedLocked"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->notifyAppStopped()V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v1, :cond_8

    const-string v1, "stop-config"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootWindowContainer;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_9
    return-void
.end method

.method addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 7

    new-instance v6, Lcom/android/server/wm/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/android/server/wm/ActivityRecord;ZZZZZZ)Z
    .locals 32

    move-object/from16 v7, p0

    move-object/from16 v8, p9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->okToDisplay()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return v9

    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_1

    return v9

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_2

    return v9

    :cond_2
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, v9, v9}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityRecord;->getStartingWindowType(ZZZZZLandroid/window/TaskSnapshot;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    new-instance v6, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;

    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/StartingSurfaceController;->isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v19, v2

    goto :goto_0

    :cond_3
    move/from16 v19, v9

    :goto_0
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/wm/StartingSurfaceController;->makeStartingWindowTypeParameter(ZZZZZZZ)I

    move-result v3

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v2

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    return v9

    :cond_4
    invoke-direct {v7, v11, v3}, Lcom/android/server/wm/ActivityRecord;->createSnapshot(Landroid/window/TaskSnapshot;I)Z

    move-result v1

    return v1

    :cond_5
    if-nez p2, :cond_6

    iget v4, v7, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-eqz v4, :cond_6

    return v9

    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityRecord;->applyStartingWindowTheme(Ljava/lang/String;I)V

    if-eqz v8, :cond_7

    invoke-direct {v7, v8}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    :cond_7
    if-eq v0, v1, :cond_8

    return v9

    :cond_8
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x78553ced    # 1.7299921E34f

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v9, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    new-instance v1, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    move-object/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v22, p1

    move/from16 v23, p2

    move-object/from16 v24, p3

    move-object/from16 v25, p4

    move/from16 v26, p5

    move/from16 v27, p6

    move/from16 v28, p7

    move/from16 v29, p8

    move/from16 v31, v3

    invoke-direct/range {v20 .. v31}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)V

    iput-object v1, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v2
.end method

.method addToFinishingAndWaitForIdle()Z
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x600083f6

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "addToFinishingAndWaitForIdle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-result v0

    return v0
.end method

.method addToStopping(ZZLjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/wm/EventLogTags;->writeWmAddToStopping(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    if-gt v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    goto :goto_3

    :cond_4
    :goto_2
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_5

    move v2, v1

    xor-int/lit8 v5, p2, 0x1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x4322685c

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-nez p2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    :goto_3
    return-void
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method allowMoveToFront()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

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

.method applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "IZZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/WindowToken;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    return-void
.end method

.method applyOptionsAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method areBoundsLetterboxed()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getRelativeFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    const v2, 0x108031d

    goto :goto_0

    :cond_2
    const v2, 0x1080375

    :goto_0
    nop

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-direct {v5, v4, v6, v3}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V

    iput-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    return-void
.end method

.method attachStartingWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    :cond_0
    return-void
.end method

.method attachThumbnailAnimation()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(Lcom/android/server/wm/WindowContainer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x5b1b7e7d

    const/4 v5, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v1, v6

    invoke-static {v3, v4, v6, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->loadThumbnailAnimation(Landroid/hardware/HardwareBuffer;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    return-void
.end method

.method attachedToProcess()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canBeAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canBeTopRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canCustomizeAppTransition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canForceResizeNonResizable(I)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    :goto_1
    nop

    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v0, v3, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method canReceiveKeys()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method canResumeByCompat()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

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

.method canShowWhenLocked()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    return v1
.end method

.method canShowWindows()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->hasNonDefaultColorWindow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method canTurnScreenOn()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method cancelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    return-void
.end method

.method cancelInitializing()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    int-to-long v3, v3

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    int-to-long v5, v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x30183017

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v1

    const/4 v0, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V

    :cond_4
    :goto_0
    return-void
.end method

.method checkEnterPictureInPictureAppOpsState()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x43

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    if-eqz p2, :cond_6

    if-eqz v5, :cond_6

    return v1

    :cond_6
    sget-object v7, Lcom/android/server/wm/ActivityRecord$6;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_b

    if-eqz v6, :cond_7

    if-nez v5, :cond_7

    move v1, v3

    :cond_7
    return v1

    :pswitch_1
    if-eqz v6, :cond_8

    if-nez v5, :cond_8

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_8

    move v1, v3

    :cond_8
    return v1

    :pswitch_2
    if-nez v2, :cond_a

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v7, :cond_9

    if-nez p2, :cond_a

    :cond_9
    move v1, v3

    :cond_a
    return v1

    :cond_b
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method checkKeyguardFlagsChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return-void
.end method

.method cleanUp(ZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpSplashScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "cleanUp"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    return-void
.end method

.method cleanUpSplashScreen()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x3bd2eca3

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;)V

    :cond_2
    return-void
.end method

.method clearAllDrawn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    return-void
.end method

.method clearAnimatingFlags()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    :cond_1
    return-void
.end method

.method clearOptionsAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method clearRelaunching()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    return-void
.end method

.method clearSizeCompatMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInSizeCompatModeForBounds:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method clearVoiceSessionLocked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method clearWillReplaceWindows()V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x6541dec8

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method commitVisibility(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    return-void
.end method

.method commitVisibility(ZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v3, :cond_1

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v5

    invoke-virtual {v7, v1, v5}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)V

    if-nez v1, :cond_2

    invoke-virtual {v0, v6, v6}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v4, :cond_3

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v2, v4, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    :cond_4
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;

    invoke-direct {v7, v4}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_2

    :cond_5
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v8, 0x3

    if-eqz v7, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v9

    iget-boolean v10, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x5aaf25e4

    const/16 v13, 0x3c

    const/4 v14, 0x0

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v7, v15, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v15, v5

    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_7

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v8, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->postApplyAnimation(ZZ)V

    return-void
.end method

.method completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/wm/KeyguardController;->topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v3, v2, v2, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    goto :goto_3

    :cond_6
    move-object v9, v3

    :goto_3
    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v6

    :cond_7
    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v8, :cond_8

    iget-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v8, :cond_9

    :cond_8
    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v8, :cond_a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    :cond_a
    if-eqz v0, :cond_e

    if-nez v1, :cond_d

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v4

    goto :goto_6

    :cond_d
    :goto_5
    const-string v8, "completeFinishing"

    invoke-virtual {p0, v2, v2, v8}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v2, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v4

    :goto_6
    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    move-object v3, p0

    :goto_7
    return-object v3

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity must be finishing and not resumed to complete, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", finishing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method completeResumeLocked()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    :cond_1
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v3, "turnScreenOnFlag"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    :goto_0
    return-void
.end method

.method containsDismissKeyguardWindow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v22, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v7

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v8, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v12

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v13, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v14, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v15, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mEndBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v5, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v5, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    :cond_1
    move-object/from16 v18, v4

    iget-object v4, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v21

    move-object/from16 v5, v22

    move-object v11, v3

    invoke-direct/range {v5 .. v21}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    move-object/from16 v4, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->hasAnimatingParent()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    return-object v4

    :cond_2
    :goto_0
    return-object v4
.end method

.method currentLaunchCanTurnScreenOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return v0
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Exception thrown sending new intent to "

    const-string v3, "ActivityTaskManager"

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-interface {v0, v5, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    new-instance v0, Lcom/android/internal/content/ReferrerIntent;

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-direct {v0, v7, v6}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    move-object v6, v0

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v12, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v12, :cond_1

    if-eqz v11, :cond_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v15, v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-static {v0, v9}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v9

    invoke-virtual {v12, v13, v14, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    invoke-direct {v1, v6}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    :cond_4
    return-void
.end method

.method destroyIfPossible(Ljava/lang/String;)Z
    .locals 13

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "destroyIfPossible"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish-imm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    move-result v6

    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v2, v8, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_3
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTAINERS_enabled:Z

    if-eqz v7, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x17eb15c4

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v4

    aput-object v8, v12, v3

    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v6
.end method

.method destroyImmediately(Ljava/lang/String;)Z
    .locals 10

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x14688db

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v4, v7, v2

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v3

    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v4, v5, v6, p1}, Lcom/android/server/wm/EventLogTags;->writeWmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, p0, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v8, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v9, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v8, v9}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v4, 0x1

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v5, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x55694b7e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v6, v7, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v5, :cond_6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x2b490301

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-static {v6, v7, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    :goto_1
    goto :goto_2

    :cond_7
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadNoApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x2b7bbf31

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v5, v6, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :goto_2
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    return v0
.end method

.method destroySurfaces()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    return-void
.end method

.method destroyed(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTAINERS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5f46730e

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reported destroyed for activity that is not destroying: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method detachFromProcess()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " launchedFromFeature="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "splitDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "taskDescription:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " label=\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " icon="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_9
    move-object v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " iconResource="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconResourcePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " iconFilename="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " primaryColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  backgroundColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " statusBarColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " navigationBarColor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " backgroundColorFloating="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_d

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_3
    goto :goto_1

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_10

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_f

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_11

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v2, :cond_12

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingRemoteAnimationCallingPid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pendingRemoteTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v3}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_15

    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_16

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_17

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchCookie="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_18

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLaunchRootTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHaveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mIcicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "occludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mImeInsetsFrozenUntilStartInput="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_19

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_19
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mVoiceInteraction=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOccludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOrientation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mVisibleRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mClientVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mDeferHidingClient="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_1b
    const-string v3, ""

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reportedDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reportedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "paused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v2, :cond_1d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppStopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1d
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-nez v2, :cond_1e

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    if-eqz v2, :cond_1f

    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mNumInterestingWindows="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mNumDrawnWindows="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " lastAllDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_20

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v2, :cond_20

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v2, :cond_21

    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "startingData="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " firstWindowDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mIsExiting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mSharedStartingData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v2, :cond_23

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz v2, :cond_24

    :cond_23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "startingWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " startingSurface="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " startingDisplayed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " startingMoved="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mVisibleSetFromTransferredStartingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-eqz v2, :cond_25

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mPendingRelaunchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_25
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_27

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mSizeCompatScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mSizeCompatBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mRemovingFromDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_2b

    :cond_29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "nowVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " lastVisibleTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2a

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_2a
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2b
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mDeferHidingClient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2c
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v2, :cond_2d

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    if-eqz v2, :cond_2e

    :cond_2d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " configChangeFlags="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v2, :cond_2f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "connections="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedMultiWindowMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLastReportedPictureInPictureMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsPictureInPicture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "maxAspectRatio="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_31
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v2

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "minAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v3

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "manifestMinAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "supportsSizeChanges="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->supportsSizeChanges()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->sizeChangesSupportModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "configChanges=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "neverSandboxDisplayApis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v5, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "alwaysSandboxDisplayApis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v5, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lastParentTaskIdBeforePip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LetterboxUiController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 4

    const-wide v0, 0x10900000001L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10b00000002L

    invoke-super {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowToken;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isWaitingForTransitionStart()Z

    move-result v0

    const-wide v1, 0x10800000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/WindowContainerThumbnail;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000008L

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000001eL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000018L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000009L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000bL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1050000000eL

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000fL

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000010L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000011L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    const-wide v1, 0x10b00000013L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    const-wide v0, 0x10800000014L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x108000000c9L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000016L

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1090000001bL

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x1080000001cL

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x1050000001dL

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const-wide v0, 0x1080000001fL

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000020L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10200000021L

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v0, 0x10800000022L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result v0

    return v0
.end method

.method ensureActivityConfiguration(IZZ)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x2fef60c8

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v4

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x326e22f5

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    return v4

    :cond_3
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v2, :cond_4

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x41e02dc0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v4

    :cond_5
    if-nez p3, :cond_8

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v2, v6, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v2, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v2, :cond_7

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x6175111e

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v4

    :cond_8
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v2, :cond_9

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x6ac0f861

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v6, v2, :cond_a

    move v6, v4

    goto :goto_0

    :cond_a
    move v6, v5

    :goto_0
    if-eqz v6, :cond_b

    iput v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    :cond_b
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v8}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v7, :cond_e

    if-nez v6, :cond_e

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v7, :cond_c

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x4275d8ea

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-static {v8, v9, v5, v3, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateCompatDisplayInsets()V

    :cond_d
    return v4

    :cond_e
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v10, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v9, v10, :cond_10

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v9, :cond_f

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0xe0540e0

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v9, v12, v5

    invoke-static {v10, v11, v5, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    return v4

    :cond_10
    if-nez v7, :cond_13

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-nez v9, :cond_13

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v9, :cond_11

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x2c4fdedc

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v9, v12, v5

    invoke-static {v10, v11, v5, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    if-eqz v6, :cond_12

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_12
    invoke-direct {v0, v8}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_1
    return v4

    :cond_13
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v10, 0x2

    if-eqz v9, :cond_14

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x3769bcf1

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v9, v14, v5

    aput-object v11, v14, v4

    invoke-static {v12, v13, v5, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v9

    if-nez v9, :cond_16

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v9, :cond_15

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x641c3245

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v9, v12, v5

    invoke-static {v10, v11, v5, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    return v4

    :cond_16
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v11, 0x4

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v9, v3, v5

    aput-object v12, v3, v4

    aput-object v13, v3, v10

    const/16 v16, 0x3

    aput-object v14, v3, v16

    const v10, 0x76eab7a0

    const/4 v11, 0x0

    invoke-static {v15, v10, v5, v11, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v7, v3}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    if-eqz v3, :cond_18

    goto :goto_3

    :cond_18
    if-eqz v6, :cond_19

    invoke-direct {v0, v2, v8}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_2

    :cond_19
    invoke-direct {v0, v8}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_2
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    return v4

    :cond_1a
    :goto_3
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr v3, v7

    iput v3, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-static {v7}, Lcom/android/server/wm/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v3, :cond_1b

    move v3, v4

    goto :goto_4

    :cond_1b
    move v3, v5

    :goto_4
    and-int v3, p2, v3

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    not-int v9, v9

    and-int/2addr v9, v7

    invoke-static {v9}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v11, 0x2

    goto :goto_5

    :cond_1c
    move v11, v4

    :goto_5
    iput v11, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_6

    :cond_1d
    iput v5, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    :goto_6
    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v11, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v10, v11, :cond_1f

    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v10, :cond_1e

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x565d4c2

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v10, v13, v5

    const/4 v14, 0x0

    invoke-static {v11, v12, v5, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    return v4

    :cond_1f
    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v10, :cond_20

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x2be909c4

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v10, v13, v5

    const/4 v14, 0x0

    invoke-static {v11, v12, v5, v14, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget-boolean v10, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v10, :cond_21

    sget-boolean v10, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v10, :cond_21

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x5cdf48b2

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v5

    aput-object v11, v14, v4

    const/4 v4, 0x0

    invoke-static {v12, v13, v5, v4, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    return v5
.end method

.method fillsParent()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v2, :cond_0

    if-eqz p1, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_2

    move-object v0, v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    return-object v0
.end method

.method finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I
    .locals 16

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move/from16 v6, p1

    int-to-long v7, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x3e73b082

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    aput-object v9, v14, v2

    const/4 v15, 0x3

    aput-object v10, v14, v15

    invoke-static {v11, v12, v13, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p1

    :goto_0
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v7, "ActivityTaskManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate finish request for r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish request when not in root task for r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    move v8, v0

    if-eqz v8, :cond_5

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    move v9, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v10, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    iget v12, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p4

    :try_start_1
    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_6

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    if-eqz v8, :cond_7

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_7

    const-string v11, "finish-top"

    invoke-virtual {v0, v11, v5, v9}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    :cond_7
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v11

    if-nez v11, :cond_8

    move v11, v4

    goto :goto_3

    :cond_8
    move v11, v5

    :goto_3
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz v11, :cond_9

    move-object v13, v0

    goto :goto_4

    :cond_9
    move-object v13, v1

    :goto_4
    invoke-virtual {v12, v13}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_a

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_a
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v2

    if-nez v2, :cond_b

    new-array v2, v4, [Lcom/android/server/wm/Task;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    :cond_b
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_c

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x3bc97d2b

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v2, v15, v5

    invoke-static {v12, v13, v5, v3, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    const-string v12, "finish"

    invoke-virtual {v2, v5, v5, v3, v12}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_d
    if-eqz v11, :cond_15

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    if-eqz v8, :cond_15

    iput-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    goto :goto_7

    :cond_e
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v12

    if-nez v12, :cond_14

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    :cond_f
    const-string v3, "finishIfPossible"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v4

    goto :goto_5

    :cond_10
    move v3, v5

    :goto_5
    if-eqz p5, :cond_11

    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    :cond_11
    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_6

    :cond_13
    move v2, v4

    :goto_6
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v2

    :cond_14
    :try_start_2
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_15

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x3d000c8c

    new-array v15, v4, [Ljava/lang/Object;

    aput-object v2, v15, v5

    invoke-static {v12, v13, v5, v3, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_15
    :goto_7
    nop

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v14, p4

    :goto_8
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method finishIfPossible(Ljava/lang/String;Z)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "request-affinity"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    const/4 v0, 0x0

    return v0
.end method

.method finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "request-sub"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method finishLaunchTickingLocked()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->removeLaunchTickMessages()V

    return-void
.end method

.method finishRelaunching()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_2
    return-void
.end method

.method finishSync(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->allSyncFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->finishSync(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method forAllActivities(Ljava/util/function/Function;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z",
            "Lcom/android/server/wm/ActivityRecord;",
            ")",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

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

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationPosition(Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method getAppCompatState()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    return-object v0
.end method

.method getDeferHidingClient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    return v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v1

    return v1
.end method

.method getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-wide v3, v3, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-object v1, v1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/view/InputApplicationHandle;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object v0
.end method

.method getLastParentBeforePip()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getLaunchedFromBubble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    return v0
.end method

.method getLaunchedFromPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    return v0
.end method

.method getLaunchedFromUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    return v0
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxUiController;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getLocusId()Landroid/content/LocusId;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method getOptions()Landroid/app/ActivityOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method getOrganizedTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getOrientation(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0

    :cond_2
    const/4 v0, -0x2

    return v0
.end method

.method getPersistentSavedState()Landroid/os/PersistableBundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method getPid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000006L

    return-wide v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getRequestedOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mOrientation:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getRootTaskId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getSavedState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    return-object v0
.end method

.method getSizeCompatScale()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatScale:F

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    :goto_0
    return v0
.end method

.method getState()Lcom/android/server/wm/ActivityRecord$State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    return-object v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getThumbnail()Lcom/android/server/wm/WindowContainerThumbnail;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitFlags:I

    return v0
.end method

.method getTurnScreenOnFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

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

.method getUid()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object v0
.end method

.method handleAlreadyVisible()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method handleAppDied()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_5

    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v1, v3, :cond_5

    iget-wide v5, v0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    sub-long/2addr v7, v9

    cmp-long v1, v5, v7

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0xcc

    const/4 v15, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v13, v16

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v13, v4

    aput-object v7, v13, v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v13, v2

    const/4 v2, 0x4

    aput-object v9, v13, v2

    aput-object v11, v13, v10

    const v2, 0x6aab2eca

    invoke-static {v12, v2, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": app died, no saved state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_8

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1

    :cond_8
    const/4 v5, -0x1

    :goto_1
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v7, "proc died without state saved"

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_b
    const-string v2, "appDied"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method handleCompleteDeferredRemoval()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method hasActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method hasProcess()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSavedState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return v0
.end method

.method hasSizeCompatBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasStartingWindow()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method hasWallpaperBackgroudForLetterbox()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0}, Lcom/android/server/wm/LetterboxUiController;->hasWallpaperBackgroudForLetterbox()Z

    move-result v0

    return v0
.end method

.method inSizeCompatMode()Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInSizeCompatModeForBounds:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method public inputDispatchingTimedOut(Ljava/lang/String;I)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    if-eq v3, p2, :cond_1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v10, 0x0

    move-object v11, p1

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p2, v5, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isAlwaysOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isAlwaysOnTop()Z

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

.method isClosingOrEnteringPip()Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method final isDestroyable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p0, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method isEmbedded()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    if-eq v0, v3, :cond_1

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    if-eq v1, v4, :cond_2

    return v3

    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method isFocusable()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFocusedActivityOnDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Function;)Z

    move-result v0

    return v0
.end method

.method isFreezingScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    return v0
.end method

.method isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxUiController;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method isInHistory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInRootTaskLocked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInTransition()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

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

.method public isInterestingToUserLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

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

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method isLaunchSourceType(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNoHistory()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

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

.method isPersistable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isProcessRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isRelaunching()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReportedDrawn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    return v0
.end method

.method isResizeable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isResolverOrChildActivity()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1
.end method

.method isResolverOrDelegateActivity()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getSystemChooserActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method isRootOfTask()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method final isSleeping()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_0
    return v1
.end method

.method isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    :goto_0
    nop

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p3, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-ne p4, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-eq p4, v0, :cond_1

    if-ne p5, v0, :cond_0

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

.method isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p3, v0, :cond_1

    if-eq p4, v0, :cond_1

    if-eq p5, v0, :cond_1

    if-ne p6, v0, :cond_0

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

.method isSurfaceShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    return v0
.end method

.method isSyncFinished()Z
    .locals 4

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSyncFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method isTaskOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    return v0
.end method

.method isTopRunningActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionForward()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    return v0
.end method

.method isVisibleRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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

.method public synthetic lambda$addStartingWindow$2$ActivityRecord()Landroid/content/pm/ApplicationInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public synthetic lambda$associateStartingDataWithTask$3$ActivityRecord(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    :cond_0
    return-void
.end method

.method public synthetic lambda$isFocusedActivityOnDisplay$18$ActivityRecord(Lcom/android/server/wm/TaskDisplayArea;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$ActivityRecord([F[F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>(Lcom/android/server/wm/ActivityRecord$1;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->setSaturation([F[F)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

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

.method public synthetic lambda$new$1$ActivityRecord([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/ActivityRecord;[F[F)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$restartProcessIfVisible$17$ActivityRecord()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v4, "resetConfig"

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
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

.method public synthetic lambda$showStartingWindow$15$ActivityRecord(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$transferStartingWindowFromHiddenAboveTokenIfNeeded$7$ActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxUiController;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method logStartActivity(ILcom/android/server/wm/Task;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    const-string v2, "makeActiveIfNeeded"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v5, v3, v6, v3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown sending pause: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->shouldStartActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-static {v5}, Landroid/app/servertransaction/StartActivityItem;->obtain(Landroid/app/ActivityOptions;)Landroid/app/servertransaction/StartActivityItem;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown sending start: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return v3
.end method

.method makeFinishingLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_1

    iput-boolean v0, v1, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :cond_3
    return-void
.end method

.method makeInvisible()V
    .locals 8

    const-string v0, "makeInvisible"

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    sget-object v5, Lcom/android/server/wm/ActivityRecord$6;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown making hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    :cond_0
    if-ne p0, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    iget-object v1, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making visible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    return-void
.end method

.method public matchParentBounds()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method mayFreezeScreenLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    return v0
.end method

.method moveFocusableActivityToTop(Ljava/lang/String;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0xe5240e6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFocusableActivityToTop: invalid root task: activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, p0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p0, :cond_4

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v4, :cond_3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x6ea38bef

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1

    :cond_4
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v4, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x30014e1

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-static {v5, v6, v3, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_6
    return v2
.end method

.method needsZBoost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsZBoost:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->needsZBoost()Z

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

.method notifyAppResumed(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x515498e7

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v3, v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    if-nez p1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    :cond_2
    return-void
.end method

.method notifyAppStopped()V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x7172dcb3

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedTaskController;->onActivityHidden(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return-void
.end method

.method notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method occludesParent()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    return v0
.end method

.method occludesParent(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    const-wide/16 v0, 0x20

    const-string v2, "AR#onAnimationFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransit:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransitFlags:I

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsAnimationBoundsLayer:Z

    const/16 v3, 0xc

    const-string v4, "ActivityRecord"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityRecord;->setAppLayoutChanges(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->computeImeTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainerThumbnail;->destroy()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x10

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAnimation()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method public onAppFreezeTimeout()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing freeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    return-void
.end method

.method onCancelFixedRotationTransform(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v1}, Lcom/android/server/wm/PinnedTaskController;->onCancelFixedRotationTransform()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    if-eq v4, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_1

    iget-object v6, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    if-eq v6, v7, :cond_1

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    iget-object v6, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eq v6, v3, :cond_2

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eq v5, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    :cond_4
    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    :cond_5
    throw v1

    :cond_6
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->seq:I

    if-eq v3, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onMergedOverrideConfigurationChanged()V

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_8

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    :cond_8
    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_a

    invoke-virtual {v4, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v3, :cond_d

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getCurrentOverrideConfigurationChanges()I

    move-result v3

    const v5, 0x20000480

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const v6, 0x20000480

    and-int v7, v3, v6

    if-eq v7, v6, :cond_b

    goto :goto_2

    :cond_b
    move v1, v2

    :goto_2
    if-nez v1, :cond_c

    and-int/lit16 v2, v3, 0x1000

    if-eqz v2, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    :cond_d
    :goto_3
    return-void
.end method

.method onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {p1, v1}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;->obtain(Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCopySplashScreenComplete fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    :goto_0
    return-void

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    :cond_2
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->transferAppTransitionFrom(Lcom/android/server/wm/DisplayContent;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/LetterboxUiController;->onMovedToDisplay(I)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x63f8f64e

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    :cond_2
    move-object v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method public onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyStarting(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNeedsAnimationBoundsLayer:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTransit()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppTransitionController;->isTransitWithinTask(ILcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getLastLayer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 9

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/TaskFragment;->initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    :cond_2
    invoke-super {p0, v1, v0}, Lcom/android/server/wm/WindowToken;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_4
    const/4 v5, 0x1

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v7, v4, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_2

    :cond_5
    move v7, v6

    :goto_2
    iput-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v7, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v8, :cond_9

    invoke-virtual {v8, p0}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyFinished(Lcom/android/server/wm/ActivityRecord;)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;

    move-result-object v2

    goto :goto_4

    :cond_a
    nop

    :goto_4
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-ne v2, v8, :cond_b

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    :cond_b
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    :cond_c
    if-eqz v1, :cond_e

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "onParentChanged"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    :cond_d
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, p0, :cond_f

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v2, :cond_f

    invoke-virtual {v7, v5}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_f
    return-void
.end method

.method onRemovedFromDisplay()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x50970dd7

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v5, v6, v4, v3, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    const/4 v2, 0x7

    const/16 v5, 0x11

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    if-nez v2, :cond_5

    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    goto :goto_1

    :cond_5
    invoke-direct {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)V

    :goto_1
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eqz v5, :cond_6

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x6289fdd7

    const/16 v14, 0xcc

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v5, v15, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v1

    aput-object v10, v15, v6

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v12, v13, v14, v3, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_7

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v9, v2

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x5bca26db

    const/16 v13, 0xc

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v5, v14, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v1

    aput-object v10, v14, v6

    invoke-static {v11, v12, v13, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_8
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v8, :cond_a

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x7dc31476

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v8, v11, v4

    invoke-static {v9, v10, v4, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    if-eqz v5, :cond_b

    iget-object v8, v5, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    goto :goto_2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->cancelAnimation()V

    if-eqz v5, :cond_d

    iget-object v8, v5, Lcom/android/server/wm/Task;->mExitingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    :goto_2
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v9, v0, :cond_f

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v9, :cond_e

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    int-to-long v10, v10

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x2df73d02

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v9, v6, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v6, v1

    invoke-static {v12, v13, v7, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {v8, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v1}, Lcom/android/server/wm/LetterboxUiController;->destroy()V

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    :cond_10
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/PinnedTaskController;->onActivityHidden(Landroid/content/ComponentName;)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/EmbeddedWindowController;->onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    return-void
.end method

.method onResize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onResize()V

    return-void
.end method

.method onStartingWindowDrawn()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_1
    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onWindowsGone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    return-void
.end method

.method onWindowsVisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    :cond_0
    return-void
.end method

.method pauseKeyDispatchingLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_0
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x6e7ea420

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x63a89c22

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x663cec08

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {v4, v5, v3, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_5
    :goto_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

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
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowContainerThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    return-void
.end method

.method public providesMaxBounds()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sandboxDisplayApis()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v2, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v2, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method recomputeConfiguration()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v0}, Landroid/view/RemoteAnimationDefinition;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    :cond_0
    return-void
.end method

.method relaunchActivityLocked(Z)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, p0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_2
    if-eqz v3, :cond_3

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchResumeActivity(IIILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchActivity(IIILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    const/4 v6, 0x1

    :try_start_0
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_5

    if-eqz v3, :cond_4

    const-string v7, "RESUMED"

    goto :goto_1

    :cond_4
    const-string v7, "PAUSED"

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x3c97bffe

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v1

    aput-object v8, v12, v6

    const/4 v13, 0x2

    aput-object v9, v12, v13

    invoke-static {v10, v11, v1, v2, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    iget v7, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    new-instance v8, Landroid/util/MergedConfiguration;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-static {v4, v5, v7, v8, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransitionForward()Z

    move-result v8

    invoke-static {v8}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v8

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v8

    :goto_2
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v9, v10}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {v9, v8}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0xfacd303

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v1

    invoke-static {v9, v10, v1, v2, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    if-eqz v3, :cond_9

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x4bbec0ca    # 2.5002388E7f

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v1

    invoke-static {v8, v9, v1, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v6, "relaunchActivityLocked"

    invoke-virtual {p0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeDeadWindows()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5a4f8697

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeFromHistory(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x14df2464

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v0

    aput-object v4, v8, v3

    const/4 v9, 0x2

    aput-object v5, v8, v9

    invoke-static {v6, v7, v0, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x22876573

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v4, v5, v0, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "removeFromHistory"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method removeIfPossible()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeAllWindowsIfPossible()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force remove immediately "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "removeImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method removeLaunchTickRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/server/wm/ActivityResult;->mRequestCode:I

    if-eq v2, p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method removeStartingWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->transferSplashScreenIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void
.end method

.method removeStartingWindowAnimation(Z)V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x7ed44c8d

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v4, v5, v0, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v4, :cond_5

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x2b3002b

    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v0, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v5, :cond_6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x433c24a0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v0

    aput-object v6, v11, v2

    const/4 v2, 0x2

    aput-object v7, v11, v2

    const/4 v2, 0x3

    aput-object v8, v11, v2

    invoke-static {v9, v10, v0, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;

    invoke-direct {v0, v4, p1, v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;ZLcom/android/server/wm/StartingData;)V

    sget-boolean v2, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_8
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v4, :cond_9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x8c1140b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    invoke-static {v5, v6, v0, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method removeTimeouts()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_0
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eq v2, v1, :cond_2

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_1

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v4, v4

    move/from16 v6, p2

    int-to-long v7, v6

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x22302e85

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move/from16 v6, p2

    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return-void

    :cond_2
    move/from16 v6, p2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": task fragment ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is already the parent of r="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method reportDescendantOrientationChangeIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/wm/ActivityRecord;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_1
    return-void
.end method

.method reportFullyDrawnLocked(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/wm/ActivityRecord;Z)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v4, v3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v6

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    :cond_0
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, v0, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v1, v3, :cond_0

    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mIsAspectRatioApplied:Z

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    nop

    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;I)V

    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v6, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->resolveAspectRatioRestriction(Landroid/content/res/Configuration;)V

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateResolvedBoundsHorizontalPosition(Landroid/content/res/Configuration;)V

    :cond_9
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->updateCompatDisplayInsets()V

    :cond_a
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v5, v2, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_b
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    return-void
.end method

.method restartProcessIfVisible()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "restartActivityProcess"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/app/servertransaction/StopActivityItem;->obtain(I)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during restart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_0
    return-void
.end method

.method safelyDestroy(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method saveToXml(Landroid/util/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    const-string v1, "launched_from_uid"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "launched_from_package"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "launched_from_feature"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "resolved_type"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    const-string v1, "component_specified"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-string v1, "user_id"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    :cond_3
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_4

    const-string v0, "persistable_bundle"

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p1, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    return-void
.end method

.method scheduleAddStartingWindow()V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/StartingSurfaceController;->DEBUG_ENABLE_SHELL_DRAWER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$AddStartingWindow;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x547ee06d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAddStartingWindow:Lcom/android/server/wm/ActivityRecord$AddStartingWindow;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method schedulePauseTimeout()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x2a13c7d2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method scheduleTopResumedActivityChanged(Z)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x472a2c59

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v4, v5, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v3

    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v4, p1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x4dd77865

    const/16 v7, 0xc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;->obtain(Z)Landroid/app/servertransaction/TopResumedActivityChangeItem;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send top-resumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 9

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    invoke-interface {v0, p6, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    :cond_0
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_0
    return-void
.end method

.method setAppTimeTracker(Lcom/android/server/am/AppTimeTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    return-void
.end method

.method setClientVisible(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    return-void
.end method

.method setCurrentLaunchCanTurnScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return-void
.end method

.method setCustomizeSplashScreenExitAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    return-void
.end method

.method setDeferHidingClient(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_1
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mDisablePreviewScreenshots:Z

    return-void
.end method

.method setInheritShowWhenLocked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShownWhenLocked:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method setLastParentBeforePip()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    iput-object p0, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method setLocusId(Landroid/content/LocusId;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_1
    return-void
.end method

.method setMainWindowOpaque(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr p1, v1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    return-void
.end method

.method setOccludesParent(Z)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setMainWindowOpaque(Z)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/Task;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    if-nez v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    :cond_3
    return v0
.end method

.method setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->onPictureInPictureParamsChanged()V

    return-void
.end method

.method setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    :cond_2
    return-void
.end method

.method setRequestedOrientation(I)V
    .locals 2

    invoke-virtual {p0, p1, p0}, Lcom/android/server/wm/ActivityRecord;->setOrientation(ILcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    return-void
.end method

.method setSavedState(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return-void
.end method

.method setShowWhenLocked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    return-void
.end method

.method setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x4e78b42b

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v4

    aput-object v5, v10, v3

    aput-object v6, v10, v1

    const/4 v11, 0x3

    aput-object v7, v10, v11

    invoke-static {v8, v9, v4, v2, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x37352bd6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v5, v4, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_5
    sget-object v0, Lcom/android/server/wm/ActivityRecord$6;->$SwitchMap$com$android$server$wm$ActivityRecord$State:[I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v1, 0x18

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v3, v4, v3, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    :cond_6
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->notifyActivityEvent(ILandroid/content/ComponentName;I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method setTaskOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setAlwaysOnTop(Z)V

    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method setTurnScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    return-void
.end method

.method setVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(ZZ)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    return-void
.end method

.method setVisibility(ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_0

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    if-eqz v5, :cond_0

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    :cond_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move/from16 v9, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v11

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 v13, 0x6

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v7, 0x3cc

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v13, v8

    aput-object v10, v13, v6

    const/16 v16, 0x3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x4

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x5

    aput-object v14, v13, v16

    const v6, -0x165680dc

    const/4 v8, 0x0

    invoke-static {v15, v6, v7, v8, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->onChildVisibilityRequested(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)V

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastDeferHidingClient:Z

    if-nez v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->removeDeadWindows()V

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_3
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_8
    const/4 v6, 0x1

    :cond_9
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->setClientVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v7, :cond_a

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x48f79369

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const/4 v6, 0x0

    invoke-static {v8, v9, v4, v6, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    :cond_b
    :goto_2
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->inTransition()Z

    move-result v6

    if-eqz v6, :cond_c

    return-void

    :cond_c
    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Lcom/android/server/wm/ActivityRecord;->okToAnimate(ZZ)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    if-nez v7, :cond_12

    :cond_d
    if-eqz v1, :cond_e

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_3

    :cond_e
    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    :cond_f
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_11

    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6be2b63e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v4

    const/4 v13, 0x0

    invoke-static {v10, v11, v4, v13, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v4, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    :cond_12
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method setVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAnimation()V

    :cond_1
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x57bc1dd0

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x6ffcd294

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method shouldAnimate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->shouldAnimate()Z

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

.method shouldApplyAnimation(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method shouldBeVisible()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result v1

    return v1
.end method

.method shouldBeVisibleUnchecked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method shouldCreateCompatDisplayInsets()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsSizeChanges()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasWindowDecorCaption()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateCompatDisplayInsets()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    :goto_3
    nop

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->hasFixedAspectRatio()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingActivityRegistry;->notifyAboutToFinish(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 6

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity not found in its task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    return v1
.end method

.method shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldUpdateConfigForDisplayChanged()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldUseAppThemeSnapshot()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method showAllWindowsLocked()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V
    .locals 24

    move-object/from16 v15, p0

    move/from16 v14, p4

    iget-boolean v0, v15, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v16

    move-object/from16 v13, p5

    invoke-direct {v15, v13, v14}, Lcom/android/server/wm/ActivityRecord;->shouldUseEmptySplashScreen(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    const/4 v0, 0x0

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->getSplashscreenTheme()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    move v12, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v15, Lcom/android/server/wm/ActivityRecord;->theme:I

    move-object/from16 v11, p1

    invoke-direct {v15, v11, v1, v2, v12}, Lcom/android/server/wm/ActivityRecord;->evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I

    move-result v17

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord$State;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    move/from16 v18, v1

    if-nez p2, :cond_4

    if-nez v18, :cond_4

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;

    invoke-direct {v2, v15}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    move/from16 v19, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v5, v15, Lcom/android/server/wm/ActivityRecord;->labelRes:I

    iget v6, v15, Lcom/android/server/wm/ActivityRecord;->icon:I

    iget v7, v15, Lcom/android/server/wm/ActivityRecord;->logo:I

    iget v8, v15, Lcom/android/server/wm/ActivityRecord;->windowFlags:I

    if-nez p2, :cond_6

    if-eqz v19, :cond_5

    goto :goto_3

    :cond_5
    move v10, v0

    goto :goto_4

    :cond_6
    :goto_3
    move v10, v3

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v21

    iget-boolean v9, v15, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleEmpty:Z

    move-object/from16 v0, p0

    move/from16 v2, v17

    move-object/from16 v3, v16

    move/from16 v22, v9

    move-object/from16 v9, p1

    move/from16 v11, p3

    move/from16 v23, v12

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v18

    move/from16 v15, v22

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/android/server/wm/ActivityRecord;ZZZZZZ)Z

    move-result v0

    return-void
.end method

.method showStartingWindow(Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method showToCurrentUser()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

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

.method startFreezingScreen()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen(I)V

    return-void
.end method

.method startFreezingScreen(I)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x681db859

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v2

    const/4 v12, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    aput-object v6, v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v3, :cond_5

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v2, :cond_5

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v1, v3, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;I)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method startFreezingScreenLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    return-void
.end method

.method startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, -0x20000001

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6d73cf97

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreen()V

    :cond_3
    return-void
.end method

.method startLaunchTickingLocked()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTicking()Z

    :cond_1
    return-void
.end method

.method startRelaunching()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v4, p2

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2021abc1

    const/16 v7, 0xc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v7

    or-int/2addr v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eqz v4, :cond_5

    :cond_3
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0xef9eb58

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v5, v8, v3

    invoke-static {v6, v7, v3, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    :cond_5
    if-eqz p1, :cond_7

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_7
    return-void
.end method

.method stopFreezingScreenLocked(Z)V
    .locals 11

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFreezingScreen()Z

    move-result v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x1bce5216

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreen(ZZ)V

    :cond_3
    return-void
.end method

.method stopIfPossible()V
    .locals 9

    const-string v0, "stopIfPossible"

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x43b81c8f

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v2, "stop-no-history"

    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x1ceb1f26

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xb4d8056

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmStopActivity(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    invoke-static {v8}, Landroid/app/servertransaction/StopActivityItem;->obtain(I)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x2af8

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "ActivityTaskManager"

    const-string v7, "Exception thrown during pause"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x12453138

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v7, v8, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_6

    const-string v0, "stop-except"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method supportsFreeform()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

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

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v3, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method supportsPictureInPicture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method takeFromHistory()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :cond_1
    return-void
.end method

.method takeOptions()Landroid/app/ActivityOptions;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    return-object v0
.end method

.method takeRemoteTransition()Landroid/window/RemoteTransition;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " f}"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v1, :cond_2

    const-string v2, " isExiting"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Function;)Z

    return-void
.end method

.method unregisterRemoteAnimations()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method updateAllDrawn()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": isDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAnimationSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not displayed: s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDrawState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ph="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " th="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v4, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eq v2, p1, :cond_4

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenMayBeDrawn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " numInteresting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " freezingScreen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mFreezingScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppFreezing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    :cond_7
    :goto_1
    return v3
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLetterboxUiController:Lcom/android/server/wm/LetterboxUiController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LetterboxUiController;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method updateMultiWindowMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    :cond_1
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v1, v1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v1, :cond_1

    if-lt v3, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    if-lez v1, :cond_2

    if-lt v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v6

    :cond_2
    if-nez v4, :cond_4

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    :cond_3
    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-eq v7, v6, :cond_6

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn(J)V

    :cond_5
    iput-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    :cond_6
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eq v5, v6, :cond_8

    iput-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    :cond_8
    :goto_2
    return-void
.end method

.method updateVisibilityIgnoringKeyguard(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return-void
.end method

.method windowsAreFocusable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result v0

    return v0
.end method

.method windowsAreFocusable(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_0

    if-eq v2, p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method
