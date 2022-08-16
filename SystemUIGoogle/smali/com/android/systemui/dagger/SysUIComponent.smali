.class public interface abstract Lcom/android/systemui/dagger/SysUIComponent;
.super Ljava/lang/Object;
.source "SysUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/SysUIComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getContextComponentHelper()Lcom/android/systemui/dagger/ContextComponentHelper;
.end method

.method public abstract getFoldStateLogger()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/FoldStateLogger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFoldStateLoggingProvider()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/FoldStateLoggingProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract getMediaMuteAwaitConnectionCli()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaTttChipControllerReceiver()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaTttChipControllerSender()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/taptotransfer/sender/MediaTttChipControllerSender;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaTttCommandLineHelper()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/taptotransfer/MediaTttCommandLineHelper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNearbyMediaDevicesManager()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPerUserStartables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/CoreStartable;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getStartables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/CoreStartable;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSysUIUnfoldComponent()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;
.end method

.method public init()V
    .locals 5

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getSysUIUnfoldComponent()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNaturalRotationUnfoldProgressProvider()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaTttChipControllerSender()Ljava/util/Optional;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaTttChipControllerReceiver()Ljava/util/Optional;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaTttCommandLineHelper()Ljava/util/Optional;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getMediaMuteAwaitConnectionCli()Ljava/util/Optional;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getNearbyMediaDevicesManager()Ljava/util/Optional;

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldLatencyTracker()Lcom/android/systemui/unfold/UnfoldLatencyTracker;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070064

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v3, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v1, v0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLoggingProvider()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getFoldStateLogger()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactory;)V
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method
