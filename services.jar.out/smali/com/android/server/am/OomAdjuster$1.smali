.class Lcom/android/server/am/OomAdjuster$1;
.super Landroid/content/BroadcastReceiver;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OomAdjuster;->initSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-static {v0}, Lcom/android/server/am/OomAdjuster;->access$000(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjuster;->handleUserSwitchedLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
