.class Lcom/android/server/wm/RecentTasks;
.super Ljava/lang/Object;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTasks$Callbacks;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x5

.field private static final FREEZE_TASK_LIST_TIMEOUT_MS:J

.field private static final NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

.field private static final NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TASK_ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveTasksSessionDurationMs:J

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentTasks$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckTrimmableTasksOnIdle:Z

.field private mFeatureId:Ljava/lang/String;

.field private mFreezeTaskListReordering:Z

.field private mFreezeTaskListTimeoutMs:J

.field private mGlobalMaxNumTasks:I

.field private mHasVisibleRecentTasks:Z

.field private final mHiddenTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

.field private mMaxNumVisibleTasks:I

.field private mMinNumVisibleTasks:I

.field private final mPersistedTaskIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsComponent:Landroid/content/ComponentName;

.field private mRecentsUid:I

.field private final mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field private final mTaskPersister:Lcom/android/server/wm/TaskPersister;

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    sget-object v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda1;

    sput-object v0, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    sput-object v0, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v8, Lcom/android/server/wm/TaskPersister;

    iget-object v6, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    move-object v1, v8

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPersister;-><init>(Ljava/io/File;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V

    iput-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const v1, 0x11100f6

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->loadParametersFromResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskPersister;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    sget-wide v0, Lcom/android/server/wm/RecentTasks;->FREEZE_TASK_LIST_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/android/server/wm/RecentTasks$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$1;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    new-instance v0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentTasks;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentTasks;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v7, v1, Lcom/android/server/wm/Task;->maxRecents:I

    sub-int/2addr v7, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_f

    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    if-eq v1, v9, :cond_e

    invoke-direct {v0, v1, v9}, Lcom/android/server/wm/RecentTasks;->hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget v10, v1, Lcom/android/server/wm/Task;->mUserId:I

    iget v11, v9, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v10, v11, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v10, v9, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v11, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v5

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x10080000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    const/high16 v15, 0x8000000

    and-int/2addr v15, v14

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_5

    move v15, v5

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v15, :cond_6

    move/from16 v16, v5

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    if-nez v11, :cond_7

    if-nez v12, :cond_7

    if-nez v16, :cond_7

    goto :goto_7

    :cond_7
    if-eqz v16, :cond_b

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v9, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    if-lez v7, :cond_a

    add-int/lit8 v7, v7, -0x1

    if-eqz v12, :cond_d

    if-eqz v13, :cond_a

    goto :goto_7

    :cond_a
    goto :goto_8

    :cond_b
    if-nez v6, :cond_d

    if-eqz v15, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_e

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_8
    return v8

    :cond_f
    const/4 v4, -0x1

    return v4
.end method

.method private getRecentTasksImpl(IIZII)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p0, p4, v2}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is still locked. Cannot load recents"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    invoke-virtual {p0, p4}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_a

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v7}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v7, v6, v5, v0}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p1, :cond_2

    goto :goto_2

    :cond_2
    iget v8, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v8

    if-nez v8, :cond_5

    iget v8, v7, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v8, p5, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_7

    iget-boolean v8, v7, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    return-object v3
.end method

.method private hasCompatibleActivityTypeAndWindowingMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .locals 12

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    if-nez v6, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    if-nez v7, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move v9, v3

    :goto_3
    if-eq v0, v6, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v10, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v10, v2

    :goto_5
    if-eq v1, v7, :cond_7

    if-nez v5, :cond_7

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    move v11, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v2

    :goto_7
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    return v2
.end method

