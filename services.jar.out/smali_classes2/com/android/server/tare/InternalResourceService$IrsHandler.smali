.class public final Lcom/android/server/tare/InternalResourceService$IrsHandler;
.super Landroid/os/Handler;
.source "InternalResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/InternalResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IrsHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmIsEnabled(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;->onTareEnabledStateChanged(Z)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0, v0, p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V

    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget p1, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-virtual {v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    invoke-interface {v2, p1, v0, v3, v1}, Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;->onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_4
    :goto_1
    return-void
.end method
