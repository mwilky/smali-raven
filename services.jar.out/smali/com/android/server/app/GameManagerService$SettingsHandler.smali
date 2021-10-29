.class Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1, v0}, Lcom/android/server/app/GameManagerService;->access$200(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-gez v0, :cond_0

    const-string v3, "GameManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write settings for invalid user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->access$000(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->access$000(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->access$100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->access$100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->access$100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    const-string v2, "GameManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to write settings for invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->access$000(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->access$000(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->access$100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->access$100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_3
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method
