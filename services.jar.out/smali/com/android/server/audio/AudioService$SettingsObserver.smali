.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_config_etag"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_mono"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_balance"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "encoded_surround_output"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->access$6402(Lcom/android/server/audio/AudioService;I)I

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    nop

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "encoded_surround_output_enabled_formats"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->access$6502(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "voice_interaction_service"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateEncodedSurroundOutput()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "encoded_surround_output"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string v2, "SettingsObserver"

    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->toggleHdmiIfConnected_Async()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->access$6402(Lcom/android/server/audio/AudioService;I)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$7102(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$7102(Lcom/android/server/audio/AudioService;Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateEncodedSurroundOutput()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$800(Lcom/android/server/audio/AudioService;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
