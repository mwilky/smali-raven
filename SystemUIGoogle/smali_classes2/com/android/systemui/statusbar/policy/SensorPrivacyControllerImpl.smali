.class public Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "SensorPrivacyControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SensorPrivacyController;
.implements Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSensorPrivacyEnabled:Z

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method private notifyListenerLocked(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->notifyListenerLocked(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->isAllSensorPrivacyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorPrivacyManager;->addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    return-void
.end method

.method public isSensorPrivacyEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAllSensorPrivacyChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->notifyListenerLocked(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V

    goto :goto_0

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

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/SensorPrivacyController$OnSensorPrivacyChangedListener;)V

    return-void
.end method
