.class public Lcom/android/settingslib/volume/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final AUDIO_MANAGER_FLAGS:[I

.field public static final AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    const-string v1, "SHOW_UI"

    const-string v2, "VIBRATE"

    const-string v3, "PLAY_SOUND"

    const-string v4, "ALLOW_RINGER_MODES"

    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    const-string v6, "SHOW_VIBRATE_HINT"

    const-string v7, "SHOW_SILENT_HINT"

    const-string v8, "FROM_KEY"

    const-string v9, "SHOW_UI_WARNINGS"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    sget-object v1, Lcom/android/settingslib/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    const/16 v5, 0x2c

    if-ge v3, v4, :cond_3

    aget v4, v0, v3

    and-int/2addr v4, p0

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget v4, v0, v3

    not-int v4, v4

    and-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "UNKNOWN_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static playbackInfoToString(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const-string v3, "UNKNOWN_"

    invoke-static {v3, v0}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "REMOTE"

    goto :goto_0

    :cond_2
    const-string v0, "LOCAL"

    :goto_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_3

    const-string v4, "VOLUME_CONTROL_UNKNOWN_"

    invoke-static {v4, v3}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "VOLUME_CONTROL_ABSOLUTE"

    goto :goto_1

    :cond_4
    const-string v3, "VOLUME_CONTROL_RELATIVE"

    goto :goto_1

    :cond_5
    const-string v3, "VOLUME_CONTROL_FIXED"

    :goto_1
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static playbackStateToString(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v2, "UNKNOWN_"

    invoke-static {v2, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "STATE_PLAYING"

    goto :goto_0

    :cond_2
    const-string v1, "STATE_PAUSED"

    goto :goto_0

    :cond_3
    const-string v1, "STATE_STOPPED"

    goto :goto_0

    :cond_4
    const-string v1, "STATE_NONE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
