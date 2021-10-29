.class public abstract Lcom/android/systemui/wmshell/WMShellConcurrencyModule;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule.java"


# direct methods
.method public static synthetic $r8$lambda$54VPGE3V-TZg1u0qIFH7VvqizBY(Landroid/animation/AnimationHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->lambda$provideShellMainExecutorSfVsyncAnimationHandler$0(Landroid/animation/AnimationHandler;)V

    return-void
.end method

.method private static enableShellMainThread(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->config_enableShellMainThread:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$provideShellMainExecutorSfVsyncAnimationHandler$0(Landroid/animation/AnimationHandler;)V
    .locals 1

    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v0}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    return-void
.end method

.method public static provideShellAnimationExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wmshell.anim"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_0
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v1
.end method

.method public static provideShellMainExecutor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->enableShellMainThread(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static provideShellMainExecutorSfVsyncAnimationHandler(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/animation/AnimationHandler;
    .locals 2

    :try_start_0
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    new-instance v1, Lcom/android/systemui/wmshell/WMShellConcurrencyModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule$$ExternalSyntheticLambda0;-><init>(Landroid/animation/AnimationHandler;)V

    invoke-interface {p0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize SfVsync animation handler in 1s"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static provideShellMainHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->enableShellMainThread(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/os/HandlerThread;

    const/4 p1, -0x4

    const-string v0, "wmshell.main"

    invoke-direct {p0, v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/Looper;->setTraceTag(J)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static provideSplashScreenExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "wmshell.splashscreen"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v1
.end method

.method public static provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