.method private isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->getTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    if-ltz v2, :cond_3

    if-gt p3, v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p1, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    if-ltz v2, :cond_6

    if-gt p3, v2, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method static synthetic lambda$static$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .locals 2

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private loadPersistedTaskIdsForUserLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskPersister;->loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded persisted task ids for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    iget-object v4, v4, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    iget v6, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v7, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v7, v5

    move-object v10, v4

    :goto_2
    const-string v11, " @"

    const-string v12, "Bad chain @"

    const-string v13, "ActivityTaskManager"

    if-ge v7, v3, :cond_a

    iget-object v14, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    const/4 v15, -0x1

    if-ne v14, v4, :cond_3

    iget-object v8, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v8, :cond_2

    iget v8, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-eq v8, v15, :cond_4

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": first task has next affiliate: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v16, v4

    goto/16 :goto_4

    :cond_3
    iget-object v8, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v8, v10, :cond_9

    iget v8, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    iget v9, v10, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v8, v9, :cond_4

    move-object/from16 v16, v4

    goto/16 :goto_3

    :cond_4
    iget v8, v14, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string v9, ": last task "

    move-object/from16 v16, v4

    const-string v4, " has previous affiliate "

    if-ne v8, v15, :cond_5

    iget-object v8, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_5
    iget-object v8, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v15, ": task "

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but should be id "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_6
    iget v4, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v8, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v4, v8, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has affiliated id "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " but should be "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move-object v10, v14

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad chain ran off index "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v4, v16

    goto/16 :goto_2

    :cond_9
    move-object/from16 v16, v4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": middle task "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has bad next affiliate "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " id "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v14, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", expected "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v16, v4

    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    if-ge v7, v2, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": did not extend to task "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :cond_c
    if-eqz v6, :cond_e

    move v4, v5

    :goto_5
    if-gt v4, v7, :cond_d

    iget-object v8, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v9, v0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    sub-int v11, v4, v5

    invoke-virtual {v9, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    return v4

    :cond_e
    const/4 v4, 0x0

    return v4
.end method

.method private notifyTaskAdded(Lcom/android/server/wm/Task;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskAdded(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method private notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/RecentTasks$Callbacks;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/RecentTasks$Callbacks;->onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListUpdated()V

    return-void
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget v1, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_0

    iput-boolean v3, v0, Lcom/android/server/wm/Task;->inRecents:Z

    add-int/lit8 v2, p1, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-lt v2, p1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    iget v5, v4, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v5, v1, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/wm/RecentTasks;->TASK_ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iput-boolean v3, v2, Lcom/android/server/wm/Task;->inRecents:Z

    iget-object v5, v2, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v6, 0x0

    const-string v7, "ActivityTaskManager"

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Link error 1 first.next="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v5, -0x1

    if-ge v8, v9, :cond_6

    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v10, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v11, v9, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eq v11, v10, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 2 next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v9, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_4
    iget-object v11, v10, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eq v11, v9, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Link error 3 prev="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " setting next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v9}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v10, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_5
    iput-boolean v3, v10, Lcom/android/server/wm/Task;->inRecents:Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v8, v3, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Link error 4 last.prev="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v6}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int v4, p1, v5

    return v4
.end method

.method private removeForAddTask(Lcom/android/server/wm/Task;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->findRemoveIndexForAddTask(Lcom/android/server/wm/Task;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to hidden list because adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return v0
.end method

.method private removeTasksForUserLocked(I)V
    .locals 12

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t remove recent task on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_2

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x62304b66

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeUnreachableHiddenTasks(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    const-string v4, "remove-hidden-task"

    invoke-virtual {v2, v1, v3, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    nop

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private syncPersistentTaskIdsLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No task ids found for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mPersistedTaskIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private trimInactiveRecentTasks()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->getCurrentProfileIds()[I

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v1, v5

    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTmpQuietProfileUserIds:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/RecentTasks;->isActiveRecentTask(Lcom/android/server/wm/Task;Landroid/util/SparseBooleanArray;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v6, v5, v4, v2}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/RecentTasks;->isTrimmable(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v6, v3, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    invoke-virtual {p0, v6, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/wm/Task;)V
    .locals 10

    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    if-lez v1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    iget-boolean v5, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget v6, v6, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-ne v5, v6, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x0

    iget-boolean v6, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_6

    if-nez v0, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task with inRecent not in recents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityTaskManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeForAddTask(Lcom/android/server/wm/Task;)I

    move-result v6

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v0, :cond_e

    iget-object v2, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    :cond_9
    if-eqz v2, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_c

    iget-object v8, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, v8, :cond_a

    add-int/lit8 v8, v7, 0x1

    goto :goto_2

    :cond_a
    move v8, v7

    :goto_2
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/wm/Task;I)Z

    move-result v9

    if-eqz v9, :cond_b

    return-void

    :cond_b
    const/4 v5, 0x1

    goto :goto_3

    :cond_c
    const/4 v5, 0x1

    :goto_3
    goto :goto_7

    :cond_d
    const/4 v5, 0x1

    goto :goto_7

    :cond_e
    :goto_4
    goto :goto_7

    :cond_f
    :goto_5
    iget-boolean v7, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-eqz v7, :cond_10

    if-eq v6, v2, :cond_10

    move v2, v6

    goto :goto_6

    :cond_10
    move v2, v4

    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->notifyTaskAdded(Lcom/android/server/wm/Task;)V

    goto :goto_4

    :goto_7
    if-eqz v5, :cond_11

    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    :cond_11
    iput-boolean v3, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method addToBottom(Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->canAddTaskWithoutTrim(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x1

    return v0
.end method

.method cleanupDisabledPackageTasksLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, p3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v7, "disabled-package"

    invoke-virtual {v6, v2, v4, v1, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method cleanupLocked(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v4, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing auto-remove without activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_4

    :try_start_0
    iget-object v6, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    const v7, 0x10000400

    invoke-interface {v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    nop

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailActCache:Ljava/util/HashMap;

    iget-object v7, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_5

    :cond_4
    :goto_1
    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_ACTIVITY_INFO_TOKEN:Landroid/content/pm/ActivityInfo;

    const/high16 v7, 0x800000

    const/4 v8, 0x0

    if-ne v4, v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_6

    :try_start_1
    iget-object v9, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-interface {v1, v9, v10, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    nop

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    :cond_5
    iget-object v9, p0, Lcom/android/server/wm/RecentTasks;->mTmpAvailAppCache:Ljava/util/HashMap;

    iget-object v10, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_5

    :cond_6
    :goto_2
    sget-object v9, Lcom/android/server/wm/RecentTasks;->NO_APPLICATION_INFO_TOKEN:Landroid/content/pm/ApplicationInfo;

    if-eq v6, v9, :cond_8

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    iput-boolean v8, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    goto :goto_5

    :cond_8
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing no longer valid recent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    iget-boolean v5, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v5, :cond_b

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_b

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v7

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    goto :goto_5

    :cond_b
    :goto_4
    iput-boolean v8, v3, Lcom/android/server/wm/Task;->isAvailable:Z

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_e

    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v2

    goto :goto_6

    :cond_e
    return-void
.end method

.method containsTaskId(II)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method createRecentTaskInfo(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 7

    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_0
    nop

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    iget-boolean v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V

    iget-boolean v2, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v5}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->childrenTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const-string v0, "ACTIVITY MANAGER RECENT TASKS (dumpsys activity recents)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRecentsComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReordering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFreezeTaskListReorderingPendingTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHiddenTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v2, 0x0

    move v10, v0

    :goto_0
    const-string v11, "    "

    const-string v12, ": "

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ge v2, v9, :cond_d

    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-eqz v8, :cond_a

    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v14

    goto :goto_1

    :cond_2
    move v3, v13

    :goto_1
    if-nez v3, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v14

    goto :goto_2

    :cond_3
    move v4, v13

    :goto_2
    or-int/2addr v3, v4

    :cond_4
    if-nez v3, :cond_6

    iget-object v4, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v14

    goto :goto_3

    :cond_5
    move v4, v13

    :goto_3
    or-int/2addr v3, v4

    :cond_6
    if-nez v3, :cond_8

    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v13, v14

    goto :goto_4

    :cond_7
    nop

    :goto_4
    or-int/2addr v3, v13

    :cond_8
    if-nez v3, :cond_9

    iget-object v4, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_9
    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    if-nez v1, :cond_b

    const-string v3, "  Recent tasks:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v10, 0x1

    :cond_b
    const-string v3, "  * Recent #"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    invoke-virtual {v0, v7, v11}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, v6, Lcom/android/server/wm/RecentTasks;->mHasVisibleRecentTasks:Z

    if-eqz v0, :cond_1b

    const/4 v15, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v6, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v4

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v8, :cond_17

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_e

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v14

    goto :goto_7

    :cond_e
    move v3, v13

    :goto_7
    if-nez v3, :cond_10

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v14

    goto :goto_8

    :cond_f
    move v4, v13

    :goto_8
    or-int/2addr v3, v4

    :cond_10
    if-nez v3, :cond_12

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_11

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v14

    goto :goto_9

    :cond_11
    move v4, v13

    :goto_9
    or-int/2addr v3, v4

    :cond_12
    if-nez v3, :cond_14

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_13

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v4, v14

    goto :goto_a

    :cond_13
    move v4, v13

    :goto_a
    or-int/2addr v3, v4

    :cond_14
    if-nez v3, :cond_16

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_15

    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v14

    goto :goto_b

    :cond_15
    move v4, v13

    :goto_b
    or-int/2addr v3, v4

    :cond_16
    if-nez v3, :cond_17

    goto :goto_c

    :cond_17
    if-nez v15, :cond_19

    if-eqz v10, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_18
    const-string v3, "  Visible recent tasks (most recent first):"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v15, v3

    move v10, v4

    :cond_19
    const-string v3, "  * RecentTaskInfo #"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v11}, Landroid/app/ActivityManager$RecentTaskInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_1a
    move v1, v15

    :cond_1b
    if-nez v10, :cond_1c

    const-string v0, "  (nothing)"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method flush()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPersister;->flush()V

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

.method getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v4, v3, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/android/server/wm/AppTaskImpl;

    iget-object v6, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v7, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v5, v6, v7, p1}, Lcom/android/server/wm/AppTaskImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V

    invoke-virtual {v5}, Lcom/android/server/wm/AppTaskImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getCurrentProfileIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method getInputListener()Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mListener:Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    return-object v0
.end method

.method getPersistableTaskIds(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v4, :cond_0

    iget-boolean v4, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getRawTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentTaskIds()Landroid/util/SparseBooleanArray;
    .locals 7

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/RecentTasks;->getRecentTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentsComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method getRecentsComponentFeatureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mFeatureId:Ljava/lang/String;

    return-object v0
.end method

.method getRecentsComponentUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    return v0
.end method

.method getTask(I)Lcom/android/server/wm/Task;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method isCallerRecents(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    return v0
.end method

.method isFreezeTaskListReorderingSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    return v0
.end method

.method isRecentsComponent(Landroid/content/ComponentName;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRecentsComponentHomeActivity(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isTrimmable(Lcom/android/server/wm/Task;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOnHomeDisplay()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method isUserRunning(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method isVisibleRecentTask(Lcom/android/server/wm/Task;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    return v1

    :pswitch_1
    return v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTopWhenVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, p1, :cond_1

    return v1

    :pswitch_5
    return v1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method loadParametersFromResources(Landroid/content/res/Resources;)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10e008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e0086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "ro.recents.grid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10e008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e0085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    goto :goto_0

    :cond_1
    const v0, 0x10e008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    const v0, 0x10e0084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    :goto_0
    const v0, 0x10e0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method loadRecentsComponent(Landroid/content/res/Resources;)V
    .locals 6

    const v0, 0x1040272

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    iput-object v1, p0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load application info for recents component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method loadUserRecentsLocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->loadPersistedTaskIdsForUserLocked(I)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p1, :cond_1

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->shouldPersistTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading recents for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " into memory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->cleanupLocked(I)V

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    :cond_3
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeOrRecentsRootTask()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->syncPersistentTaskIdsLocked()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskPersister;->wakeup(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method onActivityIdle(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTasks;->removeUnreachableHiddenTasks(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    :cond_1
    return-void
.end method

.method onLockTaskModeStateChanged(II)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    iget v2, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-static {v2}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onPackagesSuspendedChanged([Ljava/lang/String;ZI)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v4, p3, :cond_1

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eq v4, p2, :cond_1

    iput-boolean p2, v3, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v6, "suspended-package"

    invoke-virtual {v5, v3, v4, v2, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onSystemReadyLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RecentTasks;->loadRecentsComponent(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method remove(Lcom/android/server/wm/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    return-void
.end method

.method removeAllVisibleTasks(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v3, v2, v2}, Lcom/android/server/wm/RecentTasks;->notifyTaskRemoved(Lcom/android/server/wm/Task;ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeTasksByPackageName(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    nop

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v4, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v5, "remove-package-task"

    invoke-virtual {v4, v2, v1, v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    return-void
.end method

.method resetFreezeTaskListReorderingOnTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/Task;)V

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

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskPersister;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method setFreezeTaskListReordering()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskListFrozen(Z)V

    iput-boolean v1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListReordering:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentTasks;->mResetFreezeTaskListOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setFreezeTaskListTimeout(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/RecentTasks;->mFreezeTaskListTimeoutMs:J

    return-void
.end method

.method setGlobalMaxNumTasks(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mGlobalMaxNumTasks:I

    return-void
.end method

.method setParameters(IIJ)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/RecentTasks;->mMinNumVisibleTasks:I

    iput p2, p0, Lcom/android/server/wm/RecentTasks;->mMaxNumVisibleTasks:I

    iput-wide p3, p0, Lcom/android/server/wm/RecentTasks;->mActiveTasksSessionDurationMs:J

    return-void
.end method

.method unloadUserDataFromMemoryLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unloading recents for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from memory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTasks;->removeTasksForUserLocked(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskPersister;->unloadUserDataFromMemory(I)V

    return-void
.end method

.method unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method usersWithRecentsLoadedLocked()[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/RecentTasks;->mUsersWithRecentsLoaded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aput v3, v0, v1

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2

    :cond_2
    return-object v0
.end method
