.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;,
        Lcom/android/server/am/UserController$UserJourneySession;,
        Lcom/android/server/am/UserController$UserLifecycleEventState;,
        Lcom/android/server/am/UserController$UserLifecycleEvent;,
        Lcom/android/server/am/UserController$UserJourney;
    }
.end annotation


# static fields
.field private static final CLEAR_USER_JOURNEY_SESSION_MSG:I = 0xc8

.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field private static final INVALID_SESSION_ID:J = 0x0L

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final USER_CURRENT_MSG:I = 0x3c

.field private static final USER_JOURNEY_TIMEOUT_MS:I = 0x15f90

.field private static final USER_JOURNEY_UNKNOWN:I = 0x0

.field private static final USER_JOURNEY_USER_CREATE:I = 0x4

.field private static final USER_JOURNEY_USER_START:I = 0x3

.field private static final USER_JOURNEY_USER_SWITCH_FG:I = 0x2

.field private static final USER_JOURNEY_USER_SWITCH_UI:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_CREATE_USER:I = 0x3

.field private static final USER_LIFECYCLE_EVENT_START_USER:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_BEGIN:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_STATE_FINISH:I = 0x2

.field private static final USER_LIFECYCLE_EVENT_STATE_NONE:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_SWITCH_USER:I = 0x1

.field private static final USER_LIFECYCLE_EVENT_UNKNOWN:I = 0x0

.field private static final USER_LIFECYCLE_EVENT_UNLOCKED_USER:I = 0x6

.field private static final USER_LIFECYCLE_EVENT_UNLOCKING_USER:I = 0x5

.field private static final USER_LIFECYCLE_EVENT_USER_RUNNING_LOCKED:I = 0x4

.field static final USER_START_MSG:I = 0x32

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e

.field private static final USER_SWITCH_WARNING_TIMEOUT_MS:I = 0x1f4

.field static final USER_UNLOCKED_MSG:I = 0x69

.field static final USER_UNLOCK_MSG:I = 0x64


# instance fields
.field volatile mBootCompleted:Z

.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private volatile mCurrentUserId:I

.field private mDelayUserDataLocking:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLastActiveUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxRunningUsers:I

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;

