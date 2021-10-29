.class Lcom/android/server/power/DisplayGroupPowerStateMapper$1;
.super Ljava/lang/Object;
.source "DisplayGroupPowerStateMapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayGroupPowerStateMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayGroupPowerStateMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayGroupAdded(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$000(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$100(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DisplayPowerRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to add already existing group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    new-instance v3, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;

    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iget-object v5, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-virtual {v5}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getGlobalWakefulnessLocked()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IZZ)V

    iget-object v4, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$100(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$200(Lcom/android/server/power/DisplayGroupPowerStateMapper;)[I

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$202(Lcom/android/server/power/DisplayGroupPowerStateMapper;[I)[I

    iget-object v4, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$300(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    move-result-object v4

    invoke-interface {v4, v1, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;->onDisplayGroupEventLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayGroupChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$000(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$300(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;->onDisplayGroupEventLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayGroupRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v0}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$000(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$100(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DisplayPowerRequestMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to remove non-existent group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$100(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$200(Lcom/android/server/power/DisplayGroupPowerStateMapper;)[I

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$202(Lcom/android/server/power/DisplayGroupPowerStateMapper;[I)[I

    iget-object v1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$1;->this$0:Lcom/android/server/power/DisplayGroupPowerStateMapper;

    invoke-static {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->access$300(Lcom/android/server/power/DisplayGroupPowerStateMapper;)Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;->onDisplayGroupEventLocked(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
