.class public final Landroid/hardware/audio/common/V2_0/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# static fields
.field public static final BIT_DEFAULT:I = 0x40000000

.field public static final BIT_IN:I = -0x80000000

.field public static final IN_ALL:I = -0x3ce00001

.field public static final IN_ALL_SCO:I = -0x7ffffff8

.field public static final IN_ALL_USB:I = -0x7dffe800

.field public static final IN_AMBIENT:I = -0x7ffffffe

.field public static final IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final IN_BACK_MIC:I = -0x7fffff80

.field public static final IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final IN_BUS:I = -0x7ff00000

.field public static final IN_COMMUNICATION:I = -0x7fffffff

.field public static final IN_DEFAULT:I = -0x40000000

.field public static final IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final IN_FM_TUNER:I = -0x7fffe000

.field public static final IN_HDMI:I = -0x7fffffe0

.field public static final IN_IP:I = -0x7ff80000

.field public static final IN_LINE:I = -0x7fff8000

.field public static final IN_LOOPBACK:I = -0x7ffc0000

.field public static final IN_PROXY:I = -0x7f000000

.field public static final IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final IN_SPDIF:I = -0x7fff0000

.field public static final IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final IN_TV_TUNER:I = -0x7fffc000

.field public static final IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final IN_USB_DEVICE:I = -0x7ffff000

.field public static final IN_USB_HEADSET:I = -0x7e000000

.field public static final IN_VOICE_CALL:I = -0x7fffffc0

.field public static final IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final NONE:I = 0x0

.field public static final OUT_ALL:I = 0x47ffffff

.field public static final OUT_ALL_A2DP:I = 0x380

.field public static final OUT_ALL_SCO:I = 0x70

.field public static final OUT_ALL_USB:I = 0x4006000

.field public static final OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final OUT_AUX_DIGITAL:I = 0x400

.field public static final OUT_AUX_LINE:I = 0x200000

.field public static final OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final OUT_BLUETOOTH_SCO:I = 0x10

.field public static final OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final OUT_BUS:I = 0x1000000

.field public static final OUT_DEFAULT:I = 0x40000000

.field public static final OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final OUT_EARPIECE:I = 0x1

.field public static final OUT_FM:I = 0x100000

.field public static final OUT_HDMI:I = 0x400

.field public static final OUT_HDMI_ARC:I = 0x40000

.field public static final OUT_IP:I = 0x800000

.field public static final OUT_LINE:I = 0x20000

.field public static final OUT_PROXY:I = 0x2000000

.field public static final OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final OUT_SPDIF:I = 0x80000

.field public static final OUT_SPEAKER:I = 0x2

.field public static final OUT_SPEAKER_SAFE:I = 0x400000

.field public static final OUT_TELEPHONY_TX:I = 0x10000

.field public static final OUT_USB_ACCESSORY:I = 0x2000

.field public static final OUT_USB_DEVICE:I = 0x4000

.field public static final OUT_USB_HEADSET:I = 0x4000000

.field public static final OUT_WIRED_HEADPHONE:I = 0x8

