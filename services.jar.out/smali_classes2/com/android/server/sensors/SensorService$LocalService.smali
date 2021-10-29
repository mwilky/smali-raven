.class Lcom/android/server/sensors/SensorService$LocalService;
.super Lcom/android/server/sensors/SensorManagerInternal;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Lcom/android/server/sensors/SensorManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 4

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->access$000(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$100(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$100(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$100(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$200(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->access$300(J)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener already registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeProximityActiveListener(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 4

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->access$000(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->access$100(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$100(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v2}, Lcom/android/server/sensors/SensorService;->access$200(Lcom/android/server/sensors/SensorService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/sensors/SensorService;->access$400(J)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener was not registered with sensor service"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
