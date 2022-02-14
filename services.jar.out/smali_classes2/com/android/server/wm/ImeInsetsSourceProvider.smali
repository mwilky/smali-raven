.class final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# instance fields
.field private mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field private mImeShowing:Z

.field private mIsImeLayoutDrawn:Z

.field private final mLastSource:Landroid/view/InsetsSource;

.field private mShowImeRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    new-instance v0, Landroid/view/InsetsSource;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/view/InsetsSource;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    return-void
.end method

.method private static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v2, :cond_1

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

.method private onSourceChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V

    :cond_0
    return-void
.end method

.method private sameAsImeControlTarget()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v0, v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isClosing()Z

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


# virtual methods
.method abortShowImePostLayout()V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x51d654b9

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    return-void
.end method

.method checkShowImePostLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mImeShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "showImePostLayout pending for mImeRequester="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_1
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 5

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4, v3, v3, v3}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    :cond_2
    return-object v0
.end method

.method public isImeShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return v0
.end method

.method isReadyToShowIme()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x330e8a89

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-direct {p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-direct {p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->sameAsImeControlTarget()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public synthetic lambda$scheduleShowImePostLayout$0$ImeInsetsSourceProvider()V
    .locals 9

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x72efe808

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x22eb33ec

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    const-wide/16 v6, 0x20

    const-string v3, "WMS.showImePostLayout"

    invoke-static {v6, v7, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v3, :cond_4

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x5ca81f2e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v6, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    return-void
.end method

.method scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x85d1a3e

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x540edc89

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v2, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V

    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public setImeShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return-void
.end method

.method protected updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_0
    return v0
.end method

.method updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    return-void
.end method

.method updateSourceFrame()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame()V

    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method

.method protected updateVisibility()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method