.field private volatile mTargetUserId:I

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserIdToUserJourneyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserController$UserJourneySession;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSwitchUiEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v0, v4, v0

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    new-array v4, v0, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/UserState;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    iget-object v4, v3, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v5, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method private broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V
    .locals 19

    move/from16 v16, p2

    new-instance v0, Landroid/content/Intent;

    move-object/from16 v13, p3

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    move-object v1, v11

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v17, 0x0

    move/from16 v10, v17

    move-object/from16 v18, v11

    move/from16 v11, v17

    const/16 v17, 0x3e8

    move/from16 v13, v17

    invoke-virtual/range {v0 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method private canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-static {v1, v2, p3, p4, p5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkGetCurrentUserPermissions()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private clearSessionId(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearSessionId(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    if-ne v2, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchForegroundProfileChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private dispatchUserLocking(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/am/UserState$KeyEvictedCallback;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/UserController;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private enforceShellRestriction(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    if-ltz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, v0, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v1, 0xf0

    const/16 v6, 0xc

    invoke-static {v1, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    const-wide/32 v6, 0x1d4c0

    const-wide/32 v8, 0x1d4c0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    const-string v1, "SystemServerTiming"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finishUserBoot took too long. elapsedTimeMs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6e

    invoke-virtual {v1, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): attempting unlock because parent is unlocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    const-string v2, "<null>"

    goto :goto_0

    :cond_5
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): delaying unlock because parent is locked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const/16 v0, 0x7578

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v1, v7, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v2, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v8, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move v9, v6

    goto/16 :goto_1

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {v7, v6}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    move-object v5, v1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v11, 0x0

    new-instance v2, Lcom/android/server/am/UserController$1;

    move-object v12, v2

    invoke-direct {v2, v7, v5}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    move/from16 v25, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    :cond_4
    :goto_0
    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping pre-created user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v11, v5

    move-object v5, v9

    move v9, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    return-void

    :cond_5
    move-object v11, v5

    move v9, v6

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v9}, Lcom/android/server/am/UserController$Injector;->startUserWidgets(I)V

    iget-object v1, v7, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Posting BOOT_COMPLETED user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_6

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v7, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0xf0

    const/16 v4, 0xd

    invoke-static {v3, v4, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v10, v1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v10, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, -0x77000000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v10

    move v4, v9

    move v5, v12

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/UserController;Landroid/content/Intent;III)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception v0

    move v9, v6

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x7576

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v2, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v3}, Lcom/android/internal/util/ProgressReporter;->start()V

    iget-object v3, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040123

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v3

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    const/high16 v4, 0x50000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v21, -0x1

    invoke-virtual/range {v5 .. v21}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v7, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .locals 10

    const-wide/16 v0, 0x2710

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    :cond_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v9

    const/4 v6, 0x0

    const-string v8, ""

    move-object v3, v9

    move-wide v4, v0

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object v9
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLU(I)[I
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    iget-object v6, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_0

    if-ne v2, v7, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    if-ne v6, p1, :cond_1

    move v8, v9

    :cond_1
    if-eqz v10, :cond_3

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v6}, Landroid/util/IntArray;->add(I)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCurrentUserLU(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUserSwitchUiEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$stopSingleUserLU$5(Landroid/app/IStopUserCallback;I)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private logAndClearSessionId(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v1, :cond_0

    const/16 v2, 0x109

    iget-wide v3, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v12, p3

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v4, 0x1

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v0, :cond_3

    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-ne v5, v6, :cond_0

    if-eq v12, v7, :cond_1

    :cond_0
    iget v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mJourney:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    if-ne v12, v7, :cond_2

    :cond_1
    monitor-exit v4

    return-void

    :cond_2
    const/16 v15, 0x109

    iget-wide v5, v0, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 v16, v5

    move/from16 v18, v7

    invoke-static/range {v15 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    :cond_3
    new-instance v5, Lcom/android/server/am/UserController$UserJourneySession;

    invoke-direct {v5, v13, v14, v12}, Lcom/android/server/am/UserController$UserJourneySession;-><init>(JI)V

    move-object v0, v5

    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v7, 0x15f90

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x108

    if-eqz v2, :cond_4

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    :goto_0
    move v8, v0

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v3, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v10

    iget v11, v3, Landroid/content/pm/UserInfo;->flags:I

    move-wide v5, v13

    move/from16 v7, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIII)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logUserLifecycleEvent(III)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserController$UserJourneySession;

    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, v1, Lcom/android/server/am/UserController$UserJourneySession;->mSessionId:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x109

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIII)V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserLifecycleEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " received without an active userJourneySession."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeUnlockUser(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->taskSupervisorResumeFocusedStackTopActivity()V

    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v17, p2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v14, v1

    move-object v2, v14

    const-string v1, "android.intent.extra.user_handle"

    move/from16 v12, p2

    invoke-virtual {v14, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, -0x77000000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xca

    invoke-direct {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/16 v18, 0x0

    move/from16 v12, v18

    const/16 v18, 0x3e8

    move-object/from16 v19, v14

    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method private shouldStopBackgroundUsersOnSwitch()Z
    .locals 3

    const-string v0, "fw.stop_bg_users_on_switch"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z
    .locals 34

    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    const/16 v0, 0x757c

    invoke-static {v0, v14}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    :try_start_0
    const-string v0, "getStartedUserState"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v10, v0

    const/4 v0, 0x1

    if-ne v10, v14, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "ActivityManager"

    const-string v4, "Current user has no UserState"

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v14, :cond_1

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-static {v14, v12}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    nop

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v13, :cond_4

    const-string v2, "clearAllLockedTasks"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_4
    const-string v2, "getUserInfo"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move-object v9, v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    const/4 v2, 0x0

    if-nez v9, :cond_5

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No user info for user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    nop

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_5
    if-eqz v13, :cond_6

    :try_start_2
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot switch to User #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": not a full user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    nop

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_6
    if-eqz v13, :cond_7

    :try_start_3
    iget-boolean v3, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v3, :cond_7

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start pre-created user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " as foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    nop

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_7
    if-eqz v13, :cond_8

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "startFreezingScreen"

    invoke-virtual {v11, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const v4, 0x10a009a

    const v5, 0x10a0099

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "updateStartedUserArrayStarting"

    invoke-virtual {v11, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    iget-object v6, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v6, :cond_9

    :try_start_6
    new-instance v15, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v6, v15

    iget-object v2, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v15, Lcom/android/server/am/UserController$UserProgressListener;

    invoke-direct {v15, v7}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v15}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v14, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v23, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    goto/16 :goto_9

    :cond_9
    :try_start_7
    iget v2, v6, Lcom/android/server/am/UserState;->state:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    if-ne v2, v8, :cond_a

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is shutting down - will start after full stop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;

    invoke-direct {v7, v1, v14, v13, v12}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_a
    move/from16 v23, v4

    :goto_1
    :try_start_9
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v12, :cond_b

    :try_start_a
    iget-object v2, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2, v12}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    if-eqz v23, :cond_c

    const-string/jumbo v2, "setUserState"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_c
    const-string/jumbo v2, "updateConfigurationAndProfileIds"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v13, :cond_e

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEvent(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    :try_start_b
    iput v14, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v4, -0x2710

    iput v4, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    iget-boolean v4, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v2, v14, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    if-eqz v4, :cond_d

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :cond_d
    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    :cond_e
    iget v2, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    iget-object v4, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :try_start_f
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_2
    :try_start_10
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_f

    const-string/jumbo v2, "updateStateStopping"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget v2, v6, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v6, v2}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/4 v3, 0x1

    :try_start_12
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    throw v0

    :cond_f
    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    if-ne v2, v8, :cond_10

    const-string/jumbo v2, "updateStateShutdown"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    iget v4, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v14, v4}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    const/4 v3, 0x1

    :try_start_16
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    throw v0

    :cond_10
    :goto_3
    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    if-nez v2, :cond_11

    const-string/jumbo v2, "updateStateBooting"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v14, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :cond_11
    const-string/jumbo v2, "sendMessages"

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    if-eqz v13, :cond_12

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4, v14, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v10, v14, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v10, v14, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0xbb8

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    iget-boolean v2, v9, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v2, :cond_13

    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_4

    :cond_13
    move/from16 v24, v3

    :goto_4
    if-eqz v24, :cond_14

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    const/high16 v2, 0x50000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v8, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    move-object v3, v8

    move-object/from16 v30, v6

    move v6, v7

    move-object/from16 v7, v16

    move-object/from16 v31, v8

    move-object/from16 v8, v17

    move-object/from16 v32, v9

    move-object/from16 v9, v18

    move/from16 v33, v10

    move/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_5

    :cond_14
    move-object/from16 v30, v6

    move-object/from16 v32, v9

    move/from16 v33, v10

    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    if-eqz p2, :cond_15

    :try_start_19
    const-string/jumbo v2, "moveUserToForeground"
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    move-object/from16 v14, p4

    :try_start_1a
    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    move/from16 v13, p1

    move-object/from16 v11, v30

    move/from16 v12, v33

    :try_start_1b
    invoke-direct {v1, v11, v12, v13}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_6

    :catchall_4
    move-exception v0

    move/from16 v13, p1

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v14, p4

    goto/16 :goto_a

    :cond_15
    move/from16 v13, p1

    move-object/from16 v14, p4

    move-object/from16 v11, v30

    move/from16 v12, v33

    const-string v2, "finishUserBoot"

    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    :goto_6
    if-eqz v24, :cond_16

    const-string/jumbo v2, "sendRestartBroadcast"

    invoke-virtual {v14, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/am/UserController$6;

    invoke-direct {v5, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    sget v27, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v15, 0x3e8

    const/16 v18, -0x1

    move-object v3, v10

    move-object/from16 v28, v10

    move/from16 v10, v16

    move-object/from16 v29, v11

    move-object/from16 v11, v17

    move/from16 v30, v12

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_7

    :cond_16
    move-object/from16 v29, v11

    move/from16 v30, v12

    :goto_7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_6
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v32, v9

    move/from16 v30, v10

    :goto_8
    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    move/from16 v4, v23

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v30, v10

    :goto_9
    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :catchall_a
    move-exception v0

    goto :goto_9

    :catchall_b
    move-exception v0

    :goto_a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private startUserNoChecks(IZLandroid/os/IProgressListener;)Z
    .locals 3

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUser-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "fg"

    goto :goto_0

    :cond_0
    const-string v2, "bg"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/UserController;->startUserInternal(IZLandroid/os/IProgressListener;Lcom/android/server/utils/TimingsTraceAndSlog;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    throw v1
.end method

.method private stopBackgroundUsersOnSwitchIfEnforced(I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/UserController;->shouldStopBackgroundUsersOnSwitch()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    nop

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_4

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->onEphemeralUserStop(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, p1

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    monitor-exit v2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowDelayedLocking set with KeyEvictedCallback, ignore it and lock user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "ActivityManager"

    invoke-static {v3, v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :cond_0
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda0;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p4, :cond_6

    iget-object v1, v0, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    move v1, p2

    new-instance v2, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/UserController;ILjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method private stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, -0x3

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    aget v2, v0, v1

    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force stop user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Related users will not be stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    return v3

    :cond_4
    const/4 v3, -0x4

    return v3

    :cond_5
    array-length v1, v0

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_8

    aget v4, v0, v2

    nop

    const/4 v5, 0x0

    if-ne v4, p1, :cond_6

    move-object v6, p4

    goto :goto_3

    :cond_6
    move-object v6, v5

    :goto_3
    if-ne v4, p1, :cond_7

    move-object v5, p5

    :cond_7
    invoke-direct {p0, v4, p3, v6, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(IZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return v3
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Observers that didn\'t respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 10

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    :try_start_0
    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v1, Lcom/android/server/am/UserState;->tokenProvided:Z

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return v3

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v5, 0x0

    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    array-length v4, v0

    :goto_3
    if-ge v3, v4, :cond_7

    aget v5, v0, v3

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_6

    if-eq v5, p1, :cond_6

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (parent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return v2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private updateCurrentProfileIds()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateStartedUserArrayLU()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_2

    iget v5, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    move v0, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateUserToLockLU(IZ)I
    .locals 5

    move v0, p1

    iget-boolean v1, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    const-string v3, "ActivityManager"

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, stopping user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lock user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishUserStopped, user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", skip locking"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x2710

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method canStartMoreUsers()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, v2, :cond_0

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

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x7580

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/am/UserController;->isUserSwitchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    :cond_0
    iput-boolean v2, p1, Lcom/android/server/am/UserState;->switching:Z

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersOnSwitchIfEnforced(I)V

    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 19

    move-object/from16 v11, p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x757f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    if-lez v12, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move-object/from16 v14, p1

    :try_start_0
    iput-boolean v2, v14, Lcom/android/server/am/UserState;->switching:Z

    iput-object v13, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v10}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide v3, v15

    move-object v5, v9

    move-object v6, v13

    move-object/from16 v8, p1

    move-object/from16 v17, v9

    move/from16 v9, p2

    move/from16 v18, v12

    move v12, v10

    move/from16 v10, p3

    :try_start_4
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v2, p3

    :try_start_5
    invoke-interface {v1, v2, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    move/from16 v2, p3

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v2, p3

    move-object/from16 v17, v9

    move/from16 v18, v12

    move v12, v10

    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v2, p3

    move/from16 v18, v12

    move v12, v10

    :goto_2
    add-int/lit8 v10, v12, 0x1

    move/from16 v12, v18

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    move/from16 v18, v12

    move v12, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    move/from16 v2, p3

    move/from16 v18, v12

    :goto_3
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_1
    move-object/from16 v14, p1

    move/from16 v2, p3

    move/from16 v18, v12

    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_4
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    const-string v3, "    User #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  mStartedUserArray: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mUserLru: ["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_3

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastActiveUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLastActiveUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDelayUserDataLocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  shouldStopBackgroundUsersOnSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/UserController;->shouldStopBackgroundUsersOnSwitch()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMaxRunningUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUserSwitchUiEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide v5, 0x10500000001L

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UserState;

    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v9, v4, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {p1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/UserState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v7, v4

    if-ge v3, v7, :cond_1

    const-wide v7, 0x20500000002L

    aget v4, v4, v3

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const-wide v7, 0x20500000003L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const-wide v7, 0x20b00000004L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10500000002L

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method ensureNotSpecialUser(I)V
    .locals 3

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method expandUserId(I)[I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;Z)V
    .locals 11

    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x757a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v1, 0x1

    move v2, v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/server/am/UserState;->mKeyEvictedCallbacks:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_2

    iget v7, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    if-eqz p2, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Delayed locking enabled while KeyEvictedCallbacks not empty, userId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " callbacks:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/UserController;->updateUserToLockLU(IZ)I

    move-result v8

    move v2, v8

    const/16 v8, -0x2710

    if-ne v2, v8, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x0

    :cond_3
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerInternal;->removeUserState(I)V

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    const-string v4, "finish user"

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/IStopUserCallback;

    if-eqz v7, :cond_5

    :try_start_1
    invoke-interface {v8, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_3

    :cond_5
    invoke-interface {v8, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v9

    :goto_4
    goto :goto_2

    :cond_6
    if-eqz v7, :cond_9

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerOnUserStopped(I)V

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v0}, Lcom/android/server/am/UserController$Injector;->taskSupervisorRemoveUser(I)V

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    :cond_7
    if-nez v1, :cond_8

    return-void

    :cond_8
    invoke-direct {p0, v2, v6}, Lcom/android/server/am/UserController;->dispatchUserLocking(ILjava/util/List;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;Z)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p2

    const/16 v0, 0x7579

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->onUserStopping(I)V

    new-instance v0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;

    move/from16 v13, p3

    invoke-direct {v0, v1, v14, v13}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/am/UserController$5;

    invoke-direct {v5, v1, v0}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    move/from16 v13, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v14, v16

    const/16 v16, 0x3e8

    move/from16 v15, v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    move/from16 v18, p1

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    const/16 v0, 0x7577

    invoke-static {v0, v15}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v2, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move v4, v15

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    if-nez v15, :cond_3

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->isPreCreated(I)Z

    move-result v0

    const/high16 v14, 0x50000000

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v14, v16

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v20, v15

    move/from16 v15, v16

    const/16 v16, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move/from16 v19, v20

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    goto :goto_0

    :cond_4
    move/from16 v20, v15

    :goto_0
    move/from16 v4, v20

    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v6, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/am/UserController;->broadcastProfileAccessibleStateChanged(IILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v5

    const-string v6, "android.intent.extra.USER"

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v6, 0x50000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v20, v6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    sget v32, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v33, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v34

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v35

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v6

    invoke-virtual/range {v20 .. v36}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    :cond_5
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    const-string/jumbo v5, "persist.pm.mock-upgrade"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    goto :goto_3

    :cond_7
    :goto_1
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v6, 0x1

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v7, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;

    invoke-direct {v7, v1, v2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    nop

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    move v4, v15

    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method getCurrentOrTargetUserId()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentOrTargetUserIdLU()I
    .locals 2

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_0
    return v0
.end method

.method getCurrentProfileIds()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserId()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentUserIdChecked()I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/UserController;->checkGetCurrentUserPermissions()V

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v0

    return v0
.end method

.method getCurrentUserIdLU()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLU()Landroid/content/pm/UserInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method getMaxRunningUsers()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRunningUsersLU()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method getStartedUserArray()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :goto_0
    return-object v1
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v8, :cond_0

    return v8

    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    const/4 v13, 0x3

    if-eqz v7, :cond_f

    const/16 v0, 0x3e8

    if-eq v7, v0, :cond_f

    invoke-virtual {v6, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v14

    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v0

    const/4 v15, 0x2

    if-eqz v0, :cond_1

    if-eqz v14, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-ne v9, v15, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    move v2, v14

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserController;->canInteractWithAcrossProfilesPermission(IZIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v6, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    if-eq v9, v0, :cond_8

    if-ne v9, v13, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    move v0, v14

    :goto_1
    if-nez v0, :cond_e

    const/4 v1, -0x3

    if-ne v8, v1, :cond_9

    move v12, v11

    move-object/from16 v2, p6

    goto :goto_2

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_a

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v3, " asks to run as user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but is calling from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v3, "; this requires "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v9, v15, :cond_d

    const-string v3, " or "

    if-eqz v9, :cond_b

    if-eqz v14, :cond_c

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v14, :cond_d

    if-ne v9, v13, :cond_d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    move-object/from16 v2, p6

    goto :goto_2

    :cond_f
    move-object/from16 v2, p6

    :goto_2
    if-nez p4, :cond_10

    invoke-virtual {v6, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    :cond_10
    const/16 v0, 0x7d0

    if-ne v7, v0, :cond_12

    if-ltz v12, :cond_12

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v6, v0, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shell does not have permission to access user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_3
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->logAndClearSessionId(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    goto/16 :goto_0

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->onUserUnlocked(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->clearSessionId(I)V

    goto/16 :goto_0

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->onUserUnlocking(I)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_0

    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    goto/16 :goto_0

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    goto/16 :goto_0

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->onUserSwitching(II)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v4, 0x3

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/am/UserController;->logUserJourneyInfo(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/am/UserController;->logUserLifecycleEvent(III)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/UserController;->clearSessionId(II)V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    goto :goto_0

    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_0

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_e
        0x14 -> :sswitch_d
        0x1e -> :sswitch_c
        0x28 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3c -> :sswitch_9
        0x46 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6e -> :sswitch_3
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method hasStartedUserState(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

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

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfile(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isLockScreenDisabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSystemUserStarted()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    iget v3, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUserOrItsParentRunning(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUserRunning(II)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v3

    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    :pswitch_2
    return v3

    :cond_3
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_2

    return v1

    :pswitch_3
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    :pswitch_4
    return v3

    :cond_4
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    move v1, v3

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic lambda$dispatchUserLocking$11$UserController(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState$KeyEvictedCallback;

    invoke-interface {v1, p1}, Lcom/android/server/am/UserState$KeyEvictedCallback;->keyEvicted(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$finishUserStopping$10$UserController(Lcom/android/server/am/UserState;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$finishUserStopping$9$UserController(Lcom/android/server/am/UserState;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->finishUserStopped(Lcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public synthetic lambda$finishUserSwitch$0$UserController(Lcom/android/server/am/UserState;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$finishUserUnlocked$2$UserController(Lcom/android/server/am/UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method public synthetic lambda$finishUserUnlockedCompleted$3$UserController(Landroid/content/pm/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->makeInitialized(I)V

    return-void
.end method

.method public synthetic lambda$finishUserUnlockedCompleted$4$UserController(Landroid/content/Intent;III)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v17, p2

    move/from16 v15, p3

    move/from16 v16, p4

    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v3, Lcom/android/server/am/UserController$2;

    move-object v4, v3

    move/from16 v14, p2

    invoke-direct {v3, v0, v14}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Lcom/android/server/am/UserController;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v18, 0x3e8

    move/from16 v14, v18

    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method public synthetic lambda$finishUserUnlocking$1$UserController(ILcom/android/server/am/UserState;)V
    .locals 3

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserManagerInternal;->setUserState(II)V

    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$handleMessage$14$UserController(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    return-void
.end method

.method public synthetic lambda$scheduleStartProfiles$12$UserController()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$startUserInternal$13$UserController(IZLandroid/os/IProgressListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$6$UserController(ILcom/android/server/am/UserState;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;Z)V

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$7$UserController(ILcom/android/server/am/UserState;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$stopSingleUserLU$8$UserController(ILjava/lang/Runnable;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Ljava/lang/Runnable;)V

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    return-void
.end method

.method onSystemReady()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    return-void
.end method

.method onUserRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "registerUserSwitchObserver"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method restartUser(IZ)I
    .locals 6

    new-instance v5, Lcom/android/server/am/UserController$3;

    invoke-direct {v5, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UserController;->stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v0

    return v0
.end method

.method scheduleStartProfiles()V
    .locals 2

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/UserController;->sendLockedBootCompletedBroadcast(Landroid/content/IIntentReceiver;I)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .locals 39

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    const/4 v0, 0x0

    const-string v15, "android.intent.extra.USER"

    const-string v14, "android.intent.extra.user_handle"

    const/high16 v13, 0x50000000

    if-ltz v2, :cond_1

    :try_start_0
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move v11, v4

    const/4 v4, 0x0

    move v10, v4

    :goto_0
    if-ge v10, v11, :cond_0

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v9, v4

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v8, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v8, v15, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v8

    move-object/from16 v30, v8

    move/from16 v8, v16

    move/from16 v31, v9

    move-object/from16 v9, v18

    move/from16 v32, v10

    move-object/from16 v10, v19

    move/from16 v33, v11

    move-object/from16 v11, v20

    move-object/from16 v34, v12

    move/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v35, v14

    move/from16 v14, v27

    move-object/from16 v36, v15

    move/from16 v15, v28

    move/from16 v16, v29

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v31

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    nop

    add-int/lit8 v10, v32, 0x1

    move/from16 v11, v33

    move-object/from16 v12, v34

    move-object/from16 v14, v35

    move-object/from16 v15, v36

    const/high16 v13, 0x50000000

    goto :goto_0

    :cond_0
    move/from16 v32, v10

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v14

    move-object/from16 v36, v15

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    move-object/from16 v35, v14

    move-object/from16 v36, v15

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v15, v4

    const/4 v4, 0x0

    move v14, v4

    :goto_2
    if-ge v14, v15, :cond_2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    move v13, v4

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    const/high16 v11, 0x50000000

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, v35

    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v9, v36

    invoke-virtual {v12, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v5, v12

    move-object/from16 v37, v9

    move-object/from16 v9, v16

    move-object/from16 v38, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v29, v12

    move/from16 v12, v20

    move/from16 v30, v13

    move-object/from16 v13, v25

    move/from16 v25, v14

    move/from16 v14, v26

    move/from16 v26, v15

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    nop

    add-int/lit8 v14, v25, 0x1

    move/from16 v15, v26

    move-object/from16 v36, v37

    move-object/from16 v35, v38

    goto :goto_2

    :cond_2
    move/from16 v25, v14

    move/from16 v26, v15

    move-object/from16 v38, v35

    move-object/from16 v37, v36

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v4

    const/high16 v4, 0x50000000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v4, v38

    invoke-virtual {v15, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-virtual {v15, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "android.permission.MANAGE_USERS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v20, -0x1

    move-object v5, v15

    move-object/from16 v25, v15

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v21

    move/from16 v19, v22

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_4
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method setInitialConfig(ZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    iput p2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    iput-boolean p3, p0, Lcom/android/server/am/UserController;->mDelayUserDataLocking:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected shouldConfirmCredentials(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method startProfile(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to start a profile"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start disabled profile #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result v1

    return v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startProfiles()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    const/16 v7, 0x10

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v6, v0, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_3

    const-string v2, "ActivityManager"

    const-string v6, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method startUser(IZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .locals 2

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "startUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUserNoChecks(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUserInForeground(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    :cond_0
    return-void
.end method

.method stopProfile(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You either need MANAGE_USERS or INTERACT_ACROSS_USERS_FULL permission to stop a profile"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "no_debugging_features"

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not a profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method stopRunningUsersLU(I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method stopUser(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I
    .locals 3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "stopUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/UserController;->stopUsersLU(IZZLandroid/app/IStopUserCallback;Lcom/android/server/am/UserState$KeyEvictedCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop system user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method switchUser(I)Z
    .locals 8

    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    const/16 v0, 0x757b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is already the current user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No user info for user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not a full user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mInitialized:Z

    if-nez v5, :cond_4

    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": UserController not ready yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return v3

    :cond_4
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    iget-boolean v5, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "unlockUser"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x757d

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    :goto_1
    return v0
.end method
