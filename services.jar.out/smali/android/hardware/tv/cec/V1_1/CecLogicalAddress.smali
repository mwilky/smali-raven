.class public final Landroid/hardware/tv/cec/V1_1/CecLogicalAddress;
.super Ljava/lang/Object;
.source "CecLogicalAddress.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "TV"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "RECORDER_1"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "RECORDER_2"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "TUNER_1"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "PLAYBACK_1"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "AUDIO_SYSTEM"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "TUNER_2"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "TUNER_3"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "PLAYBACK_2"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "RECORDER_3"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "TUNER_4"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "PLAYBACK_3"

    return-object p0

    :cond_b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_c

    const-string p0, "FREE_USE"

    return-object p0

    :cond_c
    const/16 v0, 0xf

    if-ne p0, v0, :cond_d

    const-string p0, "UNREGISTERED"

    return-object p0

    :cond_d
    if-ne p0, v0, :cond_e

    const-string p0, "BROADCAST"

    return-object p0

    :cond_e
    const/16 v0, 0xc

    if-ne p0, v0, :cond_f

    const-string p0, "BACKUP_1"

    return-object p0

    :cond_f
    const/16 v0, 0xd

    if-ne p0, v0, :cond_10

    const-string p0, "BACKUP_2"

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
