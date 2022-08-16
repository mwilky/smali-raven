.class public final Lcom/android/systemui/media/MediaDeviceManager$Entry;
.super Landroid/media/session/MediaController$Callback;
.source "MediaDeviceManager.kt"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaDeviceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaDeviceManager.kt\ncom/android/systemui/media/MediaDeviceManager$Entry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1#2:286\n*E\n"
.end annotation


# instance fields
.field public aboutToConnectDeviceOverride:Lcom/android/systemui/media/AboutToConnectDevice;

.field public final configListener:Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;

.field public final controller:Landroid/media/session/MediaController;

.field public current:Lcom/android/systemui/media/MediaDeviceData;

.field public final key:Ljava/lang/String;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

.field public final oldKey:Ljava/lang/String;

.field public playbackType:I

.field public started:Z

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaController;",
            "Lcom/android/settingslib/media/LocalMediaManager;",
            "Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    new-instance p1, Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/MediaDeviceManager$Entry$configListener$1;

    return-void
.end method


# virtual methods
.method public final onAboutToConnectDeviceAdded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Lcom/android/systemui/media/AboutToConnectDevice;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v2

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "LocalMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    new-instance p2, Lcom/android/systemui/media/MediaDeviceData;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x18

    move-object v4, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-direct {v0, v3, p2}, Lcom/android/systemui/media/AboutToConnectDevice;-><init>(Lcom/android/settingslib/media/MediaDevice;Lcom/android/systemui/media/MediaDeviceData;)V

    iput-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/AboutToConnectDevice;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAboutToConnectDeviceRemoved()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/AboutToConnectDevice;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->playbackType:I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->updateCurrent()V

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/ArrayList;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/media/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCurrent(Lcom/android/systemui/media/MediaDeviceData;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/MediaDeviceData;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, p1, Lcom/android/systemui/media/MediaDeviceData;->enabled:Z

    iget-boolean v4, v2, Lcom/android/systemui/media/MediaDeviceData;->enabled:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/systemui/media/MediaDeviceData;->name:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/android/systemui/media/MediaDeviceData;->name:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/media/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    iget-object v4, v2, Lcom/android/systemui/media/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/media/MediaDeviceData;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/media/MediaDeviceData;->id:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->started:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/MediaDeviceData;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;-><init>(Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDeviceManager$Entry;Lcom/android/systemui/media/MediaDeviceData;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final updateCurrent()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/AboutToConnectDevice;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/AboutToConnectDevice;->fullMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/media/AboutToConnectDevice;->backupMediaDeviceData:Lcom/android/systemui/media/MediaDeviceData;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/MediaDeviceData;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/media/AboutToConnectDevice;->fullMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object v3, v3, Lcom/android/systemui/media/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move v5, v3

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_3
    move-object v2, v1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_9

    if-nez v0, :cond_8

    move-object v7, v1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_9
    move-object v7, v2

    :goto_5
    new-instance v2, Lcom/android/systemui/media/MediaDeviceData;

    if-nez v0, :cond_a

    move-object v6, v1

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v6, v3

    :goto_6
    const/4 v8, 0x0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object v9, v1

    const/16 v10, 0x8

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/MediaDeviceData;)V

    return-void
.end method
