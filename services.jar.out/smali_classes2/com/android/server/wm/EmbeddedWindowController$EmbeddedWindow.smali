.class Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/EmbeddedWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbeddedWindow"
.end annotation


# instance fields
.field final mClient:Landroid/view/IWindow;

.field final mDisplayId:I

.field private mFocusGrantToken:Landroid/os/IBinder;

.field final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field final mHostWindowState:Lcom/android/server/wm/WindowState;

.field mInputChannel:Landroid/view/InputChannel;

.field final mOwnerPid:I

.field final mOwnerUid:I

.field public mSession:Lcom/android/server/wm/Session;

.field final mWindowType:I

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Lcom/android/server/wm/WindowState;IIIILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method getApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->getInputApplicationHandle()Landroid/view/InputApplicationHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    return v0
.end method

.method getFocusGrantToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGrantToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getIWindow()Landroid/view/IWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    return-object v0
.end method

.method getInputChannelToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    return v0
.end method

.method public getWindowState()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method onRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    :cond_0
    return-void
.end method

.method openInputChannel()Landroid/view/InputChannel;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Internal"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedWindow{ u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
