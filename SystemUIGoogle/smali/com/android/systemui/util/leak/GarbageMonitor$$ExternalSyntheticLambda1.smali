.class public final synthetic Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    return-void
.end method


# virtual methods
.method public final onMessage()V
    .locals 11

    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getRss(I)[J

    move-result-object v4

    if-nez v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_0

    sget-boolean v1, Lcom/android/systemui/util/leak/GarbageMonitor;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "GarbageMonitor"

    const-string/jumbo v2, "update: Process.getRss() didn\'t provide any values."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    aget-wide v4, v4, v1

    iget-object v6, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    iget-object v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    iget v10, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    iput-wide v4, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentRss:J

    aput-wide v4, v9, v10

    add-int/lit8 v10, v10, 0x1

    array-length v9, v9

    rem-int/2addr v10, v9

    iput v10, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    iget-wide v9, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    cmp-long v9, v4, v9

    if-lez v9, :cond_1

    iput-wide v4, v6, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/util/leak/GarbageMonitor;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GarbageMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has rss=0, it probably died"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v7, v8}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->logPids()V

    goto :goto_2

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->cancelMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const-wide/32 v2, 0xea60

    invoke-interface {p0, v2, v3, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(JI)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
