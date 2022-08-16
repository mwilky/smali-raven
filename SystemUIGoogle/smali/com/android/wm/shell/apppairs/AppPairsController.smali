.class public final Lcom/android/wm/shell/apppairs/AppPairsController;
.super Ljava/lang/Object;
.source "AppPairsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;
    }
.end annotation


# instance fields
.field public final mActiveAppPairs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/apppairs/AppPair;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mImpl:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    invoke-direct {v0}, Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mImpl:Lcom/android/wm/shell/apppairs/AppPairsController$AppPairsImpl;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p3, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object p6, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iput-object p4, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public pairInner(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/apppairs/AppPair;
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    iget-object v4, v3, Lcom/android/wm/shell/apppairs/AppPairsPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/apppairs/AppPair;

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v15, 0x0

    const/4 v7, 0x2

    const/4 v14, 0x0

    const/4 v8, 0x3

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Lcom/android/wm/shell/apppairs/AppPairsPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v5, v13, v14

    aput-object v9, v13, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v7

    const v5, 0x77985ac8

    const/16 v9, 0x10

    invoke-static {v12, v5, v9, v15, v13}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, v3, Lcom/android/wm/shell/apppairs/AppPairsPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/android/wm/shell/apppairs/AppPairsPool;->incrementPool()V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v9, v3

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v11, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v13, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v3, v8, v7

    const v3, -0x2c400a5a

    invoke-static {v5, v3, v13, v15, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v3, :cond_4

    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    iput-object v1, v4, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, v4, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v5, v4, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v7}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v9

    iget-object v5, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v12, v4, Lcom/android/wm/shell/apppairs/AppPair;->mParentContainerCallbacks:Lcom/android/wm/shell/apppairs/AppPair$1;

    iget-object v13, v4, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v5, v4, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    iget-object v5, v5, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/16 v16, 0x1

    const-string v8, "AppPairSplitDivider"

    move-object v7, v3

    move-object v11, v4

    move v6, v14

    move-object v14, v5

    move-object v5, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;I)V

    iput-object v3, v4, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v8, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v7, v8, v3}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v3, v7, v6}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v6

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v8, 0x1

    invoke-virtual {v6, v1, v7, v8}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v6

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v6, v2, v7, v8}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v1, v7}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v6

    iget-object v7, v4, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    iget-object v6, v4, Lcom/android/wm/shell/apppairs/AppPair;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    iget-object v2, v4, Lcom/android/wm/shell/apppairs/AppPair;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, v4, Lcom/android/wm/shell/apppairs/AppPair;->mController:Lcom/android/wm/shell/apppairs/AppPairsController;

    iget-object v1, v1, Lcom/android/wm/shell/apppairs/AppPairsController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v14

    move-object v5, v15

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x21024d05

    const/16 v9, 0xf

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    invoke-static {v2, v8, v9, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    if-nez v6, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/apppairs/AppPairsPool;->release(Lcom/android/wm/shell/apppairs/AppPair;)V

    return-object v5

    :cond_6
    iget-object v0, v0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4
.end method

.method public setPairsPool(Lcom/android/wm/shell/apppairs/AppPairsPool;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AppPairsController"

    const-string v1, "#"

    invoke-static {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unpair(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/apppairs/AppPair;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/apppairs/AppPair;

    invoke-virtual {v4}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v5

    if-eq p1, v5, :cond_3

    iget-object v5, v4, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo1:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    if-eq p1, v5, :cond_3

    iget-object v5, v4, Lcom/android/wm/shell/apppairs/AppPair;->mTaskInfo2:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :cond_1
    if-ne p1, v6, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    if-eqz v5, :cond_4

    move-object v0, v4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_4
    const/4 v3, 0x0

    if-nez v0, :cond_7

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p0, :cond_6

    int-to-long p0, p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x38a46b82

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p2, v0, v2, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v4, :cond_8

    int-to-long v4, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0xdf6e771

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v1

    aput-object p1, v8, v2

    invoke-static {v6, v7, v2, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mActiveAppPairs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/wm/shell/apppairs/AppPair;->getRootTaskId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/apppairs/AppPair;->unpair(Landroid/window/WindowContainerToken;)V

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/apppairs/AppPairsController;->mPairsPool:Lcom/android/wm/shell/apppairs/AppPairsPool;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsPool;->release(Lcom/android/wm/shell/apppairs/AppPair;)V

    :cond_9
    return-void
.end method
