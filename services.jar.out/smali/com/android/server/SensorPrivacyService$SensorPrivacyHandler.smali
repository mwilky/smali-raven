.class final Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;
.super Landroid/os/Handler;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorPrivacyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SENSOR_PRIVACY_CHANGED:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/ISensorPrivacyListener;",
            "Landroid/util/Pair<",
            "Lcom/android/server/SensorPrivacyService$DeathRecipient;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIndividualSensorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mListenerLock:Ljava/lang/Object;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    iget-object v4, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {v3, v4, p1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$0(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2600(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$1(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$2600(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void
.end method

.method static synthetic lambda$removeSuppressPackageReminderToken$2(Ljava/lang/Object;Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$3100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method private removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    invoke-virtual {v2}, Lcom/android/server/SensorPrivacyService$DeathRecipient;->destroy()V

    return-void

    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(IILandroid/hardware/ISensorPrivacyListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_1

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addUserGlobalListener(ILandroid/hardware/ISensorPrivacyListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleSensorPrivacyChanged(IIZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService;->access$2800(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->access$2900(Lcom/android/server/SensorPrivacyService$SensorPrivacyManagerInternalImpl;IIZ)V

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$1500(Lcom/android/server/SensorPrivacyService;)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2700(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$3000(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$1500(Lcom/android/server/SensorPrivacyService;)I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->onUserGlobalSensorPrivacyChanged(IZ)V

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/hardware/ISensorPrivacyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, p3}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$700()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught an exception notifying listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2
.end method

.method public handleSensorPrivacyChanged(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/ISensorPrivacyListener;

    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught an exception notifying listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public handleUserGlobalSensorPrivacyChanged(IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/hardware/ISensorPrivacyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, p2}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Lcom/android/server/SensorPrivacyService;->access$700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught an exception notifying listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1
.end method

.method public onSensorPrivacyChanged(IIZ)V
    .locals 4

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda5;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2700(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSensorPrivacyChanged(Z)V
    .locals 2

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda3;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda4;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2700(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserGlobalSensorPrivacyChanged(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeListener(ILandroid/hardware/ISensorPrivacyListener;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler$$ExternalSyntheticLambda2;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$2700(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeUserGlobalListener(ILandroid/hardware/ISensorPrivacyListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mUserGlobalIndividualSensorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
