.class public final synthetic Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceController;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ForegroundServiceController;

    iput p2, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ForegroundServiceController;

    iget v1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$4:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/ForegroundServicesUserState;

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/systemui/ForegroundServicesUserState;

    invoke-direct {v5}, Lcom/android/systemui/ForegroundServicesUserState;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_2

    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p0, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
