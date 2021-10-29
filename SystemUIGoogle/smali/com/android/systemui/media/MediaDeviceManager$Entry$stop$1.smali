.class final Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Entry;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->access$setStarted$p(Lcom/android/systemui/media/MediaDeviceManager$Entry;Z)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getLocalMediaManager()Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getLocalMediaManager()Lcom/android/settingslib/media/LocalMediaManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    return-void
.end method
