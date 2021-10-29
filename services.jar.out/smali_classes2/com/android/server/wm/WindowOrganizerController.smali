.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20000c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

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

.field final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    new-instance v0, Lcom/android/server/wm/TransitionController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

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
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

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
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    aget v1, v0, v2

    return v1
.end method

.method private applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;Z)I
    .locals 6

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    const-string v1, "Cannot set non-task as launch root: "

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_4

    iget-boolean v1, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/android/server/wm/Task;->mAdjacentTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v1

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    goto/16 :goto_2

    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v1

    or-int/2addr p2, v1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v4

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :goto_2
    const-string v1, "WindowOrganizerController"

    if-eqz p5, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip applying hierarchy operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while in lock task mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_7
    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:transaction.hop.taskId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I

    goto :goto_4

    :pswitch_6
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;I)I

    move-result v1

    or-int/2addr p2, v1

    goto :goto_4

    :pswitch_7
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    if-ltz p3, :cond_9

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_9
    if-eqz p4, :cond_c

    invoke-virtual {p4, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_a
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_c

    nop

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_b

    const-string v4, "Can\'t resolve parent window from token"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    invoke-virtual {p4, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_c
    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v1

    or-int/2addr p2, v1

    goto :goto_4

    :cond_d
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to operate on detached container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
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

.method private applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    int-to-long v2, v8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3603be95

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v0, v4, v12, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v9, :cond_1

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/DisplayRotation;->getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v9}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->addProvidersToTransition()V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    or-int/lit8 v1, v1, 0x2

    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v14, "Attempt to operate on detached container: "

    const-string v15, "WindowOrganizerController"

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
    if-ltz v8, :cond_3

    invoke-virtual {v7, v8, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v7, v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v4

    or-int/2addr v1, v4

    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_5

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    if-lez v4, :cond_9

    iget-object v2, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

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

    move-object/from16 v1, p0

    move/from16 v17, v3

    move/from16 v3, v16

    move/from16 v18, v4

    move/from16 v4, p2

    move-object/from16 v19, v5

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;Z)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    or-int v16, v16, v1

    add-int/lit8 v3, v17, 0x1

    move/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v1, v16

    goto/16 :goto_b

    :cond_8
    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v1, v16

    goto :goto_3

    :cond_9
    move/from16 v18, v4

    move-object/from16 v19, v5

    :goto_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

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

    if-nez v4, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez v5, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_5

    :cond_c
    move-object v6, v11

    :goto_5
    if-eqz v6, :cond_d

    iget-boolean v10, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_e
    :goto_6
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v11, v5, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v6, v10, v12, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_f
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v6, v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_7
    invoke-virtual {v4, v6}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_10
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

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

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_12
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_13

    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_a

    :cond_13
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v0, v3, v4, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v0

    :try_start_4
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_9
    if-ltz v0, :cond_14

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    :try_start_5
    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    goto :goto_a

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    nop

    throw v0

    :cond_15
    :goto_a
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_16
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    nop

    return-void

    :catchall_2
    move-exception v0

    :goto_b
    iget-object v2, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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

.method private enforceTaskPermission(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

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

.method static synthetic lambda$applyTransaction$0(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$reparentChildrenTasksHierarchyOp$2(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 3

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

    if-nez v0, :cond_4

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

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

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :goto_0
    return-void
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

    new-instance v14, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    move-object v0, v14

    move v2, v12

    move-object/from16 v4, p1

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;)V

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v14, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

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

    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task or displayArea transaction"

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

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setAdjacentTask(Lcom/android/server/wm/Task;)V

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
    .locals 5

    const-string v0, "applySyncTransaction()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v4

    move v3, v4

    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 5

    const-string v0, "applyTransaction()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 5

    const-string v0, "finishTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, -0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v4

    move v3, v4

    :cond_0
    if-eqz p2, :cond_1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

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
    .locals 4

    const-string v0, "registerTransitionPlayer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
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
    .locals 8

    const-string v0, "startTransition()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-nez v3, :cond_4

    if-ltz p1, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "WindowOrganizerController"

    const-string v7, "Using shell transitions API for legacy transitions."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, p3, v5, v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can\'t create transition with no type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->start()V

    if-nez p3, :cond_5

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object p3, v6

    :cond_5
    invoke-direct {p0, p3, v5, v3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;)V

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->setReady()V

    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
