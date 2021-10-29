.class Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
.super Ljava/lang/Object;
.source "DataLoaderManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DataLoaderManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderServiceConnection"
.end annotation


# instance fields
.field mDataLoader:Landroid/content/pm/IDataLoader;

.field final mId:I

.field final mListener:Landroid/content/pm/IDataLoaderStatusListener;

.field final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    iput-object p3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    return-void
.end method

.method private append()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v3}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v3, v4, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private callListener(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private remove()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v1}, Lcom/android/server/pm/DataLoaderManagerService;->access$000(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
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

.method private unbindAndReportDestroyed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbindAndReportDestroyed()V

    return-void
.end method

.method destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IDataLoader;->destroy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    return-void
.end method

.method getDataLoader()Landroid/content/pm/IDataLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    return-object v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbindAndReportDestroyed()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbindAndReportDestroyed()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Landroid/content/pm/IDataLoader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->append()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$200(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->callListener(I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to link to DataLoader\'s death: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataLoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataLoader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disconnected, but will try to recover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataLoaderManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbindAndReportDestroyed()V

    return-void
.end method

.method unbind()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->access$200(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->remove()Z

    move-result v0

    return v0
.end method
