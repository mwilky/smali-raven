.class public Lcom/android/settings/utils/SensorPrivacyManagerHelper;
.super Ljava/lang/Object;
.source "SensorPrivacyManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;,
        Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# instance fields
.field private final mCachedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentUserCachedState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentUserServiceListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private final mServiceListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$37ZieiPVCEdfN7zV9VGB8OJRfZ4(Lcom/android/settings/utils/SensorPrivacyManagerHelper;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lambda$registerCurrentUserListenerIfNeeded$1(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$c_SGg4Bm-3VqeJC7-H4hxuWIsIk(Lcom/android/settings/utils/SensorPrivacyManagerHelper;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lambda$registerListenerIfNeeded$2(IIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hiZuP0e6WH5O4Mwstq1t1p7vRts(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lambda$dispatchStateChangedLocked$3(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserCachedState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCachedState:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserServiceListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mServiceListeners:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCallbacks:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method private createUserCachedStateIfNeededLocked(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCachedState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCachedState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private createUserServiceListenersIfNeededLocked(I)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mServiceListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mServiceListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private dispatchStateChangedLocked(IZI)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;

    iget v1, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mUserId:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mSensor:I

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    iget-object v0, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;
    .locals 1

    sget-object v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    :cond_0
    sget-object p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sInstance:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    return-object p0
.end method

.method private static synthetic lambda$dispatchStateChangedLocked$3(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;->onSensorPrivacyChanged(IZ)V

    return-void
.end method

.method private synthetic lambda$registerCurrentUserListenerIfNeeded$1(IIZ)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserCachedState:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, -0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->dispatchStateChangedLocked(IZI)V

    return-void
.end method

.method private synthetic lambda$registerListenerIfNeeded$2(IIIZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->createUserCachedStateIfNeededLocked(I)Landroid/util/SparseArray;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p2, p4, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->dispatchStateChangedLocked(IZI)V

    return-void
.end method

.method private registerCurrentUserListenerIfNeeded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserServiceListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper;I)V

    iget-object v2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserServiceListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerListenerIfNeeded(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->createUserServiceListenersIfNeededLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper;II)V

    iget-object p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserServiceListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addSensorBlockedListener(ILcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCallbacks:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;

    const/4 v2, -0x1

    invoke-direct {v1, p2, p3, p1, v2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$CallbackInfo;-><init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Ljava/util/concurrent/Executor;II)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSensorBlocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserCachedState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->registerCurrentUserListenerIfNeeded(I)V

    iget-object v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mCurrentUserCachedState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSensorBlocked(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->createUserCachedStateIfNeededLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->registerListenerIfNeeded(II)V

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSensorBlockedForProfileGroup(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZ)V

    return-void
.end method

.method public supportsSensorToggle(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result p0

    return p0
.end method
