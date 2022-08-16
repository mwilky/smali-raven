.class public final Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;
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

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->started:Z

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMuteAwaitConnectionCallback(Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
