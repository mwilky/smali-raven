.class public final Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "DEFAULT"

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "PCM"

    return-object p0

    :cond_2
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_3

    const-string p0, "MP3"

    return-object p0

    :cond_3
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_4

    const-string p0, "AMR_NB"

    return-object p0

    :cond_4
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_5

    const-string p0, "AMR_WB"

    return-object p0

    :cond_5
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_6

    const-string p0, "AAC"

    return-object p0

    :cond_6
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_7

    const-string p0, "HE_AAC_V1"

    return-object p0

    :cond_7
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_8

    const-string p0, "HE_AAC_V2"

    return-object p0

    :cond_8
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_9

    const-string p0, "VORBIS"

    return-object p0

    :cond_9
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_a

    const-string p0, "OPUS"

    return-object p0

    :cond_a
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_b

    const-string p0, "AC3"

    return-object p0

    :cond_b
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_c

    const-string p0, "E_AC3"

    return-object p0

    :cond_c
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_d

    const-string p0, "DTS"

    return-object p0

    :cond_d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_e

    const-string p0, "DTS_HD"

    return-object p0

    :cond_e
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_f

    const-string p0, "IEC61937"

    return-object p0

    :cond_f
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_10

    const-string p0, "DOLBY_TRUEHD"

    return-object p0

    :cond_10
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_11

    const-string p0, "EVRC"

    return-object p0

    :cond_11
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_12

    const-string p0, "EVRCB"

    return-object p0

    :cond_12
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_13

    const-string p0, "EVRCWB"

    return-object p0

    :cond_13
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_14

    const-string p0, "EVRCNW"

    return-object p0

    :cond_14
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_15

    const-string p0, "AAC_ADIF"

    return-object p0

    :cond_15
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_16

    const-string p0, "WMA"

    return-object p0

    :cond_16
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_17

    const-string p0, "WMA_PRO"

    return-object p0

    :cond_17
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_18

    const-string p0, "AMR_WB_PLUS"

    return-object p0

    :cond_18
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_19

    const-string p0, "MP2"

    return-object p0

    :cond_19
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_1a

    const-string p0, "QCELP"

    return-object p0

    :cond_1a
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_1b

    const-string p0, "DSD"

    return-object p0

    :cond_1b
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_1c

    const-string p0, "FLAC"

    return-object p0

    :cond_1c
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_1d

    const-string p0, "ALAC"

    return-object p0

    :cond_1d
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_1e

    const-string p0, "APE"

    return-object p0

    :cond_1e
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_1f

    const-string p0, "AAC_ADTS"

    return-object p0

    :cond_1f
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_20

    const-string p0, "SBC"

    return-object p0

    :cond_20
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_21

    const-string p0, "APTX"

    return-object p0

    :cond_21
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_22

    const-string p0, "APTX_HD"

    return-object p0

    :cond_22
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_23

    const-string p0, "AC4"

    return-object p0

    :cond_23
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_24

    const-string p0, "LDAC"

    return-object p0

    :cond_24
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_25

    const-string p0, "MAIN_MASK"

    return-object p0

    :cond_25
    const v0, 0xffffff

    if-ne p0, v0, :cond_26

    const-string p0, "SUB_MASK"

    return-object p0

    :cond_26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    const-string p0, "PCM_SUB_16_BIT"

    return-object p0

    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_28

    const-string p0, "PCM_SUB_8_BIT"

    return-object p0

    :cond_28
    const/4 v2, 0x3

    if-ne p0, v2, :cond_29

    const-string p0, "PCM_SUB_32_BIT"

    return-object p0

    :cond_29
    const/4 v3, 0x4

    if-ne p0, v3, :cond_2a

    const-string p0, "PCM_SUB_8_24_BIT"

    return-object p0

    :cond_2a
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2b

    const-string p0, "PCM_SUB_FLOAT"

    return-object p0

    :cond_2b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_2c

    const-string p0, "PCM_SUB_24_BIT_PACKED"

    return-object p0

    :cond_2c
    if-nez p0, :cond_2d

    const-string p0, "MP3_SUB_NONE"

    return-object p0

    :cond_2d
    if-nez p0, :cond_2e

    const-string p0, "AMR_SUB_NONE"

    return-object p0

    :cond_2e
    if-ne p0, v0, :cond_2f

    const-string p0, "AAC_SUB_MAIN"

    return-object p0

    :cond_2f
    if-ne p0, v1, :cond_30

    const-string p0, "AAC_SUB_LC"

    return-object p0

    :cond_30
    if-ne p0, v3, :cond_31

    const-string p0, "AAC_SUB_SSR"

    return-object p0

    :cond_31
    const/16 v6, 0x8

    if-ne p0, v6, :cond_32

    const-string p0, "AAC_SUB_LTP"

    return-object p0

    :cond_32
    const/16 v6, 0x10

    if-ne p0, v6, :cond_33

    const-string p0, "AAC_SUB_HE_V1"

    return-object p0

    :cond_33
    const/16 v6, 0x20

    if-ne p0, v6, :cond_34

    const-string p0, "AAC_SUB_SCALABLE"

    return-object p0

    :cond_34
    const/16 v6, 0x40

    if-ne p0, v6, :cond_35

    const-string p0, "AAC_SUB_ERLC"

    return-object p0

    :cond_35
    const/16 v6, 0x80

    if-ne p0, v6, :cond_36

    const-string p0, "AAC_SUB_LD"

    return-object p0

    :cond_36
    const/16 v6, 0x100

    if-ne p0, v6, :cond_37

    const-string p0, "AAC_SUB_HE_V2"

    return-object p0

    :cond_37
    const/16 v6, 0x200

    if-ne p0, v6, :cond_38

    const-string p0, "AAC_SUB_ELD"

    return-object p0

    :cond_38
    if-nez p0, :cond_39

    const-string p0, "VORBIS_SUB_NONE"

    return-object p0

    :cond_39
    if-ne p0, v0, :cond_3a

    const-string p0, "PCM_16_BIT"

    return-object p0

    :cond_3a
    if-ne p0, v1, :cond_3b

    const-string p0, "PCM_8_BIT"

    return-object p0

    :cond_3b
    if-ne p0, v2, :cond_3c

    const-string p0, "PCM_32_BIT"

    return-object p0

    :cond_3c
    if-ne p0, v3, :cond_3d

    const-string p0, "PCM_8_24_BIT"

    return-object p0

    :cond_3d
    if-ne p0, v4, :cond_3e

    const-string p0, "PCM_FLOAT"

    return-object p0

    :cond_3e
    if-ne p0, v5, :cond_3f

    const-string p0, "PCM_24_BIT_PACKED"

    return-object p0

    :cond_3f
    const v0, 0x4000001

    if-ne p0, v0, :cond_40

    const-string p0, "AAC_MAIN"

    return-object p0

    :cond_40
    const v0, 0x4000002

    if-ne p0, v0, :cond_41

    const-string p0, "AAC_LC"

    return-object p0

    :cond_41
    const v0, 0x4000004

    if-ne p0, v0, :cond_42

    const-string p0, "AAC_SSR"

    return-object p0

    :cond_42
    const v0, 0x4000008

    if-ne p0, v0, :cond_43

    const-string p0, "AAC_LTP"

    return-object p0

    :cond_43
    const v0, 0x4000010

    if-ne p0, v0, :cond_44

    const-string p0, "AAC_HE_V1"

    return-object p0

    :cond_44
    const v0, 0x4000020

    if-ne p0, v0, :cond_45

    const-string p0, "AAC_SCALABLE"

    return-object p0

    :cond_45
    const v0, 0x4000040

    if-ne p0, v0, :cond_46

    const-string p0, "AAC_ERLC"

    return-object p0

    :cond_46
    const v0, 0x4000080

    if-ne p0, v0, :cond_47

    const-string p0, "AAC_LD"

    return-object p0

    :cond_47
    const v0, 0x4000100

    if-ne p0, v0, :cond_48

    const-string p0, "AAC_HE_V2"

    return-object p0

    :cond_48
    const v0, 0x4000200

    if-ne p0, v0, :cond_49

    const-string p0, "AAC_ELD"

    return-object p0

    :cond_49
    const v0, 0x1e000001

    if-ne p0, v0, :cond_4a

    const-string p0, "AAC_ADTS_MAIN"

    return-object p0

    :cond_4a
    const v0, 0x1e000002

    if-ne p0, v0, :cond_4b

    const-string p0, "AAC_ADTS_LC"

    return-object p0

    :cond_4b
    const v0, 0x1e000004

    if-ne p0, v0, :cond_4c

    const-string p0, "AAC_ADTS_SSR"

    return-object p0

    :cond_4c
    const v0, 0x1e000008

    if-ne p0, v0, :cond_4d

    const-string p0, "AAC_ADTS_LTP"

    return-object p0

    :cond_4d
    const v0, 0x1e000010

    if-ne p0, v0, :cond_4e

    const-string p0, "AAC_ADTS_HE_V1"

    return-object p0

    :cond_4e
    const v0, 0x1e000020

    if-ne p0, v0, :cond_4f

    const-string p0, "AAC_ADTS_SCALABLE"

    return-object p0

    :cond_4f
    const v0, 0x1e000040

    if-ne p0, v0, :cond_50

    const-string p0, "AAC_ADTS_ERLC"

    return-object p0

    :cond_50
    const v0, 0x1e000080

    if-ne p0, v0, :cond_51

    const-string p0, "AAC_ADTS_LD"

    return-object p0

    :cond_51
    const v0, 0x1e000100

    if-ne p0, v0, :cond_52

    const-string p0, "AAC_ADTS_HE_V2"

    return-object p0

    :cond_52
    const v0, 0x1e000200

    if-ne p0, v0, :cond_53

    const-string p0, "AAC_ADTS_ELD"

    return-object p0

    :cond_53
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
