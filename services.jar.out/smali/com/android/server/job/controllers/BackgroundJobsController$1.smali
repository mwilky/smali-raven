.class Lcom/android/server/job/controllers/BackgroundJobsController$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAllJobs()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$100(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateJobsForUid(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v1, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$200(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v1, p1, p3}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$200(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
