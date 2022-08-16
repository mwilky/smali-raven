.class public final Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

.field public final synthetic this$1:Lcom/android/systemui/media/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;Lcom/android/systemui/media/MediaDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->mainExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->registerMuteAwaitConnectionCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    iget-object v2, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->getIcon(Landroid/media/AudioDeviceAttributes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {v2, v0, v3, v4}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v2

    :goto_2
    iput v2, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->started:Z

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$start$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