.field public static final OUT_WIRED_HEADSET:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, -0x80000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    const-string v3, "BIT_IN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "BIT_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v3, p0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "OUT_EARPIECE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_2
    and-int/lit8 v3, p0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v3, "OUT_SPEAKER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_3
    and-int/lit8 v3, p0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const-string v3, "OUT_WIRED_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_4
    and-int/lit8 v3, p0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    const-string v3, "OUT_WIRED_HEADPHONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_5
    and-int/lit8 v3, p0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    const-string v3, "OUT_BLUETOOTH_SCO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_6
    and-int/lit8 v3, p0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    const-string v3, "OUT_BLUETOOTH_SCO_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_7
    and-int/lit8 v3, p0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    const-string v3, "OUT_BLUETOOTH_SCO_CARKIT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_8
    and-int/lit16 v3, p0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    const-string v3, "OUT_BLUETOOTH_A2DP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_9
    and-int/lit16 v3, p0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a

    const-string v3, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    :cond_a
    and-int/lit16 v3, p0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b

    const-string v3, "OUT_BLUETOOTH_A2DP_SPEAKER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_b
    and-int/lit16 v3, p0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_c

    const-string v3, "OUT_AUX_DIGITAL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_c
    and-int/lit16 v3, p0, 0x400

    if-ne v3, v4, :cond_d

    const-string v3, "OUT_HDMI"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_d
    and-int/lit16 v3, p0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_e

    const-string v3, "OUT_ANLG_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x800

    :cond_e
    and-int/lit16 v3, p0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_f

    const-string v3, "OUT_DGTL_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x1000

    :cond_f
    and-int/lit16 v3, p0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_10

    const-string v3, "OUT_USB_ACCESSORY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x2000

    :cond_10
    and-int/lit16 v3, p0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_11

    const-string v3, "OUT_USB_DEVICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x4000

    :cond_11
    const v3, 0x8000

    and-int v4, p0, v3

    if-ne v4, v3, :cond_12

    const-string v4, "OUT_REMOTE_SUBMIX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_12
    const/high16 v3, 0x10000

    and-int v4, p0, v3

    if-ne v4, v3, :cond_13

    const-string v4, "OUT_TELEPHONY_TX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_13
    const/high16 v3, 0x20000

    and-int/2addr v3, p0

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_14

    const-string v3, "OUT_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    :cond_14
    const/high16 v3, 0x40000

    and-int/2addr v3, p0

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_15

    const-string v3, "OUT_HDMI_ARC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    :cond_15
    const/high16 v3, 0x80000

    and-int/2addr v3, p0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_16

    const-string v3, "OUT_SPDIF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    :cond_16
    const/high16 v3, 0x100000

    and-int/2addr v3, p0

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_17

    const-string v3, "OUT_FM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    :cond_17
    const/high16 v3, 0x200000

    and-int/2addr v3, p0

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_18

    const-string v3, "OUT_AUX_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x200000

    or-int/2addr v1, v3

    :cond_18
    const/high16 v3, 0x400000

    and-int/2addr v3, p0

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_19

    const-string v3, "OUT_SPEAKER_SAFE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    :cond_19
    const/high16 v3, 0x800000

    and-int/2addr v3, p0

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_1a

    const-string v3, "OUT_IP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x800000

    or-int/2addr v1, v3

    :cond_1a
    const/high16 v3, 0x1000000

    and-int/2addr v3, p0

    const/high16 v4, 0x1000000

    if-ne v3, v4, :cond_1b

    const-string v3, "OUT_BUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    :cond_1b
    const/high16 v3, 0x2000000

    and-int/2addr v3, p0

    const/high16 v4, 0x2000000

    if-ne v3, v4, :cond_1c

    const-string v3, "OUT_PROXY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x2000000

    or-int/2addr v1, v3

    :cond_1c
    const/high16 v3, 0x4000000

    and-int/2addr v3, p0

    const/high16 v4, 0x4000000

    if-ne v3, v4, :cond_1d

    const-string v3, "OUT_USB_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_1d
    and-int v3, p0, v2

    if-ne v3, v2, :cond_1e

    const-string v3, "OUT_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1e
    const v2, 0x47ffffff

    and-int/2addr v2, p0

    const v3, 0x47ffffff

    if-ne v2, v3, :cond_1f

    const-string v2, "OUT_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x47ffffff

    or-int/2addr v1, v2

    :cond_1f
    and-int/lit16 v2, p0, 0x380

    const/16 v3, 0x380

    if-ne v2, v3, :cond_20

    const-string v2, "OUT_ALL_A2DP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x380

    :cond_20
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_21

    const-string v2, "OUT_ALL_SCO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x70

    :cond_21
    const v2, 0x4006000

    and-int/2addr v2, p0

    const v3, 0x4006000

    if-ne v2, v3, :cond_22

    const-string v2, "OUT_ALL_USB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x4006000

    or-int/2addr v1, v2

    :cond_22
    const v2, -0x7fffffff

    and-int/2addr v2, p0

    const v3, -0x7fffffff

    if-ne v2, v3, :cond_23

    const-string v2, "IN_COMMUNICATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffff

    or-int/2addr v1, v2

    :cond_23
    const v2, -0x7ffffffe

    and-int/2addr v2, p0

    const v3, -0x7ffffffe

    if-ne v2, v3, :cond_24

    const-string v2, "IN_AMBIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffffe

    or-int/2addr v1, v2

    :cond_24
    const v2, -0x7ffffffc

    and-int/2addr v2, p0

    const v3, -0x7ffffffc

    if-ne v2, v3, :cond_25

    const-string v2, "IN_BUILTIN_MIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffffc

    or-int/2addr v1, v2

    :cond_25
    const v2, -0x7ffffff8

    and-int v3, p0, v2

    if-ne v3, v2, :cond_26

    const-string v3, "IN_BLUETOOTH_SCO_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_26
    const v3, -0x7ffffff0

    and-int/2addr v3, p0

    const v4, -0x7ffffff0

    if-ne v3, v4, :cond_27

    const-string v3, "IN_WIRED_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffff0

    or-int/2addr v1, v3

    :cond_27
    const v3, -0x7fffffe0

    and-int v4, p0, v3

    if-ne v4, v3, :cond_28

    const-string v4, "IN_AUX_DIGITAL"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_28
    and-int v4, p0, v3

    if-ne v4, v3, :cond_29

    const-string v4, "IN_HDMI"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_29
    const v3, -0x7fffffc0

    and-int v4, p0, v3

    if-ne v4, v3, :cond_2a

    const-string v4, "IN_VOICE_CALL"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_2a
    and-int v4, p0, v3

    if-ne v4, v3, :cond_2b

    const-string v4, "IN_TELEPHONY_RX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v3

    :cond_2b
    const v3, -0x7fffff80

    and-int/2addr v3, p0

    const v4, -0x7fffff80

    if-ne v3, v4, :cond_2c

    const-string v3, "IN_BACK_MIC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffff80

    or-int/2addr v1, v3

    :cond_2c
    const v3, -0x7fffff00

    and-int/2addr v3, p0

    const v4, -0x7fffff00

    if-ne v3, v4, :cond_2d

    const-string v3, "IN_REMOTE_SUBMIX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffff00

    or-int/2addr v1, v3

    :cond_2d
    const v3, -0x7ffffe00

    and-int/2addr v3, p0

    const v4, -0x7ffffe00

    if-ne v3, v4, :cond_2e

    const-string v3, "IN_ANLG_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffe00

    or-int/2addr v1, v3

    :cond_2e
    const v3, -0x7ffffc00

    and-int/2addr v3, p0

    const v4, -0x7ffffc00

    if-ne v3, v4, :cond_2f

    const-string v3, "IN_DGTL_DOCK_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffc00

    or-int/2addr v1, v3

    :cond_2f
    const v3, -0x7ffff800

    and-int/2addr v3, p0

    const v4, -0x7ffff800

    if-ne v3, v4, :cond_30

    const-string v3, "IN_USB_ACCESSORY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffff800

    or-int/2addr v1, v3

    :cond_30
    const v3, -0x7ffff000

    and-int/2addr v3, p0

    const v4, -0x7ffff000

    if-ne v3, v4, :cond_31

    const-string v3, "IN_USB_DEVICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffff000

    or-int/2addr v1, v3

    :cond_31
    const v3, -0x7fffe000

    and-int/2addr v3, p0

    const v4, -0x7fffe000

    if-ne v3, v4, :cond_32

    const-string v3, "IN_FM_TUNER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffe000

    or-int/2addr v1, v3

    :cond_32
    const v3, -0x7fffc000

    and-int/2addr v3, p0

    const v4, -0x7fffc000

    if-ne v3, v4, :cond_33

    const-string v3, "IN_TV_TUNER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffc000

    or-int/2addr v1, v3

    :cond_33
    const v3, -0x7fff8000

    and-int/2addr v3, p0

    const v4, -0x7fff8000

    if-ne v3, v4, :cond_34

    const-string v3, "IN_LINE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fff8000

    or-int/2addr v1, v3

    :cond_34
    const/high16 v3, -0x7fff0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7fff0000

    if-ne v3, v4, :cond_35

    const-string v3, "IN_SPDIF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7fff0000

    or-int/2addr v1, v3

    :cond_35
    const/high16 v3, -0x7ffe0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ffe0000

    if-ne v3, v4, :cond_36

    const-string v3, "IN_BLUETOOTH_A2DP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7ffe0000

    or-int/2addr v1, v3

    :cond_36
    const/high16 v3, -0x7ffc0000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ffc0000

    if-ne v3, v4, :cond_37

    const-string v3, "IN_LOOPBACK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7ffc0000

    or-int/2addr v1, v3

    :cond_37
    const/high16 v3, -0x7ff80000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ff80000

    if-ne v3, v4, :cond_38

    const-string v3, "IN_IP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7ff80000

    or-int/2addr v1, v3

    :cond_38
    const/high16 v3, -0x7ff00000

    and-int/2addr v3, p0

    const/high16 v4, -0x7ff00000

    if-ne v3, v4, :cond_39

    const-string v3, "IN_BUS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7ff00000

    or-int/2addr v1, v3

    :cond_39
    const/high16 v3, -0x7f000000

    and-int/2addr v3, p0

    const/high16 v4, -0x7f000000

    if-ne v3, v4, :cond_3a

    const-string v3, "IN_PROXY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7f000000

    or-int/2addr v1, v3

    :cond_3a
    const/high16 v3, -0x7e000000

    and-int/2addr v3, p0

    const/high16 v4, -0x7e000000

    if-ne v3, v4, :cond_3b

    const-string v3, "IN_USB_HEADSET"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x7e000000

    or-int/2addr v1, v3

    :cond_3b
    const/high16 v3, -0x40000000    # -2.0f

    and-int/2addr v3, p0

    const/high16 v4, -0x40000000    # -2.0f

    if-ne v3, v4, :cond_3c

    const-string v3, "IN_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x40000000    # -2.0f

    or-int/2addr v1, v3

    :cond_3c
    const v3, -0x3ce00001    # -159.99998f

    and-int/2addr v3, p0

    const v4, -0x3ce00001    # -159.99998f

    if-ne v3, v4, :cond_3d

    const-string v3, "IN_ALL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x3ce00001    # -159.99998f

    or-int/2addr v1, v3

    :cond_3d
    and-int v3, p0, v2

    if-ne v3, v2, :cond_3e

    const-string v3, "IN_ALL_SCO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3e
    const v2, -0x7dffe800

    and-int/2addr v2, p0

    const v3, -0x7dffe800

    if-ne v2, v3, :cond_3f

    const-string v2, "IN_ALL_USB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, -0x7dffe800

    or-int/2addr v1, v2

    :cond_3f
    if-eq p0, v1, :cond_40

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

    :cond_40
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "NONE"

    return-object v0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "BIT_IN"

    return-object v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_2

    const-string v0, "BIT_DEFAULT"

    return-object v0

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    const-string v0, "OUT_EARPIECE"

    return-object v0

    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    const-string v0, "OUT_SPEAKER"

    return-object v0

    :cond_4
    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    const-string v0, "OUT_WIRED_HEADSET"

    return-object v0

    :cond_5
    const/16 v1, 0x8

    if-ne p0, v1, :cond_6

    const-string v0, "OUT_WIRED_HEADPHONE"

    return-object v0

    :cond_6
    const/16 v1, 0x10

    if-ne p0, v1, :cond_7

    const-string v0, "OUT_BLUETOOTH_SCO"

    return-object v0

    :cond_7
    const/16 v1, 0x20

    if-ne p0, v1, :cond_8

    const-string v0, "OUT_BLUETOOTH_SCO_HEADSET"

    return-object v0

    :cond_8
    const/16 v1, 0x40

    if-ne p0, v1, :cond_9

    const-string v0, "OUT_BLUETOOTH_SCO_CARKIT"

    return-object v0

    :cond_9
    const/16 v1, 0x80

    if-ne p0, v1, :cond_a

    const-string v0, "OUT_BLUETOOTH_A2DP"

    return-object v0

    :cond_a
    const/16 v1, 0x100

    if-ne p0, v1, :cond_b

    const-string v0, "OUT_BLUETOOTH_A2DP_HEADPHONES"

    return-object v0

    :cond_b
    const/16 v1, 0x200

    if-ne p0, v1, :cond_c

    const-string v0, "OUT_BLUETOOTH_A2DP_SPEAKER"

    return-object v0

    :cond_c
    const/16 v1, 0x400

    if-ne p0, v1, :cond_d

    const-string v0, "OUT_AUX_DIGITAL"

    return-object v0

    :cond_d
    if-ne p0, v1, :cond_e

    const-string v0, "OUT_HDMI"

    return-object v0

    :cond_e
    const/16 v1, 0x800

    if-ne p0, v1, :cond_f

    const-string v0, "OUT_ANLG_DOCK_HEADSET"

    return-object v0

    :cond_f
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_10

    const-string v0, "OUT_DGTL_DOCK_HEADSET"

    return-object v0

    :cond_10
    const/16 v1, 0x2000

    if-ne p0, v1, :cond_11

    const-string v0, "OUT_USB_ACCESSORY"

    return-object v0

    :cond_11
    const/16 v1, 0x4000

    if-ne p0, v1, :cond_12

    const-string v0, "OUT_USB_DEVICE"

    return-object v0

    :cond_12
    const v1, 0x8000

    if-ne p0, v1, :cond_13

    const-string v0, "OUT_REMOTE_SUBMIX"

    return-object v0

    :cond_13
    const/high16 v1, 0x10000

    if-ne p0, v1, :cond_14

    const-string v0, "OUT_TELEPHONY_TX"

    return-object v0

    :cond_14
    const/high16 v1, 0x20000

    if-ne p0, v1, :cond_15

    const-string v0, "OUT_LINE"

    return-object v0

    :cond_15
    const/high16 v1, 0x40000

    if-ne p0, v1, :cond_16

    const-string v0, "OUT_HDMI_ARC"

    return-object v0

    :cond_16
    const/high16 v1, 0x80000

    if-ne p0, v1, :cond_17

    const-string v0, "OUT_SPDIF"

    return-object v0

    :cond_17
    const/high16 v1, 0x100000

    if-ne p0, v1, :cond_18

    const-string v0, "OUT_FM"

    return-object v0

    :cond_18
    const/high16 v1, 0x200000

    if-ne p0, v1, :cond_19

    const-string v0, "OUT_AUX_LINE"

    return-object v0

    :cond_19
    const/high16 v1, 0x400000

    if-ne p0, v1, :cond_1a

    const-string v0, "OUT_SPEAKER_SAFE"

    return-object v0

    :cond_1a
    const/high16 v1, 0x800000

    if-ne p0, v1, :cond_1b

    const-string v0, "OUT_IP"

    return-object v0

    :cond_1b
    const/high16 v1, 0x1000000

    if-ne p0, v1, :cond_1c

    const-string v0, "OUT_BUS"

    return-object v0

    :cond_1c
    const/high16 v1, 0x2000000

    if-ne p0, v1, :cond_1d

    const-string v0, "OUT_PROXY"

    return-object v0

    :cond_1d
    const/high16 v1, 0x4000000

    if-ne p0, v1, :cond_1e

    const-string v0, "OUT_USB_HEADSET"

    return-object v0

    :cond_1e
    if-ne p0, v0, :cond_1f

    const-string v0, "OUT_DEFAULT"

    return-object v0

    :cond_1f
    const v0, 0x47ffffff

    if-ne p0, v0, :cond_20

    const-string v0, "OUT_ALL"

    return-object v0

    :cond_20
    const/16 v0, 0x380

    if-ne p0, v0, :cond_21

    const-string v0, "OUT_ALL_A2DP"

    return-object v0

    :cond_21
    const/16 v0, 0x70

    if-ne p0, v0, :cond_22

    const-string v0, "OUT_ALL_SCO"

    return-object v0

    :cond_22
    const v0, 0x4006000

    if-ne p0, v0, :cond_23

    const-string v0, "OUT_ALL_USB"

    return-object v0

    :cond_23
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_24

    const-string v0, "IN_COMMUNICATION"

    return-object v0

    :cond_24
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_25

    const-string v0, "IN_AMBIENT"

    return-object v0

    :cond_25
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_26

    const-string v0, "IN_BUILTIN_MIC"

    return-object v0

    :cond_26
    const v0, -0x7ffffff8

    if-ne p0, v0, :cond_27

    const-string v0, "IN_BLUETOOTH_SCO_HEADSET"

    return-object v0

    :cond_27
    const v1, -0x7ffffff0

    if-ne p0, v1, :cond_28

    const-string v0, "IN_WIRED_HEADSET"

    return-object v0

    :cond_28
    const v1, -0x7fffffe0

    if-ne p0, v1, :cond_29

    const-string v0, "IN_AUX_DIGITAL"

    return-object v0

    :cond_29
    if-ne p0, v1, :cond_2a

    const-string v0, "IN_HDMI"

    return-object v0

    :cond_2a
    const v1, -0x7fffffc0

    if-ne p0, v1, :cond_2b

    const-string v0, "IN_VOICE_CALL"

    return-object v0

    :cond_2b
    if-ne p0, v1, :cond_2c

    const-string v0, "IN_TELEPHONY_RX"

    return-object v0

    :cond_2c
    const v1, -0x7fffff80

    if-ne p0, v1, :cond_2d

    const-string v0, "IN_BACK_MIC"

    return-object v0

    :cond_2d
    const v1, -0x7fffff00

    if-ne p0, v1, :cond_2e

    const-string v0, "IN_REMOTE_SUBMIX"

    return-object v0

    :cond_2e
    const v1, -0x7ffffe00

    if-ne p0, v1, :cond_2f

    const-string v0, "IN_ANLG_DOCK_HEADSET"

    return-object v0

    :cond_2f
    const v1, -0x7ffffc00

    if-ne p0, v1, :cond_30

    const-string v0, "IN_DGTL_DOCK_HEADSET"

    return-object v0

    :cond_30
    const v1, -0x7ffff800

    if-ne p0, v1, :cond_31

    const-string v0, "IN_USB_ACCESSORY"

    return-object v0

    :cond_31
    const v1, -0x7ffff000

    if-ne p0, v1, :cond_32

    const-string v0, "IN_USB_DEVICE"

    return-object v0

    :cond_32
    const v1, -0x7fffe000

    if-ne p0, v1, :cond_33

    const-string v0, "IN_FM_TUNER"

    return-object v0

    :cond_33
    const v1, -0x7fffc000

    if-ne p0, v1, :cond_34

    const-string v0, "IN_TV_TUNER"

    return-object v0

    :cond_34
    const v1, -0x7fff8000

    if-ne p0, v1, :cond_35

    const-string v0, "IN_LINE"

    return-object v0

    :cond_35
    const/high16 v1, -0x7fff0000

    if-ne p0, v1, :cond_36

    const-string v0, "IN_SPDIF"

    return-object v0

    :cond_36
    const/high16 v1, -0x7ffe0000

    if-ne p0, v1, :cond_37

    const-string v0, "IN_BLUETOOTH_A2DP"

    return-object v0

    :cond_37
    const/high16 v1, -0x7ffc0000

    if-ne p0, v1, :cond_38

    const-string v0, "IN_LOOPBACK"

    return-object v0

    :cond_38
    const/high16 v1, -0x7ff80000

    if-ne p0, v1, :cond_39

    const-string v0, "IN_IP"

    return-object v0

    :cond_39
    const/high16 v1, -0x7ff00000

    if-ne p0, v1, :cond_3a

    const-string v0, "IN_BUS"

    return-object v0

    :cond_3a
    const/high16 v1, -0x7f000000

    if-ne p0, v1, :cond_3b

    const-string v0, "IN_PROXY"

    return-object v0

    :cond_3b
    const/high16 v1, -0x7e000000

    if-ne p0, v1, :cond_3c

    const-string v0, "IN_USB_HEADSET"

    return-object v0

    :cond_3c
    const/high16 v1, -0x40000000    # -2.0f

    if-ne p0, v1, :cond_3d

    const-string v0, "IN_DEFAULT"

    return-object v0

    :cond_3d
    const v1, -0x3ce00001    # -159.99998f

    if-ne p0, v1, :cond_3e

    const-string v0, "IN_ALL"

    return-object v0

    :cond_3e
    if-ne p0, v0, :cond_3f

    const-string v0, "IN_ALL_SCO"

    return-object v0

    :cond_3f
    const v0, -0x7dffe800

    if-ne p0, v0, :cond_40

    const-string v0, "IN_ALL_USB"

    return-object v0

    :cond_40
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
