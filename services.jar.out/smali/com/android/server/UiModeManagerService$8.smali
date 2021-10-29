.class Lcom/android/server/UiModeManagerService$8;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$000(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$1102(Lcom/android/server/UiModeManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1200(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
