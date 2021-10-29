.class Lcom/android/server/wm/LaunchObserverRegistryImpl;
.super Ljava/lang/Object;
.source "LaunchObserverRegistryImpl.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityMetricsLaunchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3yXr3fPkQeQlo2kVwjBx2OgNUek(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5X03k1LiJAKe-R59mmLFpk7iYzQ(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N4yglG_OF57d3bgQ6mjdkz6ua5c(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunched([BI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHbfr5b25uQaaqTFF5POCj86ssg(Lcom/android/server/wm/LaunchObserverRegistryImpl;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchCancelled([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFtkrL86uaNDZc1pUxgtSDKN2b8(Lcom/android/server/wm/LaunchObserverRegistryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$g-TqGMc_OvX7m1JSCZiUZX1uPFI(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnReportFullyDrawn([BJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hD_tFWAb0N1ebiDn9isSO8uhbCA(Lcom/android/server/wm/LaunchObserverRegistryImpl;Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnIntentStarted(Landroid/content/Intent;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydfIvw5-WhUBXoBE3G6bnWJ72UQ(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->handleOnActivityLaunchFinished([BJ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleOnActivityLaunchCancelled([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchCancelled([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleOnActivityLaunchFinished([BJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchFinished([BJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleOnActivityLaunched([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunched([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleOnIntentFailed()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentFailed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleOnIntentStarted(Landroid/content/Intent;J)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentStarted(Landroid/content/Intent;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleOnReportFullyDrawn([BJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onReportFullyDrawn([BJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleRegisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleUnregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda6;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIntentFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda7;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda1;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda4;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda5;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
