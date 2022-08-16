.class public interface abstract Lcom/android/systemui/util/concurrency/RepeatableExecutor;
.super Ljava/lang/Object;
.source "RepeatableExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public abstract executeRepeatedly(Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;Ljava/util/concurrent/TimeUnit;)Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;
.end method

.method public executeRepeatedly(Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;)Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/util/concurrency/RepeatableExecutor;->executeRepeatedly(Lcom/android/systemui/media/SeekBarViewModel$checkIfPollingNeeded$1;Ljava/util/concurrent/TimeUnit;)Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda9;

    move-result-object p0

    return-object p0
.end method
