.class Lcom/android/server/audio/AudioDeviceInventory$1;
.super Ljava/util/LinkedHashMap;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$1;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method private record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 3

    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v2, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v2, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p2, :cond_0

    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo v1, "put"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "putIfAbsent"

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .locals 4

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "remove"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory$1;->remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo v4, "remove"

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_0
    return v0
.end method
