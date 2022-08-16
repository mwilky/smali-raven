.class public interface abstract Lcom/android/systemui/util/concurrency/DelayableExecutor;
.super Ljava/lang/Object;
.source "DelayableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public abstract executeAtTime(Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;
.end method

.method public executeAtTime(Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;J)Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeAtTime(Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object p0

    return-object p0
.end method

.method public abstract executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;
.end method

.method public executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    move-result-object p0

    return-object p0
.end method
