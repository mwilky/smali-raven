.class Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;
.super Ljava/lang/Object;
.source "StartingWindowController.java"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingSurfaceImpl"
.end annotation


# instance fields
.field private mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/startingsurface/StartingWindowController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createExternalInterface()Lcom/android/wm/shell/startingsurface/IStartingWindow;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->createExternalInterface()Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    move-result-object p0

    return-object p0
.end method

.method public createExternalInterface()Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->invalidate()V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->mIStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;

    return-object v0
.end method

.method public getBackgroundColor(Landroid/app/TaskInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$100(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$100(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$100(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->access$200(Lcom/android/wm/shell/startingsurface/StartingWindowController;)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->estimateTaskBackgroundColor(Landroid/app/TaskInfo;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
