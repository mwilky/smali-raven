.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContentCaptureManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p3, v3

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "--help"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v6, "--no-history"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    :goto_1
    packed-switch v5, :pswitch_data_0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring invalid dump arg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    const-string v1, "Usage: dumpsys content_capture [--no-history]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const/4 v0, 0x0

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Requests history: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    if-nez v1, :cond_3

    const-string v1, "disabled by device config"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x417d0228 -> :sswitch_1
        0x4f7504e1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public finishSession(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getContentCaptureConditionsLocked(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    move-object v2, v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceComponentName(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send service component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->getServiceSettingsActivityLocked()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send getServiceSettingsIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send isContentCaptureFeatureEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getContentCaptureConditions$2$ContentCaptureManagerService$ContentCaptureManagerServiceStub(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getServiceSettingsActivity$1$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    return-void
.end method

.method public synthetic lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string v1, "isContentCaptureFeatureEnabled()"

    invoke-static {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p2, v1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send setContentCaptureOptions(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {v2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->removeDataLocked(Landroid/view/contentcapture/DataRemovalRequest;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resetTemporaryService(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->resetTemporaryService(I)V

    return-void
.end method

.method public setDefaultServiceEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDefaultServiceEnabled(IZ)Z

    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setTemporaryService(ILjava/lang/String;I)V

    return-void
.end method

.method public shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v2, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {v3, p1, p2, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onDataSharedLocked(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/android/server/contentcapture/ContentCaptureMetricsLogger;->writeServiceEvent(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to send error message to client"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .locals 15

    move-object v1, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    const-string/jumbo v4, "startSession()"

    invoke-static {v0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v4, 0x0

    move-object/from16 v14, p6

    :try_start_1
    invoke-static {v14, v0, v4}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    monitor-exit v13

    return-void

    :cond_0
    move-object/from16 v14, p6

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v12

    move/from16 v7, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v14, p6

    :goto_0
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
