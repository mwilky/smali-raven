.class public interface abstract Lcom/android/systemui/util/concurrency/ThreadFactory;
.super Ljava/lang/Object;
.source "ThreadFactory.java"


# virtual methods
.method public abstract buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/ExecutorImpl;
.end method

.method public abstract buildExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/ExecutorImpl;
.end method

.method public abstract buildHandlerOnNewThread()Landroid/os/Handler;
.end method

.method public abstract buildLooperOnNewThread(Ljava/lang/String;)Landroid/os/Looper;
.end method
