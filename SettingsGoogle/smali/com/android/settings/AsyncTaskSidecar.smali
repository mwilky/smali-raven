.class public abstract Lcom/android/settings/AsyncTaskSidecar;
.super Lcom/android/settings/SidecarFragment;
.source "AsyncTaskSidecar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/settings/SidecarFragment;"
    }
.end annotation


# instance fields
.field private mAsyncTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1MNUAiPWy3BV3kdjUl8UzFFej0Q(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AsyncTaskSidecar;->lambda$run$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMOptTKUO5URYmluAM4fHryCvkY(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AsyncTaskSidecar;->lambda$run$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SidecarFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/AsyncTaskSidecar;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/AsyncTaskSidecar;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected abstract doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)TResult;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SidecarFragment;->onDestroy()V

    return-void
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public run(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    iget-object v1, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Ljava/util/concurrent/Future;

    return-void
.end method
