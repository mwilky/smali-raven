.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    }
.end annotation


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20000c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mLaunchTaskFragments:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 7

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20000c00

    and-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    if-le v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    or-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    if-le v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Not supported to set multi-window windowing mode during locked task mode."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v5

    if-eq v4, v5, :cond_5

    or-int/lit8 v2, v2, 0x2

    :cond_5
    return v2
.end method

.method private applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, v0, v2

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    :cond_0
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    aget v1, v0, v2

    return v1
.end method

.method private applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v14

    const-string v0, "Cannot set non-task as launch root: "

    const-string v1, "Attempt to operate on unknown or detached container: "

    const/4 v15, 0x0

    const-string v2, "WindowOrganizerController"

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    if-eqz p5, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip applying hierarchy operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while in lock task mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragment;

    if-eqz v4, :cond_0

    iget-object v6, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskFragment;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    nop

    if-eqz v5, :cond_4

    if-eqz v4, :cond_1

    if-nez v6, :cond_1

    move-object/from16 v18, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v6, v15}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    or-int/lit8 v16, p2, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v15, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v15, v3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    nop

    if-nez v15, :cond_3

    goto/16 :goto_a

    :cond_3
    nop

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    if-eqz v6, :cond_16

    nop

    invoke-virtual {v15}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    goto/16 :goto_a

    :cond_4
    move-object/from16 v18, v0

    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not allowed to set adjacent on invalid fragment tokens"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v12, v0}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    const v5, 0x7fffffff

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    or-int/lit8 v4, p2, 0x2

    move/from16 v16, v4

    goto/16 :goto_a

    :cond_6
    :goto_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Not allowed to operate with invalid fragment token or activity."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v12, v4}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not allowed to operate with invalid fragment token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v12, v3}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragment;

    iget-object v6, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCallingActivity()Landroid/os/IBinder;

    move-result-object v22

    iget v6, v11, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v15, v11, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move/from16 v24, v15

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityStartController;->startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;II)I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-direct {v7, v6, v3}, Lcom/android/server/wm/WindowOrganizerController;->convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v15, v12, v0}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_8
    move-object/from16 v16, v0

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_b

    if-eqz p5, :cond_a

    sget-object v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v5, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "Skip removing TaskFragment due in lock task mode."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13, v12, v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_a
    invoke-direct {v7, v3, v12}, Lcom/android/server/wm/WindowOrganizerController;->deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;)I

    move-result v4

    or-int v4, p2, v4

    move/from16 v16, v4

    goto/16 :goto_a

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can only delete organized TaskFragment, but not Task."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_5
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentCreationOptions()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    invoke-virtual {v7, v0, v12, v11}, Lcom/android/server/wm/WindowOrganizerController;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v4, :cond_12

    iget-boolean v0, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v5, :cond_10

    const/4 v6, 0x0

    goto :goto_7

    :cond_10
    move-object v6, v4

    :goto_7
    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    or-int v0, p2, v0

    move/from16 v16, v0

    goto :goto_a

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    goto :goto_9

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_9
    move/from16 v16, p2

    :cond_16
    :goto_a
    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_12

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    goto :goto_b

    :cond_17
    const/16 v23, 0x0

    :goto_b
    nop

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_18

    new-instance v1, Landroid/app/ActivityOptions;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_c

    :cond_18
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_c
    nop

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_19
    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v1

    move-object/from16 v26, v0

    invoke-virtual/range {v18 .. v26}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    goto/16 :goto_12

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    nop

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-virtual {v7, v0, v3, v12}, Lcom/android/server/wm/WindowOrganizerController;->reparentTaskFragment(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/os/IBinder;)V

    or-int/lit8 v16, v16, 0x2

    goto/16 :goto_12

    :cond_1c
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :sswitch_2
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v2, "launchTask HierarchyOp"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v15

    const-string v0, "android:transaction.hop.taskId"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v1, v11, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-static {v15, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v19

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    move-object/from16 v17, v0

    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object/from16 v4, p6

    move/from16 v5, v18

    move-object v11, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    :goto_f
    const/4 v1, 0x0

    aget-object v0, v17, v1

    if-nez v0, :cond_23

    :try_start_0
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    :goto_10
    goto :goto_f

    :sswitch_3
    invoke-direct {v7, v8, v10, v9}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;I)I

    move-result v0

    or-int v16, v16, v0

    goto :goto_12

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_11

    :cond_1d
    if-ltz v9, :cond_1e

    invoke-virtual {v7, v9, v0}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_1e
    if-eqz v10, :cond_21

    invoke-virtual {v10, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_21

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_20

    const-string v3, "Can\'t resolve parent window from token"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_20
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_21
    invoke-direct {v7, v0, v8}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v1

    or-int v16, v16, v1

    goto :goto_12

    :cond_22
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to operate on detached container: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_23
    :goto_12
    return v16

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipBounds(Landroid/graphics/Rect;)V

    :cond_3
    return v0
.end method

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 22

    move-object/from16 v10, p0

    move/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    int-to-long v2, v11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3603be95

    new-array v5, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-static {v0, v4, v15, v13, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    if-eqz v12, :cond_1

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/DisplayRotation;->getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v12, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v12}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->addProvidersToTransition()V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    or-int/lit8 v1, v1, 0x2

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v9, v0

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v8, "Attempt to operate on detached container: "

    const-string v7, "WindowOrganizerController"

    if-eqz v2, :cond_7

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-ltz v11, :cond_3

    invoke-virtual {v10, v11, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v10, v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v4

    or-int/2addr v1, v4

    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_5

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    if-lez v4, :cond_9

    iget-object v2, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v2, 0x0

    move/from16 v16, v1

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_8

    :try_start_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v18

    move-object/from16 v1, p0

    move/from16 v19, v3

    move/from16 v3, v16

    move/from16 v20, v4

    move/from16 v4, p2

    move-object/from16 v21, v5

    move-object/from16 v5, p3

    move-object v15, v7

    move-object/from16 v7, p4

    move-object v14, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    or-int v16, v16, v1

    add-int/lit8 v3, v19, 0x1

    move-object v8, v14

    move-object v7, v15

    move-object/from16 v9, v17

    move/from16 v4, v20

    move-object/from16 v5, v21

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v1, v16

    goto/16 :goto_c

    :cond_8
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    move/from16 v1, v16

    goto :goto_3

    :cond_9
    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object v15, v7

    move-object v14, v8

    move-object/from16 v17, v9

    :goto_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_5

    :cond_d
    move-object v6, v13

    :goto_5
    if-eqz v6, :cond_e

    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v7, :cond_e

    goto :goto_6

    :cond_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_f
    :goto_6
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v6, v7, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_10
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_7
    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_4

    :cond_11
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_13

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v0, v13, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-object/from16 v4, v17

    goto :goto_b

    :cond_13
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v3, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v3, v0

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_9
    if-ltz v0, :cond_14

    move-object/from16 v4, v17

    :try_start_5
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v17, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_14
    move-object/from16 v4, v17

    :try_start_6
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v4, v17

    :goto_a
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    nop

    throw v0

    :cond_15
    move-object/from16 v4, v17

    :goto_b
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_16
    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    iget-object v0, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    return-void

    :catchall_3
    move-exception v0

    :goto_c
    iget-object v2, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    iget-object v2, v10, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v0

    instance-of v1, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4, v3}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    nop

    and-int/lit8 v4, v2, 0x3

    if-nez v4, :cond_2

    const v4, -0x20000001

    and-int/2addr v1, v4

    :cond_2
    const v4, 0x20000c00

    and-int/2addr v4, v1

    if-nez v4, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method private convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start activity failed with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied and not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity could not be started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to operate with invalid taskFragment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "deleteTaskFragment"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    const/4 v1, 0x2

    return v1
.end method

.method private enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .locals 8

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    nop

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowOrganizerController"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    nop

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_1

    nop

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_2

    :pswitch_2
    goto :goto_2

    :pswitch_3
    nop

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    nop

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_2

    :pswitch_4
    nop

    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    nop

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 4

    const-string v0, "WindowOrganizerController"

    if-nez p2, :cond_0

    const-string v1, "Attempt to operate on window that no longer exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceTaskPermission(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$applyDisplayAreaChanges$1(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v3, p1, v1

    or-int/2addr v2, v3

    aput v2, p1, v1

    :cond_0
    return-void
.end method

.method static synthetic lambda$applyHierarchyOp$2(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$applyTransaction$0(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$reparentChildrenTasksHierarchyOp$4(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Processing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_6

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p5, p2}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, v2, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    return-object v3

    :cond_6
    :goto_2
    return-object v3
.end method

.method private reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;I)I
    .locals 17

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reparentChildrenTasksHierarchyOp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v9, v0

    move-object v10, v1

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v9, v0

    move-object v10, v1

    goto :goto_3

    :cond_5
    move-object v9, v0

    move-object v10, v1

    :goto_3
    const/4 v11, 0x0

    const-string v0, "WindowOrganizerController"

    if-ne v9, v10, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_6
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    const-string v2, " hop="

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_7
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_8
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_9
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v12

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v3, v1

    goto :goto_4

    :cond_a
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v3, v1

    :goto_4
    nop

    move-object v1, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newParent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v14, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    move-object v0, v14

    move v2, v12

    move-object/from16 v4, p1

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v14}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Function;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    if-ltz v8, :cond_b

    move-object/from16 v5, p0

    invoke-virtual {v5, v8, v4}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    goto :goto_6

    :cond_b
    move-object/from16 v5, p0

    :goto_6
    if-eqz v7, :cond_c

    invoke-virtual {v7, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_c
    instance-of v14, v10, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v14, :cond_d

    move-object v14, v10

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    invoke-virtual {v4, v14, v15}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    move/from16 v16, v0

    goto :goto_8

    :cond_d
    move-object v14, v10

    check-cast v14, Lcom/android/server/wm/Task;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v15

    if-eqz v15, :cond_e

    const v15, 0x7fffffff

    goto :goto_7

    :cond_e
    const/high16 v15, -0x80000000

    :goto_7
    move/from16 v16, v0

    const-string v0, "processChildrenTaskReparentHierarchyOp"

    invoke-virtual {v4, v14, v15, v11, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    goto :goto_5

    :cond_f
    move-object/from16 v5, p0

    move/from16 v16, v0

    if-eqz v7, :cond_10

    invoke-virtual {v7, v10}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const-string v2, "WindowOrganizerController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container is no longer attached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    move-object v4, v0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v5

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    if-eqz v5, :cond_e

    nop

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_d

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    :goto_2
    nop

    if-nez v8, :cond_4

    const-string v6, "Can\'t resolve parent window from token"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eq v9, v8, :cond_a

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v9

    const-string v10, " task="

    if-eqz v9, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support moving a task to another PIP window... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    nop

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    move-object v2, v8

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    move v6, v7

    :goto_3
    const-string v7, "sanitizeAndApplyHierarchyOp"

    invoke-virtual {v0, v2, v6, v3, v7}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_6

    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    if-eqz v8, :cond_b

    instance-of v2, v8, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v2, :cond_b

    move-object v2, v8

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_4
    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_5

    :cond_c
    move v6, v7

    :goto_5
    invoke-virtual {v9, v6, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_6
    nop

    goto :goto_8

    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    :cond_f
    move v6, v7

    :goto_7
    invoke-virtual {v2, v6, v0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_8
    const/4 v2, 0x2

    return v2

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container in hierarchy op"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 5

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getMoveAdjacentTogether()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    const/4 v2, 0x2

    return v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdjacentRootsHierarchyOp: Not created by organizer root1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " root2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 6

    if-eqz p1, :cond_2

    const-string v0, "applySyncTransaction()"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    move v4, v5

    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    if-ltz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "applyTransaction()"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applyTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 6

    nop

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    nop

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v3, p3, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskFragment;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/TaskFragment;->setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 6

    const-string v0, "finishTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, -0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    move v4, v5

    :cond_0
    if-eqz p2, :cond_1

    const/4 v5, 0x0

    invoke-direct {p0, p2, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    if-ltz v4, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method public getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    const-string v0, "getTaskOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method getTransitionController()Lcom/android/server/wm/TransitionController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-object v0
.end method

.method public getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object v0
.end method

.method public synthetic lambda$applyHierarchyOp$3$WindowOrganizerController([Ljava/lang/Integer;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v2, p2, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v3, p2, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/16 v2, -0x60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "WindowOrganizerController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 9

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1da914ac

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 8

    const-string v0, "registerTransitionPlayer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    move-object v6, v7

    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, p1, v6}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method reparentTaskFragment(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/os/IBinder;)V
    .locals 3

    move-object v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not allowed to operate with invalid container"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    invoke-virtual {p0, v2, p3, v1}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with invalid organizer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSyncReady(I)V
    .locals 9

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x377c50a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    new-instance v0, Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    return-void
.end method

.method public startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .locals 7

    const-string v0, "startLegacyTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_0
    :try_start_2
    iget v5, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v6, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p2, v5, v6}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    invoke-virtual {v4, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, p4, v5, v6, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v5

    :cond_1
    :try_start_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t use legacy transitions in when shell transitions are enabled."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t create transition with no type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 9

    const-string v0, "startTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-nez v4, :cond_4

    if-ltz p1, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "WindowOrganizerController"

    const-string v8, "Using shell transitions API for legacy transitions."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/4 v7, 0x0

    invoke-direct {p0, p3, v6, v7, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, p1}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t create transition with no type"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->start()V

    if-nez p3, :cond_5

    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object p3, v7

    :cond_5
    invoke-direct {p0, p3, v6, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->setAllReady()V

    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
