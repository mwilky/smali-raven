.class public final Landroid/hardware/audio/common/V2_0/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# static fields
.field public static final AAC:I = 0x4000000

.field public static final AAC_ADIF:I = 0x14000000

.field public static final AAC_ADTS:I = 0x1e000000

.field public static final AAC_ADTS_ELD:I = 0x1e000200

.field public static final AAC_ADTS_ERLC:I = 0x1e000040

.field public static final AAC_ADTS_HE_V1:I = 0x1e000010

.field public static final AAC_ADTS_HE_V2:I = 0x1e000100

.field public static final AAC_ADTS_LC:I = 0x1e000002

.field public static final AAC_ADTS_LD:I = 0x1e000080

.field public static final AAC_ADTS_LTP:I = 0x1e000008

.field public static final AAC_ADTS_MAIN:I = 0x1e000001

.field public static final AAC_ADTS_SCALABLE:I = 0x1e000020

.field public static final AAC_ADTS_SSR:I = 0x1e000004

.field public static final AAC_ELD:I = 0x4000200

.field public static final AAC_ERLC:I = 0x4000040

.field public static final AAC_HE_V1:I = 0x4000010

.field public static final AAC_HE_V2:I = 0x4000100

.field public static final AAC_LC:I = 0x4000002

.field public static final AAC_LD:I = 0x4000080

.field public static final AAC_LTP:I = 0x4000008

.field public static final AAC_MAIN:I = 0x4000001

.field public static final AAC_SCALABLE:I = 0x4000020

.field public static final AAC_SSR:I = 0x4000004

.field public static final AAC_SUB_ELD:I = 0x200

.field public static final AAC_SUB_ERLC:I = 0x40

.field public static final AAC_SUB_HE_V1:I = 0x10

.field public static final AAC_SUB_HE_V2:I = 0x100

.field public static final AAC_SUB_LC:I = 0x2

.field public static final AAC_SUB_LD:I = 0x80

.field public static final AAC_SUB_LTP:I = 0x8

.field public static final AAC_SUB_MAIN:I = 0x1

.field public static final AAC_SUB_SCALABLE:I = 0x20

.field public static final AAC_SUB_SSR:I = 0x4

.field public static final AC3:I = 0x9000000

.field public static final AC4:I = 0x22000000

.field public static final ALAC:I = 0x1c000000

.field public static final AMR_NB:I = 0x2000000

.field public static final AMR_SUB_NONE:I = 0x0

.field public static final AMR_WB:I = 0x3000000

.field public static final AMR_WB_PLUS:I = 0x17000000

.field public static final APE:I = 0x1d000000

.field public static final APTX:I = 0x20000000

.field public static final APTX_HD:I = 0x21000000

.field public static final DEFAULT:I = 0x0

.field public static final DOLBY_TRUEHD:I = 0xe000000

.field public static final DSD:I = 0x1a000000

.field public static final DTS:I = 0xb000000

.field public static final DTS_HD:I = 0xc000000

.field public static final EVRC:I = 0x10000000

.field public static final EVRCB:I = 0x11000000

.field public static final EVRCNW:I = 0x13000000

.field public static final EVRCWB:I = 0x12000000

.field public static final E_AC3:I = 0xa000000

.field public static final FLAC:I = 0x1b000000

.field public static final HE_AAC_V1:I = 0x5000000

.field public static final HE_AAC_V2:I = 0x6000000

.field public static final IEC61937:I = 0xd000000

.field public static final INVALID:I = -0x1

.field public static final LDAC:I = 0x23000000

.field public static final MAIN_MASK:I = -0x1000000

.field public static final MP2:I = 0x18000000

.field public static final MP3:I = 0x1000000

.field public static final MP3_SUB_NONE:I = 0x0

.field public static final OPUS:I = 0x8000000

.field public static final PCM:I = 0x0

.field public static final PCM_16_BIT:I = 0x1

