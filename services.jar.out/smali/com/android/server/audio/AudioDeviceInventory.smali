.class public Lcom/android/server/audio/AudioDeviceInventory;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    }
.end annotation


# static fields
.field private static final BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field private static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field private static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field private static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field private static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field private static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AS.AudioDeviceInventory"

.field private static final mMetricsId:Ljava/lang/String; = "audio.device."


# instance fields
.field private final mApmConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field private final mConnectedDevices:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field final mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/ICapturePresetDevicesRoleDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private final mDevicesLock:Ljava/lang/Object;

.field final mPrefDevDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IStrategyPreferredDevicesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x20000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x8000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/audio/AudioDeviceInventory$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceInventory$1;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-void
.end method

.method private checkSendBecomingNoisyIntentInt(III)I
    .locals 11

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.checkSendBecomingNoisyIntentInt"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    const-string v1, "AS.AudioDeviceInventory"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not sending NOISY: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    :cond_1
    sget-object v3, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not sending NOISY: device=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not in set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    :cond_2
    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v7, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    iget v8, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NOISY: adding 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    if-nez p3, :cond_5

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result p3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOISY: musicDevice changing from NONE to 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result v6

    invoke-static {v4, p1}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioDeviceBroker;->hasMediaDynamicPolicy()Z

    move-result v8

    if-eq p1, p3, :cond_6

    if-eqz v6, :cond_8

    :cond_6
    if-eqz v7, :cond_8

    if-nez v8, :cond_8

    const v9, 0x8000

    if-eq p3, v9, :cond_8

    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v9, v5, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->hasAudioFocusUsers()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v9, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v10, "dropping ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v9, v10}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    const/16 v3, 0x3e8

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not sending NOISY: device:0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " musicDevice:0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " inComm:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mediaPolicy:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " singleDevice:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v1, Landroid/media/MediaMetrics$Property;->DELAY_MS:Landroid/media/MediaMetrics$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return v3
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v4, v2, [I

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listAudioPorts error "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in configureHdmiPlugIntent"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AS.AudioDeviceInventory"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-eq v9, v10, :cond_3

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const v10, 0x40001

    if-eq v9, v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v12, v9

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_5

    aget v14, v9, v13

    if-eqz v14, :cond_4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v13, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v12

    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v11, v13, :cond_8

    aget v14, v12, v11

    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    if-le v15, v10, :cond_7

    move v10, v15

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    return-void
.end method

.method private dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/ICapturePresetDevicesRoleDispatcher;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/ICapturePresetDevicesRoleDispatcher;->dispatchDevicesRoleChanged(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private dispatchPreferredDevice(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IStrategyPreferredDevicesDispatcher;

    invoke-interface {v2, p1, p2}, Landroid/media/IStrategyPreferredDevicesDispatcher;->dispatchPrefDevicesChanged(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private isCurrentDeviceConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$configureHdmiPlugIntent$13(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$disconnectA2dp$6(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectA2dpSink$8(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, -0x7ffe0000

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$disconnectHearingAid$10(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v1, 0x8000000

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "strategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$2(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "capturePreset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " devices:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/16 v3, 0x80

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "AS.AudioDeviceInventory"

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM failed to make available A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP device addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " now available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v3, "A2dpSuspended=false"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/16 v3, 0x80

    invoke-direct {v2, v3, p2, p1, p4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v1, "A2dpSuspended=true"

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    nop

    const/16 v0, 0x80

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setA2dpTimeout(Ljava/lang/String;II)V

    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 11

    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio.device.a2dp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    invoke-static {p2}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "makeA2dpDeviceUnavailableNow"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v2, "address null"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_0
    nop

    const/16 v1, 0x80

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "AS.AudioDeviceInventory"

    if-nez v3, :cond_1

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " made unavailable, was not used"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "A2DP device made unavailable, was not used"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->clearAvrcpAbsoluteVolumeSupported()V

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/16 v6, 0x80

    const/4 v7, 0x0

    const-string v9, ""

    move-object v8, p1

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APM failed to make unavailable A2DP device addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A2DP device addr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " made unavailable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x1

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string v4, ""

    invoke-direct {v3, v1, v4, p1, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, p3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->getVssVolumeForDevice(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v0, p3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v4, 0x8000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p2, p1, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "makeHearingAidDeviceAvailable"

    invoke-virtual {v2, p3, v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    invoke-direct {p0, p2, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.makeHearingAidDeviceAvailable"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.makeHearingAidDeviceUnavailable"

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    const-string/jumbo v3, "microphone"

    const-string v4, "android.intent.action.HEADSET_PLUG"

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    nop

    const/high16 v4, -0x7e000000

    invoke-static {v4, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_4
    const/high16 v1, 0x4000000

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "portName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e000000 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x400 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x40001 -> :sswitch_1
        0x4000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private setCurrentAudioRouteNameIfPossible(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioDeviceInventory;->isCurrentDeviceConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

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

.method private updateAudioRoutes(II)V
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    if-nez v0, :cond_0

    :try_start_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eqz p2, :cond_1

    or-int/2addr v2, v0

    goto :goto_1

    :cond_1
    not-int v3, v0

    and-int/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postReportNewRoutes(Z)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x400 -> :sswitch_1
        0x4000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x40001 -> :sswitch_1
        0x4000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method checkSendBecomingNoisyIntent(III)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearPreferredDevicesForCapturePresetSync(I)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioSystemAdapter;->clearDevicesRoleForCapturePreset(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveClearPreferredDevicesForCapturePreset(I)V

    :cond_0
    return v2
.end method

.method disconnectA2dp()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda5;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dp"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/audio/AudioDeviceInventory;I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

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

.method disconnectA2dpSink()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda6;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectA2dpSink"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method disconnectHearingAid()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.disconnectHearingAid"

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v2

    invoke-virtual {v1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

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

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BECOMING_NOISY_INTENT_DEVICES_SET="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Preferred devices for strategy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Connected devices:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "APM Connected device (A2DP sink only):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mApmConnectedDevices:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method getCurAudioRoutes()Landroid/media/AudioRoutesInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    return-object v0
.end method

.method handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v3, "audio.device.handleDeviceConnection"

    invoke-direct {v0, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v3, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static/range {p2 .. p2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->MODE:Landroid/media/MediaMetrics$Key;

    if-eqz v2, :cond_0

    const-string v4, "connect"

    goto :goto_0

    :cond_0
    const-string v4, "disconnect"

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v3, v11}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v14, v3

    const/4 v8, 0x0

    if-eqz v14, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v8

    :goto_1
    move/from16 v16, v3

    if-eqz v2, :cond_3

    if-nez v16, :cond_3

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v5, 0x1

    const/16 v17, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v15, v8

    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not connecting device 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to command error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.AudioDeviceInventory"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v12, v5, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v7, "disconnected"

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v13

    return v15

    :cond_2
    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-direct {v5, v9, v11, v10, v15}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v4, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postAccessoryPlugMediaUnmute(I)V

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v5, "connected"

    invoke-virtual {v12, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v13

    const/4 v4, 0x1

    return v4

    :cond_3
    move v15, v8

    if-nez v2, :cond_4

    if-eqz v16, :cond_4

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v4, "connected"

    invoke-virtual {v12, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v13

    const/4 v3, 0x1

    return v3

    :cond_4
    const-string v3, "AS.AudioDeviceInventory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", deviceSpec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", connect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const-string v3, "disconnected"

    invoke-virtual {v12, v0, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return v15

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isA2dpDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    nop

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$disconnectA2dp$7$AudioDeviceInventory(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$disconnectA2dpSink$9$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disconnectHearingAid$11$AudioDeviceInventory(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$isCurrentDeviceConnected$12$AudioDeviceInventory(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onRestoreDevices$5$AudioDeviceInventory(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    return-void
.end method

.method onBluetoothA2dpActiveDeviceChange(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p2

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onBluetoothA2dpActiveDeviceChange"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    if-nez v11, :cond_0

    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v1, "btDevice null"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v13

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    move-object v14, v0

    goto :goto_0

    :cond_1
    move-object v14, v0

    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothA2dpActiveDeviceChange addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/audio/BtHelper;->a2dpDeviceEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v15, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v0, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioDeviceBroker;->hasScheduledA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "A2dp config change ignored (scheduled connection change)"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioDeviceInventory"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v1, "A2dp config change ignored"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v15

    return-void

    :cond_2
    const/16 v0, 0x80

    invoke-static {v0, v14}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v5, v1

    if-nez v5, :cond_3

    const-string v0, "AS.AudioDeviceInventory"

    const-string v1, "invalid null DeviceInfo in onBluetoothA2dpActiveDeviceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v1, "null DeviceInfo"

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v15

    return-void

    :cond_3
    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v10, v1, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object v3, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v9, v1, :cond_4

    const/4 v1, -0x1

    if-eq v12, v1, :cond_5

    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v12, 0xa

    const-string/jumbo v4, "onBluetoothA2dpActiveDeviceChange"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    iget v1, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v1, v13, :cond_5

    iput v13, v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v7, v5}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v11}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v14, v3, v13}, Lcom/android/server/audio/AudioSystemAdapter;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APM handleDeviceConfigChange failed for A2DP device addr="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " codec="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceInventory"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v1, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->getDeviceForStream(I)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v16, 0x0

    const/16 v17, -0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v16, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V

    goto :goto_2

    :cond_6
    move-object/from16 v18, v5

    move-object/from16 v16, v7

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APM handleDeviceConfigChange success for A2DP device addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " codec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioDeviceInventory"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onMakeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onReportNewRoutes()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onReportNewRoutes"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->OBSERVERS:Landroid/media/MediaMetrics$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/media/AudioRoutesInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v2, v3}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/media/IAudioRoutesObserver;

    :try_start_1
    invoke-interface {v1, v2}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :goto_2
    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postObserveDevicesForAllStreams()V

    return-void
.end method

.method onRestoreDevices()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v4, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;I)I

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioDeviceInventory;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method onSaveClearPreferredDevicesForCapturePreset(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method onSaveRemovePreferredDevices(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method onSaveSetPreferredDevices(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    return-void
.end method

.method onSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(IILjava/util/List;)V

    return-void
.end method

.method public onSetA2dpSinkConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getCodec()I

    move-result v3

    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP sink connected: device addr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " codec="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vol="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.device.a2dp"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->ENCODING:Landroid/media/MediaMetrics$Key;

    invoke-static {v3}, Landroid/media/AudioSystem;->audioFormatToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v6, "onSetA2dpSinkConnectionState"

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    const-string v7, "connected"

    goto :goto_0

    :cond_2
    const-string v7, "disconnected"

    :goto_0
    invoke-virtual {v4, v5, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x80

    invoke-static {v7, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_5

    if-ne p2, v6, :cond_4

    iget v6, v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    if-eq v3, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    :cond_4
    iget v6, v8, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceCodecFormat:I

    invoke-direct {p0, v2, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    if-ne p2, v6, :cond_7

    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v10, 0x3

    mul-int/lit8 v11, v1, 0xa

    const-string/jumbo v12, "onSetA2dpSinkConnectionState"

    invoke-virtual {v6, v10, v11, v7, v12}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    :cond_6
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method onSetA2dpSourceConnectionState(Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;->getBtDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    const/high16 v3, -0x7ffe0000

    :try_start_0
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Landroid/media/MediaMetrics$Item;

    const-string v8, "audio.device.onSetA2dpSourceConnectionState"

    invoke-direct {v7, v8}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v7, v8, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    sget-object v8, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v8, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v7, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v8, 0x2

    if-ne p2, v8, :cond_2

    const-string v9, "connected"

    goto :goto_1

    :cond_2
    const-string v9, "disconnected"

    :goto_1
    invoke-virtual {v3, v7, v9}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    if-eqz v6, :cond_3

    if-eq p2, v8, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    if-ne p2, v8, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    :cond_4
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetHearingAidConnectionState addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.device.onSetHearingAidConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    const/high16 v3, -0x7ffe0000

    invoke-static {v3}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    const-string v4, "connected"

    goto :goto_0

    :cond_1
    const-string v4, "disconnected"

    :goto_0
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STREAM_TYPE:Landroid/media/MediaMetrics$Key;

    invoke-static {p3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    const/high16 v2, 0x8000000

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    if-eq p2, v3, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    if-ne p2, v3, :cond_4

    invoke-static {p1}, Lcom/android/server/audio/BtHelper;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v3, p3, v6}, Lcom/android/server/audio/AudioDeviceInventory;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V
    .locals 7

    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioServiceEvents$WiredDevConnectEvent;-><init>(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onSetWiredDeviceConnectionState"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-nez v2, :cond_0

    const-string v2, "disconnected"

    goto :goto_0

    :cond_0
    const-string v2, "connected"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v5, "onSetWiredDeviceConnectionState state DISCONNECTED"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    :cond_1
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v5, v6}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "change of connection state failed"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v1

    return-void

    :cond_3
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v3, "onSetWiredDeviceConnectionState state not DISCONNECTED"

    invoke-virtual {v2, v4, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOnInt(ZZLjava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkMusicActive(ILjava/lang/String;)V

    :cond_5
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    const/16 v3, 0x400

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    :cond_6
    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceInventory;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mType:I

    iget v3, p1, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->updateAudioRoutes(II)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method onToggleHdmi()V
    .locals 10

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.device.onToggleHdmi"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    const/16 v2, 0x400

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string v0, ""

    invoke-static {v2, v0}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-object v9, v1

    if-nez v9, :cond_0

    const-string v1, "AS.AudioDeviceInventory"

    const-string v2, "invalid null DeviceInfo in onToggleHdmi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v2, "invalid null DeviceInfo"

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v8

    return-void

    :cond_0
    const/16 v2, 0x400

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x400

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, "android"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    nop

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removePreferredDevicesForStrategySync(I)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePreferredDevicesForStrategySync, strategy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceInventory"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/audio/AudioSystemAdapter;->removeDevicesRoleForStrategy(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveRemovePreferredDevicesForStrategy(I)V

    :cond_0
    return v2
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IIZII)V
    .locals 5

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v1, 0xb

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne p3, v0, :cond_3

    if-nez p4, :cond_3

    if-ne p2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    nop

    const/16 v3, 0x80

    :try_start_0
    invoke-direct {p0, v3, v2, p5}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v3

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dpCodec(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    new-instance v4, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;

    invoke-direct {v4, p1, p6, v3}, Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSinkConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v4, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postA2dpSourceConnection(ILcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;I)V

    :goto_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p3, :cond_1

    if-ne p2, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/high16 v5, 0x8000000

    :try_start_0
    invoke-direct {p0, v5, v4, p4}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v5

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, p2, p1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidConnectionState(ILandroid/bluetooth/BluetoothDevice;I)V

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v5, "HEARING_AID set to CONNECTED"

    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    :cond_2
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceBroker(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-void
.end method

.method setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveSetPreferredDevicesForCapturePreset(ILjava/util/List;)V

    :cond_0
    return v2
.end method

.method setPreferredDevicesForStrategySync(ILjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredDevicesForStrategySync, strategy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " devices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceInventory"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postSaveSetPreferredDevicesForStrategy(ILjava/util/List;)V

    :cond_0
    return v2
.end method

.method setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14

    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v0, 0x0

    move v10, p1

    move/from16 v11, p2

    :try_start_0
    invoke-direct {p0, p1, v11, v0}, Lcom/android/server/audio/AudioDeviceInventory;->checkSendBecomingNoisyIntentInt(III)I

    move-result v0

    iget-object v12, v8, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v13, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioDeviceInventory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;I)V

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceInventory;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevRoleCapturePresetDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mPrefDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
