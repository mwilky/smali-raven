.class public final Lcom/android/wm/shell/pip/tv/TvPipController$2;
.super Ljava/lang/Object;
.source "TvPipController.java"

# interfaces
.implements Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x1b96dcbf

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TvPipController"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iget-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mAppActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateAdditionalActionsList(Ljava/util/List;Ljava/util/List;Landroid/app/RemoteAction;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mCloseAction:Landroid/app/RemoteAction;

    return-void
.end method

.method public final onAspectRatioChanged(F)V
    .locals 9

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_0

    float-to-double v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x53f4db6f

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "TvPipController"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput p1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    iget-boolean p1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    :cond_1
    return-void
.end method

.method public final onExpandedAspectRatioChanged(F)V
    .locals 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-double v3, p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x50aac288

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "TvPipController"

    aput-object v9, v8, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v0, v5, v6, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateExpansionState()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean v3, v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    cmpl-float v3, p1, v4

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean v3, v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    if-eqz v3, :cond_3

    cmpl-float v3, p1, v4

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iget v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPreviousGravity:I

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpandToggled(IZ)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iput v0, v3, Lcom/android/wm/shell/pip/tv/TvPipController;->mPreviousGravity:I

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-boolean v2, v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-boolean v3, v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    if-nez v3, :cond_5

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_5

    iget-boolean p1, v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    if-nez p1, :cond_5

    iget-object p1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateExpandedPipSize()V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object v0, p1, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iget p1, p1, Lcom/android/wm/shell/pip/tv/TvPipController;->mPreviousGravity:I

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpandToggled(IZ)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iput p1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPreviousGravity:I

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-boolean v1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    :cond_5
    return-void
.end method
