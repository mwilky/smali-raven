.class Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mGlobalLock:Ljava/lang/Object;

.field private mWindows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsByFocusToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v2, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "Could not find the embedding process."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    :goto_0
    return-void
.end method


# virtual methods
.method add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    iget-object v1, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getByFocusToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getHostWindow(Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public synthetic lambda$add$0$EmbeddedWindowController(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v4, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method remove(Landroid/view/IWindow;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
