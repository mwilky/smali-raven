.class final Lcom/android/server/vibrator/VibrationThread$StepQueue;
.super Ljava/lang/Object;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StepQueue"
.end annotation


# instance fields
.field private mConsumedStartVibrateSteps:I

.field private final mNextSteps:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifiedVibrators:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/server/vibrator/VibrationThread$Step;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingVibrateSteps:I

.field private mSuccessfulVibratorOnSteps:I

.field private mWaitToProcessVibratorCallbacks:Z

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibrationThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNotifiedVibrators:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibrationThread;Lcom/android/server/vibrator/VibrationThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$StepQueue;-><init>(Lcom/android/server/vibrator/VibrationThread;)V

    return-void
.end method

.method private markWaitToProcessVibratorCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mWaitToProcessVibratorCallbacks:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pollNext()Lcom/android/server/vibrator/VibrationThread$Step;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibrationThread$Step;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processVibratorCallbacks()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mWaitToProcessVibratorCallbacks:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNotifiedVibrators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNotifiedVibrators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v2, v0}, Lcom/android/server/vibrator/VibrationThread$Step;->shouldPlayWhenVibratorComplete(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public calculateVibrationStatus(I)Lcom/android/server/vibrator/Vibration$Status;
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    if-lez v1, :cond_1

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public calculateWaitTime()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationThread$Step;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->calculateWaitTime()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public cancel()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->markWaitToProcessVibratorCallbacks()V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationThread$Step;->cancel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v3

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public cancelImmediately()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->markWaitToProcessVibratorCallbacks()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationThread$Step;->cancelImmediately()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v2

    nop

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public consumeNext()V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->markWaitToProcessVibratorCallbacks()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->pollNext()Lcom/android/server/vibrator/VibrationThread$Step;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->play()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->getVibratorOnDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mSuccessfulVibratorOnSteps:I

    :cond_0
    instance-of v3, v0, Lcom/android/server/vibrator/VibrationThread$StartVibrateStep;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mConsumedStartVibrateSteps:I

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget v5, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibrationThread$Step;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v0

    nop

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyVibratorComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNotifiedVibrators:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mWaitToProcessVibratorCallbacks:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationThread$StepQueue;->processVibratorCallbacks()V

    :cond_0
    return-void
.end method

.method public offer(Lcom/android/server/vibrator/VibrationThread$Step;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationThread;->access$100(Lcom/android/server/vibrator/VibrationThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationThread$Step;->isCleanUp()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mPendingVibrateSteps:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$StepQueue;->mNextSteps:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
