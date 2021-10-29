.class final Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;
.super Landroid/app/TaskStackListener;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TaskStateHandler"
.end annotation


# instance fields
.field private final mMapLock:Ljava/lang/Object;

.field private final mTaskInfoMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/camera/CameraServiceProxy$TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mMapLock:Ljava/lang/Object;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    return-void
.end method


# virtual methods
.method public getFrontTaskInfo(Ljava/lang/String;)Lcom/android/server/camera/CameraServiceProxy$TaskInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top task with package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;-><init>(Lcom/android/server/camera/CameraServiceProxy;Lcom/android/server/camera/CameraServiceProxy$1;)V

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$402(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;I)I

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    invoke-static {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$502(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$602(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;I)I

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$702(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$802(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;Z)Z

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTaskRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    invoke-static {v3}, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->access$400(Lcom/android/server/camera/CameraServiceProxy$TaskInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$TaskStateHandler;->mTaskInfoMap:Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
