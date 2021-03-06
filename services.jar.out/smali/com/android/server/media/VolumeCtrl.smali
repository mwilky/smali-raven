.class public Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "VolumeCtrl.java"


# static fields
.field private static final ADJUST_LOWER:Ljava/lang/String; = "lower"

.field private static final ADJUST_RAISE:Ljava/lang/String; = "raise"

.field private static final ADJUST_SAME:Ljava/lang/String; = "same"

.field private static final LOG_E:Ljava/lang/String; = "[E]"

.field private static final LOG_V:Ljava/lang/String; = "[V]"

.field private static final TAG:Ljava/lang/String; = "VolumeCtrl"

.field public static final USAGE:Ljava/lang/String;

.field private static final VOLUME_CONTROL_MODE_ADJUST:I = 0x2

.field private static final VOLUME_CONTROL_MODE_SET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media volume --show --stream 3 --set 11\n\t\tadb shell media volume --stream 0 --adj lower\n\t\tadb shell media volume --stream 3 --get\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Lcom/android/server/media/MediaShellCommand;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    const/4 v11, 0x4

    const/4 v14, 0x1

    const/4 v15, 0x2

    const-string v12, "[V]"

    if-eqz v8, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "--stream"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v10, v15

    goto :goto_2

    :sswitch_1
    const-string v8, "--show"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "--set"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_3
    const-string v8, "--get"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v10, v14

    goto :goto_2

    :sswitch_4
    const-string v8, "--adj"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v10, v11

    goto :goto_2

    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown argument "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "will adjust volume"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will set volume to index="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/MediaShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "will control stream="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/media/VolumeCtrl;->streamName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    const/4 v6, 0x1

    const-string/jumbo v8, "will get volume"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    const/4 v5, 0x1

    nop

    :goto_3
    goto/16 :goto_0

    :cond_1
    if-ne v3, v15, :cond_4

    if-nez v7, :cond_2

    const-string v8, "Error: no valid volume adjustment (null)"

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string/jumbo v10, "raise"

    const-string/jumbo v15, "lower"

    const-string/jumbo v13, "same"

    sparse-switch v8, :sswitch_data_1

    :cond_3
    goto :goto_4

    :sswitch_5
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v16, 0x0

    goto :goto_5

    :sswitch_6
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v16, 0x2

    goto :goto_5

    :sswitch_7
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move/from16 v16, v14

    goto :goto_5

    :goto_4
    const/16 v16, -0x1

    :goto_5
    packed-switch v16, :pswitch_data_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: no valid volume adjustment, was "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", expected "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "|"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const/4 v4, -0x1

    goto :goto_6

    :pswitch_6
    const/4 v4, 0x0

    goto :goto_6

    :pswitch_7
    const/4 v4, 0x1

    :cond_4
    :goto_6
    const-string v8, "Connecting to AudioService"

    invoke-virtual {v0, v12, v8}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "audio"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v8

    if-eqz v8, :cond_a

    if-ne v3, v14, :cond_6

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v10

    if-gt v2, v10, :cond_5

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v10

    if-ge v2, v10, :cond_6

    :cond_5
    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const-string v11, "Error: invalid volume index %d for stream %d (should be in [%d..%d])"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/media/MediaShellCommand;->showError(Ljava/lang/String;)V

    return-void

    :cond_6
    move v10, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v11

    if-ne v3, v14, :cond_7

    invoke-interface {v8, v1, v2, v10, v11}, Landroid/media/IAudioService;->setStreamVolume(IIILjava/lang/String;)V

    goto :goto_7

    :cond_7
    const/4 v13, 0x2

    if-ne v3, v13, :cond_8

    invoke-interface {v8, v1, v4, v10, v11}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    :cond_8
    :goto_7
    if-eqz v6, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "volume is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " in range ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const-string v10, "[E]"

    const-string v11, "Error type 2"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/media/MediaShellCommand;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/util/AndroidException;

    const-string v11, "Can\'t connect to audio service; is the system running?"

    invoke-direct {v10, v11}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x2900f07 -> :sswitch_4
        0x29025b6 -> :sswitch_3
        0x29052c2 -> :sswitch_2
        0x4f7a109d -> :sswitch_1
        0x59e29d20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x35c066 -> :sswitch_7
        0x6262b01 -> :sswitch_6
        0x67427ec -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method static streamName(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "invalid stream"

    return-object v1
.end method