.field public static final PCM_24_BIT_PACKED:I = 0x6

.field public static final PCM_32_BIT:I = 0x3

.field public static final PCM_8_24_BIT:I = 0x4

.field public static final PCM_8_BIT:I = 0x2

.field public static final PCM_FLOAT:I = 0x5

.field public static final PCM_SUB_16_BIT:I = 0x1

.field public static final PCM_SUB_24_BIT_PACKED:I = 0x6

.field public static final PCM_SUB_32_BIT:I = 0x3

.field public static final PCM_SUB_8_24_BIT:I = 0x4

.field public static final PCM_SUB_8_BIT:I = 0x2

.field public static final PCM_SUB_FLOAT:I = 0x5

.field public static final QCELP:I = 0x19000000

.field public static final SBC:I = 0x1f000000

.field public static final SUB_MASK:I = 0xffffff

.field public static final VORBIS:I = 0x7000000

.field public static final VORBIS_SUB_NONE:I = 0x0

.field public static final WMA:I = 0x15000000

.field public static final WMA_PRO:I = 0x16000000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, -0x1

    :cond_0
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PCM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "MP3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    const/high16 v2, 0x2000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v3, "AMR_NB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_2
    const/high16 v2, 0x3000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v3, "AMR_WB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3
    const/high16 v2, 0x4000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v3, "AAC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_4
    const/high16 v2, 0x5000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    const-string v3, "HE_AAC_V1"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_5
    const/high16 v2, 0x6000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    const-string v3, "HE_AAC_V2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_6
    const/high16 v2, 0x7000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    const-string v3, "VORBIS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_7
    const/high16 v2, 0x8000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    const-string v3, "OPUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_8
    const/high16 v2, 0x9000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    const-string v3, "AC3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0xa000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    const-string v3, "E_AC3"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_a
    const/high16 v2, 0xb000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_b

    const-string v3, "DTS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0xc000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_c

    const-string v3, "DTS_HD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_c
    const/high16 v2, 0xd000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    const-string v3, "IEC61937"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_d
    const/high16 v2, 0xe000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_e

    const-string v3, "DOLBY_TRUEHD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_e
    const/high16 v2, 0x10000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    const-string v3, "EVRC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_f
    const/high16 v2, 0x11000000

    and-int/2addr v2, p0

    const/high16 v3, 0x11000000

    if-ne v2, v3, :cond_10

    const-string v2, "EVRCB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x11000000

    or-int/2addr v1, v2

    :cond_10
    const/high16 v2, 0x12000000

    and-int/2addr v2, p0

    const/high16 v3, 0x12000000

    if-ne v2, v3, :cond_11

    const-string v2, "EVRCWB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x12000000

    or-int/2addr v1, v2

    :cond_11
    const/high16 v2, 0x13000000

    and-int/2addr v2, p0

    const/high16 v3, 0x13000000

    if-ne v2, v3, :cond_12

    const-string v2, "EVRCNW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x13000000

    or-int/2addr v1, v2

    :cond_12
    const/high16 v2, 0x14000000

    and-int/2addr v2, p0

    const/high16 v3, 0x14000000

    if-ne v2, v3, :cond_13

    const-string v2, "AAC_ADIF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x14000000

    or-int/2addr v1, v2

    :cond_13
    const/high16 v2, 0x15000000

    and-int/2addr v2, p0

    const/high16 v3, 0x15000000

    if-ne v2, v3, :cond_14

    const-string v2, "WMA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x15000000

    or-int/2addr v1, v2

    :cond_14
    const/high16 v2, 0x16000000

    and-int/2addr v2, p0

    const/high16 v3, 0x16000000

    if-ne v2, v3, :cond_15

    const-string v2, "WMA_PRO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x16000000

    or-int/2addr v1, v2

    :cond_15
    const/high16 v2, 0x17000000

    and-int/2addr v2, p0

    const/high16 v3, 0x17000000

    if-ne v2, v3, :cond_16

    const-string v2, "AMR_WB_PLUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x17000000

    or-int/2addr v1, v2

    :cond_16
    const/high16 v2, 0x18000000

    and-int/2addr v2, p0

    const/high16 v3, 0x18000000

    if-ne v2, v3, :cond_17

    const-string v2, "MP2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x18000000

    or-int/2addr v1, v2

    :cond_17
    const/high16 v2, 0x19000000

    and-int/2addr v2, p0

    const/high16 v3, 0x19000000

    if-ne v2, v3, :cond_18

    const-string v2, "QCELP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x19000000

    or-int/2addr v1, v2

    :cond_18
    const/high16 v2, 0x1a000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1a000000

    if-ne v2, v3, :cond_19

    const-string v2, "DSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1a000000

    or-int/2addr v1, v2

    :cond_19
    const/high16 v2, 0x1b000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1b000000

    if-ne v2, v3, :cond_1a

    const-string v2, "FLAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1b000000

    or-int/2addr v1, v2

    :cond_1a
    const/high16 v2, 0x1c000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1c000000

    if-ne v2, v3, :cond_1b

    const-string v2, "ALAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1c000000

    or-int/2addr v1, v2

    :cond_1b
    const/high16 v2, 0x1d000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1d000000

    if-ne v2, v3, :cond_1c

    const-string v2, "APE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1d000000

    or-int/2addr v1, v2

    :cond_1c
    const/high16 v2, 0x1e000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1e000000

    if-ne v2, v3, :cond_1d

    const-string v2, "AAC_ADTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1e000000

    or-int/2addr v1, v2

    :cond_1d
    const/high16 v2, 0x1f000000

    and-int/2addr v2, p0

    const/high16 v3, 0x1f000000

    if-ne v2, v3, :cond_1e

    const-string v2, "SBC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x1f000000

    or-int/2addr v1, v2

    :cond_1e
    const/high16 v2, 0x20000000

    and-int/2addr v2, p0

    const/high16 v3, 0x20000000

    if-ne v2, v3, :cond_1f

    const-string v2, "APTX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    :cond_1f
    const/high16 v2, 0x21000000

    and-int/2addr v2, p0

    const/high16 v3, 0x21000000

    if-ne v2, v3, :cond_20

    const-string v2, "APTX_HD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x21000000

    or-int/2addr v1, v2

    :cond_20
    const/high16 v2, 0x22000000

    and-int/2addr v2, p0

    const/high16 v3, 0x22000000

    if-ne v2, v3, :cond_21

    const-string v2, "AC4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x22000000

    or-int/2addr v1, v2

    :cond_21
    const/high16 v2, 0x23000000

    and-int/2addr v2, p0

    const/high16 v3, 0x23000000

    if-ne v2, v3, :cond_22

    const-string v2, "LDAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x23000000

    or-int/2addr v1, v2

    :cond_22
    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_23

    const-string v2, "MAIN_MASK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    :cond_23
    const v2, 0xffffff

    and-int/2addr v2, p0

    const v3, 0xffffff

    if-ne v2, v3, :cond_24

    const-string v2, "SUB_MASK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0xffffff

    or-int/2addr v1, v2

    :cond_24
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    const-string v2, "PCM_SUB_16_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_25
    and-int/lit8 v2, p0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_26

    const-string v2, "PCM_SUB_8_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_26
    and-int/lit8 v2, p0, 0x3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_27

    const-string v2, "PCM_SUB_32_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_27
    and-int/lit8 v2, p0, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_28

    const-string v2, "PCM_SUB_8_24_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_28
    and-int/lit8 v2, p0, 0x5

    const/4 v7, 0x5

    if-ne v2, v7, :cond_29

    const-string v2, "PCM_SUB_FLOAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_29
    and-int/lit8 v2, p0, 0x6

    const/4 v8, 0x6

    if-ne v2, v8, :cond_2a

    const-string v2, "PCM_SUB_24_BIT_PACKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_2a
    const-string v2, "MP3_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "AMR_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    if-ne v2, v3, :cond_2b

    const-string v2, "AAC_SUB_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_2b
    and-int/lit8 v2, p0, 0x2

    if-ne v2, v4, :cond_2c

    const-string v2, "AAC_SUB_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_2c
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v6, :cond_2d

    const-string v2, "AAC_SUB_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2d
    and-int/lit8 v2, p0, 0x8

    const/16 v9, 0x8

    if-ne v2, v9, :cond_2e

    const-string v2, "AAC_SUB_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_2e
    and-int/lit8 v2, p0, 0x10

    const/16 v9, 0x10

    if-ne v2, v9, :cond_2f

    const-string v2, "AAC_SUB_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_2f
    and-int/lit8 v2, p0, 0x20

    const/16 v9, 0x20

    if-ne v2, v9, :cond_30

    const-string v2, "AAC_SUB_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_30
    and-int/lit8 v2, p0, 0x40

    const/16 v9, 0x40

    if-ne v2, v9, :cond_31

    const-string v2, "AAC_SUB_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_31
    and-int/lit16 v2, p0, 0x80

    const/16 v9, 0x80

    if-ne v2, v9, :cond_32

    const-string v2, "AAC_SUB_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_32
    and-int/lit16 v2, p0, 0x100

    const/16 v9, 0x100

    if-ne v2, v9, :cond_33

    const-string v2, "AAC_SUB_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    :cond_33
    and-int/lit16 v2, p0, 0x200

    const/16 v9, 0x200

    if-ne v2, v9, :cond_34

    const-string v2, "AAC_SUB_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_34
    const-string v2, "VORBIS_SUB_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    if-ne v2, v3, :cond_35

    const-string v2, "PCM_16_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_35
    and-int/lit8 v2, p0, 0x2

    if-ne v2, v4, :cond_36

    const-string v2, "PCM_8_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_36
    and-int/lit8 v2, p0, 0x3

    if-ne v2, v5, :cond_37

    const-string v2, "PCM_32_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x3

    :cond_37
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v6, :cond_38

    const-string v2, "PCM_8_24_BIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_38
    and-int/lit8 v2, p0, 0x5

    if-ne v2, v7, :cond_39

    const-string v2, "PCM_FLOAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_39
    and-int/lit8 v2, p0, 0x6

    if-ne v2, v8, :cond_3a

    const-string v2, "PCM_24_BIT_PACKED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_3a
    const v2, 0x4000001

    and-int/2addr v2, p0

    const v3, 0x4000001

    if-ne v2, v3, :cond_3b

    const-string v2, "AAC_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000001

    or-int/2addr v1, v2

    :cond_3b
    const v2, 0x4000002

    and-int/2addr v2, p0

    const v3, 0x4000002

    if-ne v2, v3, :cond_3c

    const-string v2, "AAC_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000002

    or-int/2addr v1, v2

    :cond_3c
    const v2, 0x4000004

    and-int/2addr v2, p0

    const v3, 0x4000004

    if-ne v2, v3, :cond_3d

    const-string v2, "AAC_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000004

    or-int/2addr v1, v2

    :cond_3d
    const v2, 0x4000008

    and-int/2addr v2, p0

    const v3, 0x4000008

    if-ne v2, v3, :cond_3e

    const-string v2, "AAC_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000008

    or-int/2addr v1, v2

    :cond_3e
    const v2, 0x4000010

    and-int/2addr v2, p0

    const v3, 0x4000010

    if-ne v2, v3, :cond_3f

    const-string v2, "AAC_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000010

    or-int/2addr v1, v2

    :cond_3f
    const v2, 0x4000020

    and-int/2addr v2, p0

    const v3, 0x4000020

    if-ne v2, v3, :cond_40

    const-string v2, "AAC_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000020

    or-int/2addr v1, v2

    :cond_40
    const v2, 0x4000040

    and-int/2addr v2, p0

    const v3, 0x4000040

    if-ne v2, v3, :cond_41

    const-string v2, "AAC_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000040

    or-int/2addr v1, v2

    :cond_41
    const v2, 0x4000080

    and-int/2addr v2, p0

    const v3, 0x4000080

    if-ne v2, v3, :cond_42

    const-string v2, "AAC_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000080

    or-int/2addr v1, v2

    :cond_42
    const v2, 0x4000100

    and-int/2addr v2, p0

    const v3, 0x4000100

    if-ne v2, v3, :cond_43

    const-string v2, "AAC_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000100

    or-int/2addr v1, v2

    :cond_43
    const v2, 0x4000200

    and-int/2addr v2, p0

    const v3, 0x4000200

    if-ne v2, v3, :cond_44

    const-string v2, "AAC_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4000200

    or-int/2addr v1, v2

    :cond_44
    const v2, 0x1e000001

    and-int/2addr v2, p0

    const v3, 0x1e000001

    if-ne v2, v3, :cond_45

    const-string v2, "AAC_ADTS_MAIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000001

    or-int/2addr v1, v2

    :cond_45
    const v2, 0x1e000002

    and-int/2addr v2, p0

    const v3, 0x1e000002

    if-ne v2, v3, :cond_46

    const-string v2, "AAC_ADTS_LC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000002

    or-int/2addr v1, v2

    :cond_46
    const v2, 0x1e000004

    and-int/2addr v2, p0

    const v3, 0x1e000004

    if-ne v2, v3, :cond_47

    const-string v2, "AAC_ADTS_SSR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000004

    or-int/2addr v1, v2

    :cond_47
    const v2, 0x1e000008

    and-int/2addr v2, p0

    const v3, 0x1e000008

    if-ne v2, v3, :cond_48

    const-string v2, "AAC_ADTS_LTP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000008

    or-int/2addr v1, v2

    :cond_48
    const v2, 0x1e000010

    and-int/2addr v2, p0

    const v3, 0x1e000010

    if-ne v2, v3, :cond_49

    const-string v2, "AAC_ADTS_HE_V1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000010

    or-int/2addr v1, v2

    :cond_49
    const v2, 0x1e000020

    and-int/2addr v2, p0

    const v3, 0x1e000020

    if-ne v2, v3, :cond_4a

    const-string v2, "AAC_ADTS_SCALABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000020

    or-int/2addr v1, v2

    :cond_4a
    const v2, 0x1e000040

    and-int/2addr v2, p0

    const v3, 0x1e000040

    if-ne v2, v3, :cond_4b

    const-string v2, "AAC_ADTS_ERLC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000040

    or-int/2addr v1, v2

    :cond_4b
    const v2, 0x1e000080

    and-int/2addr v2, p0

    const v3, 0x1e000080

    if-ne v2, v3, :cond_4c

    const-string v2, "AAC_ADTS_LD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000080

    or-int/2addr v1, v2

    :cond_4c
    const v2, 0x1e000100

    and-int/2addr v2, p0

    const v3, 0x1e000100

    if-ne v2, v3, :cond_4d

    const-string v2, "AAC_ADTS_HE_V2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000100

    or-int/2addr v1, v2

    :cond_4d
    const v2, 0x1e000200

    and-int/2addr v2, p0

    const v3, 0x1e000200

    if-ne v2, v3, :cond_4e

    const-string v2, "AAC_ADTS_ELD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x1e000200

    or-int/2addr v1, v2

    :cond_4e
    if-eq p0, v1, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "INVALID"

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "DEFAULT"

    return-object v0

    :cond_1
    if-nez p0, :cond_2

    const-string v0, "PCM"

    return-object v0

    :cond_2
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_3

    const-string v0, "MP3"

    return-object v0

    :cond_3
    const/high16 v0, 0x2000000

    if-ne p0, v0, :cond_4

    const-string v0, "AMR_NB"

    return-object v0

    :cond_4
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_5

    const-string v0, "AMR_WB"

    return-object v0

    :cond_5
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_6

    const-string v0, "AAC"

    return-object v0

    :cond_6
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_7

    const-string v0, "HE_AAC_V1"

    return-object v0

    :cond_7
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_8

    const-string v0, "HE_AAC_V2"

    return-object v0

    :cond_8
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_9

    const-string v0, "VORBIS"

    return-object v0

    :cond_9
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_a

    const-string v0, "OPUS"

    return-object v0

    :cond_a
    const/high16 v0, 0x9000000

    if-ne p0, v0, :cond_b

    const-string v0, "AC3"

    return-object v0

    :cond_b
    const/high16 v0, 0xa000000

    if-ne p0, v0, :cond_c

    const-string v0, "E_AC3"

    return-object v0

    :cond_c
    const/high16 v0, 0xb000000

    if-ne p0, v0, :cond_d

    const-string v0, "DTS"

    return-object v0

    :cond_d
    const/high16 v0, 0xc000000

    if-ne p0, v0, :cond_e

    const-string v0, "DTS_HD"

    return-object v0

    :cond_e
    const/high16 v0, 0xd000000

    if-ne p0, v0, :cond_f

    const-string v0, "IEC61937"

    return-object v0

    :cond_f
    const/high16 v0, 0xe000000

    if-ne p0, v0, :cond_10

    const-string v0, "DOLBY_TRUEHD"

    return-object v0

    :cond_10
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_11

    const-string v0, "EVRC"

    return-object v0

    :cond_11
    const/high16 v0, 0x11000000

    if-ne p0, v0, :cond_12

    const-string v0, "EVRCB"

    return-object v0

    :cond_12
    const/high16 v0, 0x12000000

    if-ne p0, v0, :cond_13

    const-string v0, "EVRCWB"

    return-object v0

    :cond_13
    const/high16 v0, 0x13000000

    if-ne p0, v0, :cond_14

    const-string v0, "EVRCNW"

    return-object v0

    :cond_14
    const/high16 v0, 0x14000000

    if-ne p0, v0, :cond_15

    const-string v0, "AAC_ADIF"

    return-object v0

    :cond_15
    const/high16 v0, 0x15000000

    if-ne p0, v0, :cond_16

    const-string v0, "WMA"

    return-object v0

    :cond_16
    const/high16 v0, 0x16000000

    if-ne p0, v0, :cond_17

    const-string v0, "WMA_PRO"

    return-object v0

    :cond_17
    const/high16 v0, 0x17000000

    if-ne p0, v0, :cond_18

    const-string v0, "AMR_WB_PLUS"

    return-object v0

    :cond_18
    const/high16 v0, 0x18000000

    if-ne p0, v0, :cond_19

    const-string v0, "MP2"

    return-object v0

    :cond_19
    const/high16 v0, 0x19000000

    if-ne p0, v0, :cond_1a

    const-string v0, "QCELP"

    return-object v0

    :cond_1a
    const/high16 v0, 0x1a000000

    if-ne p0, v0, :cond_1b

    const-string v0, "DSD"

    return-object v0

    :cond_1b
    const/high16 v0, 0x1b000000

    if-ne p0, v0, :cond_1c

    const-string v0, "FLAC"

    return-object v0

    :cond_1c
    const/high16 v0, 0x1c000000

    if-ne p0, v0, :cond_1d

    const-string v0, "ALAC"

    return-object v0

    :cond_1d
    const/high16 v0, 0x1d000000

    if-ne p0, v0, :cond_1e

    const-string v0, "APE"

    return-object v0

    :cond_1e
    const/high16 v0, 0x1e000000

    if-ne p0, v0, :cond_1f

    const-string v0, "AAC_ADTS"

    return-object v0

    :cond_1f
    const/high16 v0, 0x1f000000

    if-ne p0, v0, :cond_20

    const-string v0, "SBC"

    return-object v0

    :cond_20
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_21

    const-string v0, "APTX"

    return-object v0

    :cond_21
    const/high16 v0, 0x21000000

    if-ne p0, v0, :cond_22

    const-string v0, "APTX_HD"

    return-object v0

    :cond_22
    const/high16 v0, 0x22000000

    if-ne p0, v0, :cond_23

    const-string v0, "AC4"

    return-object v0

    :cond_23
    const/high16 v0, 0x23000000

    if-ne p0, v0, :cond_24

    const-string v0, "LDAC"

    return-object v0

    :cond_24
    const/high16 v0, -0x1000000

    if-ne p0, v0, :cond_25

    const-string v0, "MAIN_MASK"

    return-object v0

    :cond_25
    const v0, 0xffffff

    if-ne p0, v0, :cond_26

    const-string v0, "SUB_MASK"

    return-object v0

    :cond_26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    const-string v0, "PCM_SUB_16_BIT"

    return-object v0

    :cond_27
    const/4 v1, 0x2

    if-ne p0, v1, :cond_28

    const-string v0, "PCM_SUB_8_BIT"

    return-object v0

    :cond_28
    const/4 v2, 0x3

    if-ne p0, v2, :cond_29

    const-string v0, "PCM_SUB_32_BIT"

    return-object v0

    :cond_29
    const/4 v3, 0x4

    if-ne p0, v3, :cond_2a

    const-string v0, "PCM_SUB_8_24_BIT"

    return-object v0

    :cond_2a
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2b

    const-string v0, "PCM_SUB_FLOAT"

    return-object v0

    :cond_2b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_2c

    const-string v0, "PCM_SUB_24_BIT_PACKED"

    return-object v0

    :cond_2c
    if-nez p0, :cond_2d

    const-string v0, "MP3_SUB_NONE"

    return-object v0

    :cond_2d
    if-nez p0, :cond_2e

    const-string v0, "AMR_SUB_NONE"

    return-object v0

    :cond_2e
    if-ne p0, v0, :cond_2f

    const-string v0, "AAC_SUB_MAIN"

    return-object v0

    :cond_2f
    if-ne p0, v1, :cond_30

    const-string v0, "AAC_SUB_LC"

    return-object v0

    :cond_30
    if-ne p0, v3, :cond_31

    const-string v0, "AAC_SUB_SSR"

    return-object v0

    :cond_31
    const/16 v6, 0x8

    if-ne p0, v6, :cond_32

    const-string v0, "AAC_SUB_LTP"

    return-object v0

    :cond_32
    const/16 v6, 0x10

    if-ne p0, v6, :cond_33

    const-string v0, "AAC_SUB_HE_V1"

    return-object v0

    :cond_33
    const/16 v6, 0x20

    if-ne p0, v6, :cond_34

    const-string v0, "AAC_SUB_SCALABLE"

    return-object v0

    :cond_34
    const/16 v6, 0x40

    if-ne p0, v6, :cond_35

    const-string v0, "AAC_SUB_ERLC"

    return-object v0

    :cond_35
    const/16 v6, 0x80

    if-ne p0, v6, :cond_36

    const-string v0, "AAC_SUB_LD"

    return-object v0

    :cond_36
    const/16 v6, 0x100

    if-ne p0, v6, :cond_37

    const-string v0, "AAC_SUB_HE_V2"

    return-object v0

    :cond_37
    const/16 v6, 0x200

    if-ne p0, v6, :cond_38

    const-string v0, "AAC_SUB_ELD"

    return-object v0

    :cond_38
    if-nez p0, :cond_39

    const-string v0, "VORBIS_SUB_NONE"

    return-object v0

    :cond_39
    if-ne p0, v0, :cond_3a

    const-string v0, "PCM_16_BIT"

    return-object v0

    :cond_3a
    if-ne p0, v1, :cond_3b

    const-string v0, "PCM_8_BIT"

    return-object v0

    :cond_3b
    if-ne p0, v2, :cond_3c

    const-string v0, "PCM_32_BIT"

    return-object v0

    :cond_3c
    if-ne p0, v3, :cond_3d

    const-string v0, "PCM_8_24_BIT"

    return-object v0

    :cond_3d
    if-ne p0, v4, :cond_3e

    const-string v0, "PCM_FLOAT"

    return-object v0

    :cond_3e
    if-ne p0, v5, :cond_3f

    const-string v0, "PCM_24_BIT_PACKED"

    return-object v0

    :cond_3f
    const v0, 0x4000001

    if-ne p0, v0, :cond_40

    const-string v0, "AAC_MAIN"

    return-object v0

    :cond_40
    const v0, 0x4000002

    if-ne p0, v0, :cond_41

    const-string v0, "AAC_LC"

    return-object v0

    :cond_41
    const v0, 0x4000004

    if-ne p0, v0, :cond_42

    const-string v0, "AAC_SSR"

    return-object v0

    :cond_42
    const v0, 0x4000008

    if-ne p0, v0, :cond_43

    const-string v0, "AAC_LTP"

    return-object v0

    :cond_43
    const v0, 0x4000010

    if-ne p0, v0, :cond_44

    const-string v0, "AAC_HE_V1"

    return-object v0

    :cond_44
    const v0, 0x4000020

    if-ne p0, v0, :cond_45

    const-string v0, "AAC_SCALABLE"

    return-object v0

    :cond_45
    const v0, 0x4000040

    if-ne p0, v0, :cond_46

    const-string v0, "AAC_ERLC"

    return-object v0

    :cond_46
    const v0, 0x4000080

    if-ne p0, v0, :cond_47

    const-string v0, "AAC_LD"

    return-object v0

    :cond_47
    const v0, 0x4000100

    if-ne p0, v0, :cond_48

    const-string v0, "AAC_HE_V2"

    return-object v0

    :cond_48
    const v0, 0x4000200

    if-ne p0, v0, :cond_49

    const-string v0, "AAC_ELD"

    return-object v0

    :cond_49
    const v0, 0x1e000001

    if-ne p0, v0, :cond_4a

    const-string v0, "AAC_ADTS_MAIN"

    return-object v0

    :cond_4a
    const v0, 0x1e000002

    if-ne p0, v0, :cond_4b

    const-string v0, "AAC_ADTS_LC"

    return-object v0

    :cond_4b
    const v0, 0x1e000004

    if-ne p0, v0, :cond_4c

    const-string v0, "AAC_ADTS_SSR"

    return-object v0

    :cond_4c
    const v0, 0x1e000008

    if-ne p0, v0, :cond_4d

    const-string v0, "AAC_ADTS_LTP"

    return-object v0

    :cond_4d
    const v0, 0x1e000010

    if-ne p0, v0, :cond_4e

    const-string v0, "AAC_ADTS_HE_V1"

    return-object v0

    :cond_4e
    const v0, 0x1e000020

    if-ne p0, v0, :cond_4f

    const-string v0, "AAC_ADTS_SCALABLE"

    return-object v0

    :cond_4f
    const v0, 0x1e000040

    if-ne p0, v0, :cond_50

    const-string v0, "AAC_ADTS_ERLC"

    return-object v0

    :cond_50
    const v0, 0x1e000080

    if-ne p0, v0, :cond_51

    const-string v0, "AAC_ADTS_LD"

    return-object v0

    :cond_51
    const v0, 0x1e000100

    if-ne p0, v0, :cond_52

    const-string v0, "AAC_ADTS_HE_V2"

    return-object v0

    :cond_52
    const v0, 0x1e000200

    if-ne p0, v0, :cond_53

    const-string v0, "AAC_ADTS_ELD"

    return-object v0

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
