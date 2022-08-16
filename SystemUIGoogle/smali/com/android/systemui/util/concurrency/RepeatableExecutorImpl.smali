.class public final Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;
.super Ljava/lang/Object;
.source "RepeatableExecutorImpl.java"

# interfaces
.implements Lcom/android/systemui/util/concurrency/RepeatableExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;
    }
.end annotation


# instance fields
.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final executeRepeatedly(Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;Ljava/util/concurrent/TimeUnit;)Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;
    .locals 3

    new-instance v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;Ljava/util/concurrent/TimeUnit;)V

    iget-object p1, v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
