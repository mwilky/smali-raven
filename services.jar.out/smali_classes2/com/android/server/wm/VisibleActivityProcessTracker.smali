.class Lcom/android/server/wm/VisibleActivityProcessTracker;
.super Ljava/lang/Object;
.source "VisibleActivityProcessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
    }
.end annotation


# instance fields
.field final mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mProcMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            "Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;",
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

    iput-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mAtms:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method private match(ILjava/util/function/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VisibleActivityProcess:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method hasResumedActivity(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method hasVisibleActivity(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method onActivityResumedWhileVisible(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onAllActivitiesInvisible(Lcom/android/server/wm/WindowProcessController;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method onAnyActivityVisible(Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    new-instance v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;-><init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V

    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
