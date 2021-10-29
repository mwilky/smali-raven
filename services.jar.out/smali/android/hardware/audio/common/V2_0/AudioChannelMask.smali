.class public final Landroid/hardware/audio/common/V2_0/AudioChannelMask;
.super Ljava/lang/Object;
.source "AudioChannelMask.java"


# static fields
.field public static final COUNT_MAX:I = 0x1e

.field public static final INDEX_HDR:I = -0x80000000

.field public static final INDEX_MASK_1:I = -0x7fffffff

.field public static final INDEX_MASK_2:I = -0x7ffffffd

.field public static final INDEX_MASK_3:I = -0x7ffffff9

.field public static final INDEX_MASK_4:I = -0x7ffffff1

.field public static final INDEX_MASK_5:I = -0x7fffffe1

.field public static final INDEX_MASK_6:I = -0x7fffffc1

.field public static final INDEX_MASK_7:I = -0x7fffff81

.field public static final INDEX_MASK_8:I = -0x7fffff01

.field public static final INVALID:I = -0x40000000

.field public static final IN_6:I = 0xfc

.field public static final IN_ALL:I = 0xfffc

.field public static final IN_BACK:I = 0x20

.field public static final IN_BACK_PROCESSED:I = 0x200

.field public static final IN_FRONT:I = 0x10

.field public static final IN_FRONT_BACK:I = 0x30

.field public static final IN_FRONT_PROCESSED:I = 0x100

.field public static final IN_LEFT:I = 0x4

.field public static final IN_LEFT_PROCESSED:I = 0x40

.field public static final IN_MONO:I = 0x10

.field public static final IN_PRESSURE:I = 0x400

.field public static final IN_RIGHT:I = 0x8

.field public static final IN_RIGHT_PROCESSED:I = 0x80

.field public static final IN_STEREO:I = 0xc

.field public static final IN_VOICE_CALL_MONO:I = 0xc010

.field public static final IN_VOICE_DNLINK:I = 0x8000

.field public static final IN_VOICE_DNLINK_MONO:I = 0x8010

.field public static final IN_VOICE_UPLINK:I = 0x4000

.field public static final IN_VOICE_UPLINK_MONO:I = 0x4010

.field public static final IN_X_AXIS:I = 0x800

.field public static final IN_Y_AXIS:I = 0x1000

.field public static final IN_Z_AXIS:I = 0x2000

.field public static final NONE:I = 0x0

.field public static final OUT_2POINT1:I = 0xb

.field public static final OUT_5POINT1:I = 0x3f

.field public static final OUT_5POINT1_BACK:I = 0x3f

.field public static final OUT_5POINT1_SIDE:I = 0x60f

.field public static final OUT_6POINT1:I = 0x13f

.field public static final OUT_7POINT1:I = 0x63f

.field public static final OUT_ALL:I = 0x3ffff

.field public static final OUT_BACK_CENTER:I = 0x100

.field public static final OUT_BACK_LEFT:I = 0x10

.field public static final OUT_BACK_RIGHT:I = 0x20

.field public static final OUT_FRONT_CENTER:I = 0x4

.field public static final OUT_FRONT_LEFT:I = 0x1

.field public static final OUT_FRONT_LEFT_OF_CENTER:I = 0x40

.field public static final OUT_FRONT_RIGHT:I = 0x2

.field public static final OUT_FRONT_RIGHT_OF_CENTER:I = 0x80

.field public static final OUT_LOW_FREQUENCY:I = 0x8

.field public static final OUT_MONO:I = 0x1

.field public static final OUT_PENTA:I = 0x37

.field public static final OUT_QUAD:I = 0x33

.field public static final OUT_QUAD_BACK:I = 0x33

.field public static final OUT_QUAD_SIDE:I = 0x603

.field public static final OUT_SIDE_LEFT:I = 0x200

.field public static final OUT_SIDE_RIGHT:I = 0x400

.field public static final OUT_STEREO:I = 0x3

.field public static final OUT_SURROUND:I = 0x107

.field public static final OUT_TOP_BACK_CENTER:I = 0x10000

.field public static final OUT_TOP_BACK_LEFT:I = 0x8000

.field public static final OUT_TOP_BACK_RIGHT:I = 0x20000

.field public static final OUT_TOP_CENTER:I = 0x800

.field public static final OUT_TOP_FRONT_CENTER:I = 0x2000

.field public static final OUT_TOP_FRONT_LEFT:I = 0x1000

.field public static final OUT_TOP_FRONT_RIGHT:I = 0x4000

.field public static final REPRESENTATION_INDEX:I = 0x2

.field public static final REPRESENTATION_POSITION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 16

    move/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-string v3, "REPRESENTATION_POSITION"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "REPRESENTATION_INDEX"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_0
    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x40000000    # -2.0f

    and-int v5, v0, v3

    if-ne v5, v3, :cond_1

    const-string v5, "INVALID"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    const-string v3, "OUT_FRONT_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-ne v3, v4, :cond_3

    const-string v3, "OUT_FRONT_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_3
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const-string v3, "OUT_FRONT_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_4
    and-int/lit8 v3, v0, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5

    const-string v3, "OUT_LOW_FREQUENCY"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v0, 0x10

    const/16 v7, 0x10

    if-ne v3, v7, :cond_6

    const-string v3, "OUT_BACK_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_6
    and-int/lit8 v3, v0, 0x20

    const/16 v8, 0x20

    if-ne v3, v8, :cond_7

    const-string v3, "OUT_BACK_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_7
    and-int/lit8 v3, v0, 0x40

    const/16 v9, 0x40

    if-ne v3, v9, :cond_8

    const-string v3, "OUT_FRONT_LEFT_OF_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_8
    and-int/lit16 v3, v0, 0x80

    const/16 v10, 0x80

    if-ne v3, v10, :cond_9

    const-string v3, "OUT_FRONT_RIGHT_OF_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_9
    and-int/lit16 v3, v0, 0x100

    const/16 v11, 0x100

    if-ne v3, v11, :cond_a

    const-string v3, "OUT_BACK_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_a
    and-int/lit16 v3, v0, 0x200

    const/16 v12, 0x200

    if-ne v3, v12, :cond_b

    const-string v3, "OUT_SIDE_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_b
    and-int/lit16 v3, v0, 0x400

    const/16 v13, 0x400

    if-ne v3, v13, :cond_c

    const-string v3, "OUT_SIDE_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_c
    and-int/lit16 v3, v0, 0x800

    const/16 v14, 0x800

    if-ne v3, v14, :cond_d

    const-string v3, "OUT_TOP_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_d
    and-int/lit16 v3, v0, 0x1000

    const/16 v15, 0x1000

    if-ne v3, v15, :cond_e

    const-string v3, "OUT_TOP_FRONT_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_e
    and-int/lit16 v3, v0, 0x2000

    const/16 v15, 0x2000

    if-ne v3, v15, :cond_f

    const-string v3, "OUT_TOP_FRONT_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_f
    and-int/lit16 v3, v0, 0x4000

    const/16 v15, 0x4000

    if-ne v3, v15, :cond_10

    const-string v3, "OUT_TOP_FRONT_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_10
    const v3, 0x8000

    and-int v15, v0, v3

    if-ne v15, v3, :cond_11

    const-string v15, "OUT_TOP_BACK_LEFT"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v3

    :cond_11
    const/high16 v15, 0x10000

    and-int v3, v0, v15

    if-ne v3, v15, :cond_12

    const-string v3, "OUT_TOP_BACK_CENTER"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v15

    :cond_12
    const/high16 v3, 0x20000

    and-int v15, v0, v3

    if-ne v15, v3, :cond_13

    const-string v15, "OUT_TOP_BACK_RIGHT"

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v3

    :cond_13
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_14

    const-string v3, "OUT_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1

    :cond_14
    and-int/lit8 v3, v0, 0x3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_15

    const-string v3, "OUT_STEREO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_15
    and-int/lit8 v3, v0, 0xb

    const/16 v5, 0xb

    if-ne v3, v5, :cond_16

    const-string v3, "OUT_2POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_16
    and-int/lit8 v3, v0, 0x33

    const/16 v5, 0x33

    if-ne v3, v5, :cond_17

    const-string v3, "OUT_QUAD"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_17
    and-int/lit8 v3, v0, 0x33

    if-ne v3, v5, :cond_18

    const-string v3, "OUT_QUAD_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_18
    and-int/lit16 v3, v0, 0x603

    const/16 v5, 0x603

    if-ne v3, v5, :cond_19

    const-string v3, "OUT_QUAD_SIDE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x603

    :cond_19
    and-int/lit16 v3, v0, 0x107

    const/16 v5, 0x107

    if-ne v3, v5, :cond_1a

    const-string v3, "OUT_SURROUND"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x107

    :cond_1a
    and-int/lit8 v3, v0, 0x37

    const/16 v5, 0x37

    if-ne v3, v5, :cond_1b

    const-string v3, "OUT_PENTA"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_1b
    and-int/lit8 v3, v0, 0x3f

    const/16 v5, 0x3f

    if-ne v3, v5, :cond_1c

    const-string v3, "OUT_5POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_1c
    and-int/lit8 v3, v0, 0x3f

    if-ne v3, v5, :cond_1d

    const-string v3, "OUT_5POINT1_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_1d
    and-int/lit16 v3, v0, 0x60f

    const/16 v5, 0x60f

    if-ne v3, v5, :cond_1e

    const-string v3, "OUT_5POINT1_SIDE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x60f

    :cond_1e
    and-int/lit16 v3, v0, 0x13f

    const/16 v5, 0x13f

    if-ne v3, v5, :cond_1f

    const-string v3, "OUT_6POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x13f

    :cond_1f
    and-int/lit16 v3, v0, 0x63f

    const/16 v5, 0x63f

    if-ne v3, v5, :cond_20

    const-string v3, "OUT_7POINT1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x63f

    :cond_20
    const v3, 0x3ffff

    and-int/2addr v3, v0

    const v5, 0x3ffff

    if-ne v3, v5, :cond_21

    const-string v3, "OUT_ALL"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x3ffff

    or-int/2addr v2, v3

    :cond_21
    and-int/lit8 v3, v0, 0x4

    if-ne v3, v4, :cond_22

    const-string v3, "IN_LEFT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_22
    and-int/lit8 v3, v0, 0x8

    if-ne v3, v6, :cond_23

    const-string v3, "IN_RIGHT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_23
    and-int/lit8 v3, v0, 0x10

    if-ne v3, v7, :cond_24

    const-string v3, "IN_FRONT"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_24
    and-int/lit8 v3, v0, 0x20

    if-ne v3, v8, :cond_25

    const-string v3, "IN_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_25
    and-int/lit8 v3, v0, 0x40

    if-ne v3, v9, :cond_26

    const-string v3, "IN_LEFT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_26
    and-int/lit16 v3, v0, 0x80

    if-ne v3, v10, :cond_27

    const-string v3, "IN_RIGHT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_27
    and-int/lit16 v3, v0, 0x100

    if-ne v3, v11, :cond_28

    const-string v3, "IN_FRONT_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_28
    and-int/lit16 v3, v0, 0x200

    if-ne v3, v12, :cond_29

    const-string v3, "IN_BACK_PROCESSED"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_29
    and-int/lit16 v3, v0, 0x400

    if-ne v3, v13, :cond_2a

    const-string v3, "IN_PRESSURE"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_2a
    and-int/lit16 v3, v0, 0x800

    if-ne v3, v14, :cond_2b

    const-string v3, "IN_X_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_2b
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_2c

    const-string v3, "IN_Y_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_2c
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_2d

    const-string v3, "IN_Z_AXIS"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_2d
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_2e

    const-string v3, "IN_VOICE_UPLINK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_2e
    const v3, 0x8000

    and-int v4, v0, v3

    if-ne v4, v3, :cond_2f

    const-string v4, "IN_VOICE_DNLINK"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v3

    :cond_2f
    and-int/lit8 v3, v0, 0x10

    if-ne v3, v7, :cond_30

    const-string v3, "IN_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_30
    and-int/lit8 v3, v0, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_31

    const-string v3, "IN_STEREO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_31
    and-int/lit8 v3, v0, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_32

    const-string v3, "IN_FRONT_BACK"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_32
    and-int/lit16 v3, v0, 0xfc

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_33

    const-string v3, "IN_6"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xfc

    :cond_33
    and-int/lit16 v3, v0, 0x4010

    const/16 v4, 0x4010

    if-ne v3, v4, :cond_34

    const-string v3, "IN_VOICE_UPLINK_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4010

    :cond_34
    const v3, 0x8010

    and-int/2addr v3, v0

    const v4, 0x8010

    if-ne v3, v4, :cond_35

    const-string v3, "IN_VOICE_DNLINK_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x8010

    or-int/2addr v2, v3

    :cond_35
    const v3, 0xc010

    and-int/2addr v3, v0

    const v4, 0xc010

    if-ne v3, v4, :cond_36

    const-string v3, "IN_VOICE_CALL_MONO"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0xc010

    or-int/2addr v2, v3

    :cond_36
    const v3, 0xfffc

    and-int/2addr v3, v0

    const v4, 0xfffc

    if-ne v3, v4, :cond_37

    const-string v3, "IN_ALL"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0xfffc

    or-int/2addr v2, v3

    :cond_37
    and-int/lit8 v3, v0, 0x1e

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_38

    const-string v3, "COUNT_MAX"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1e

    :cond_38
    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_39

    const-string v3, "INDEX_HDR"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    :cond_39
    const v3, -0x7fffffff

    and-int/2addr v3, v0

    const v4, -0x7fffffff

    if-ne v3, v4, :cond_3a

    const-string v3, "INDEX_MASK_1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffffff

    or-int/2addr v2, v3

    :cond_3a
    const v3, -0x7ffffffd

    and-int/2addr v3, v0

    const v4, -0x7ffffffd

    if-ne v3, v4, :cond_3b

    const-string v3, "INDEX_MASK_2"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffffd

    or-int/2addr v2, v3

    :cond_3b
    const v3, -0x7ffffff9

    and-int/2addr v3, v0

    const v4, -0x7ffffff9

    if-ne v3, v4, :cond_3c

    const-string v3, "INDEX_MASK_3"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffff9

    or-int/2addr v2, v3

    :cond_3c
    const v3, -0x7ffffff1

    and-int/2addr v3, v0

    const v4, -0x7ffffff1

    if-ne v3, v4, :cond_3d

    const-string v3, "INDEX_MASK_4"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffffff1

    or-int/2addr v2, v3

    :cond_3d
    const v3, -0x7fffffe1

    and-int/2addr v3, v0

    const v4, -0x7fffffe1

    if-ne v3, v4, :cond_3e

    const-string v3, "INDEX_MASK_5"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffffe1

    or-int/2addr v2, v3

    :cond_3e
    const v3, -0x7fffffc1

    and-int/2addr v3, v0

    const v4, -0x7fffffc1

    if-ne v3, v4, :cond_3f

    const-string v3, "INDEX_MASK_6"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffffc1

    or-int/2addr v2, v3

    :cond_3f
    const v3, -0x7fffff81

    and-int/2addr v3, v0

    const v4, -0x7fffff81

    if-ne v3, v4, :cond_40

    const-string v3, "INDEX_MASK_7"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffff81

    or-int/2addr v2, v3

    :cond_40
    const v3, -0x7fffff01

    and-int/2addr v3, v0

    const v4, -0x7fffff01

    if-ne v3, v4, :cond_41

    const-string v3, "INDEX_MASK_8"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, -0x7fffff01

    or-int/2addr v2, v3

    :cond_41
    if-eq v0, v2, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v4, v2

    and-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    const-string v3, " | "

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 16

    move/from16 v0, p0

    if-nez v0, :cond_0

    const-string v1, "REPRESENTATION_POSITION"

    return-object v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "REPRESENTATION_INDEX"

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "NONE"

    return-object v1

    :cond_2
    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_3

    const-string v1, "INVALID"

    return-object v1

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v1, "OUT_FRONT_LEFT"

    return-object v1

    :cond_4
    if-ne v0, v1, :cond_5

    const-string v1, "OUT_FRONT_RIGHT"

    return-object v1

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const-string v1, "OUT_FRONT_CENTER"

    return-object v1

    :cond_6
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    const-string v1, "OUT_LOW_FREQUENCY"

    return-object v1

    :cond_7
    const/16 v4, 0x10

    if-ne v0, v4, :cond_8

    const-string v1, "OUT_BACK_LEFT"

    return-object v1

    :cond_8
    const/16 v5, 0x20

    if-ne v0, v5, :cond_9

    const-string v1, "OUT_BACK_RIGHT"

    return-object v1

    :cond_9
    const/16 v6, 0x40

    if-ne v0, v6, :cond_a

    const-string v1, "OUT_FRONT_LEFT_OF_CENTER"

    return-object v1

    :cond_a
    const/16 v7, 0x80

    if-ne v0, v7, :cond_b

    const-string v1, "OUT_FRONT_RIGHT_OF_CENTER"

    return-object v1

    :cond_b
    const/16 v8, 0x100

    if-ne v0, v8, :cond_c

    const-string v1, "OUT_BACK_CENTER"

    return-object v1

    :cond_c
    const/16 v9, 0x200

    if-ne v0, v9, :cond_d

    const-string v1, "OUT_SIDE_LEFT"

    return-object v1

    :cond_d
    const/16 v10, 0x400

    if-ne v0, v10, :cond_e

    const-string v1, "OUT_SIDE_RIGHT"

    return-object v1

    :cond_e
    const/16 v11, 0x800

    if-ne v0, v11, :cond_f

    const-string v1, "OUT_TOP_CENTER"

    return-object v1

    :cond_f
    const/16 v12, 0x1000

    if-ne v0, v12, :cond_10

    const-string v1, "OUT_TOP_FRONT_LEFT"

    return-object v1

    :cond_10
    const/16 v13, 0x2000

    if-ne v0, v13, :cond_11

    const-string v1, "OUT_TOP_FRONT_CENTER"

    return-object v1

    :cond_11
    const/16 v14, 0x4000

    if-ne v0, v14, :cond_12

    const-string v1, "OUT_TOP_FRONT_RIGHT"

    return-object v1

    :cond_12
    const v15, 0x8000

    if-ne v0, v15, :cond_13

    const-string v1, "OUT_TOP_BACK_LEFT"

    return-object v1

    :cond_13
    const/high16 v15, 0x10000

    if-ne v0, v15, :cond_14

    const-string v1, "OUT_TOP_BACK_CENTER"

    return-object v1

    :cond_14
    const/high16 v15, 0x20000

    if-ne v0, v15, :cond_15

    const-string v1, "OUT_TOP_BACK_RIGHT"

    return-object v1

    :cond_15
    if-ne v0, v2, :cond_16

    const-string v1, "OUT_MONO"

    return-object v1

    :cond_16
    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    const-string v1, "OUT_STEREO"

    return-object v1

    :cond_17
    const/16 v2, 0xb

    if-ne v0, v2, :cond_18

    const-string v1, "OUT_2POINT1"

    return-object v1

    :cond_18
    const/16 v2, 0x33

    if-ne v0, v2, :cond_19

    const-string v1, "OUT_QUAD"

    return-object v1

    :cond_19
    if-ne v0, v2, :cond_1a

    const-string v1, "OUT_QUAD_BACK"

    return-object v1

    :cond_1a
    const/16 v2, 0x603

    if-ne v0, v2, :cond_1b

    const-string v1, "OUT_QUAD_SIDE"

    return-object v1

    :cond_1b
    const/16 v2, 0x107

    if-ne v0, v2, :cond_1c

    const-string v1, "OUT_SURROUND"

    return-object v1

    :cond_1c
    const/16 v2, 0x37

    if-ne v0, v2, :cond_1d

    const-string v1, "OUT_PENTA"

    return-object v1

    :cond_1d
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1e

    const-string v1, "OUT_5POINT1"

    return-object v1

    :cond_1e
    if-ne v0, v2, :cond_1f

    const-string v1, "OUT_5POINT1_BACK"

    return-object v1

    :cond_1f
    const/16 v2, 0x60f

    if-ne v0, v2, :cond_20

    const-string v1, "OUT_5POINT1_SIDE"

    return-object v1

    :cond_20
    const/16 v2, 0x13f

    if-ne v0, v2, :cond_21

    const-string v1, "OUT_6POINT1"

    return-object v1

    :cond_21
    const/16 v2, 0x63f

    if-ne v0, v2, :cond_22

    const-string v1, "OUT_7POINT1"

    return-object v1

    :cond_22
    const v2, 0x3ffff

    if-ne v0, v2, :cond_23

    const-string v1, "OUT_ALL"

    return-object v1

    :cond_23
    if-ne v0, v1, :cond_24

    const-string v1, "IN_LEFT"

    return-object v1

    :cond_24
    if-ne v0, v3, :cond_25

    const-string v1, "IN_RIGHT"

    return-object v1

    :cond_25
    if-ne v0, v4, :cond_26

    const-string v1, "IN_FRONT"

    return-object v1

    :cond_26
    if-ne v0, v5, :cond_27

    const-string v1, "IN_BACK"

    return-object v1

    :cond_27
    if-ne v0, v6, :cond_28

    const-string v1, "IN_LEFT_PROCESSED"

    return-object v1

    :cond_28
    if-ne v0, v7, :cond_29

    const-string v1, "IN_RIGHT_PROCESSED"

    return-object v1

    :cond_29
    if-ne v0, v8, :cond_2a

    const-string v1, "IN_FRONT_PROCESSED"

    return-object v1

    :cond_2a
    if-ne v0, v9, :cond_2b

    const-string v1, "IN_BACK_PROCESSED"

    return-object v1

    :cond_2b
    if-ne v0, v10, :cond_2c

    const-string v1, "IN_PRESSURE"

    return-object v1

    :cond_2c
    if-ne v0, v11, :cond_2d

    const-string v1, "IN_X_AXIS"

    return-object v1

    :cond_2d
    if-ne v0, v12, :cond_2e

    const-string v1, "IN_Y_AXIS"

    return-object v1

    :cond_2e
    if-ne v0, v13, :cond_2f

    const-string v1, "IN_Z_AXIS"

    return-object v1

    :cond_2f
    if-ne v0, v14, :cond_30

    const-string v1, "IN_VOICE_UPLINK"

    return-object v1

    :cond_30
    const v1, 0x8000

    if-ne v0, v1, :cond_31

    const-string v1, "IN_VOICE_DNLINK"

    return-object v1

    :cond_31
    if-ne v0, v4, :cond_32

    const-string v1, "IN_MONO"

    return-object v1

    :cond_32
    const/16 v1, 0xc

    if-ne v0, v1, :cond_33

    const-string v1, "IN_STEREO"

    return-object v1

    :cond_33
    const/16 v1, 0x30

    if-ne v0, v1, :cond_34

    const-string v1, "IN_FRONT_BACK"

    return-object v1

    :cond_34
    const/16 v1, 0xfc

    if-ne v0, v1, :cond_35

    const-string v1, "IN_6"

    return-object v1

    :cond_35
    const/16 v1, 0x4010

    if-ne v0, v1, :cond_36

    const-string v1, "IN_VOICE_UPLINK_MONO"

    return-object v1

    :cond_36
    const v1, 0x8010

    if-ne v0, v1, :cond_37

    const-string v1, "IN_VOICE_DNLINK_MONO"

    return-object v1

    :cond_37
    const v1, 0xc010

    if-ne v0, v1, :cond_38

    const-string v1, "IN_VOICE_CALL_MONO"

    return-object v1

    :cond_38
    const v1, 0xfffc

    if-ne v0, v1, :cond_39

    const-string v1, "IN_ALL"

    return-object v1

    :cond_39
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3a

    const-string v1, "COUNT_MAX"

    return-object v1

    :cond_3a
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3b

    const-string v1, "INDEX_HDR"

    return-object v1

    :cond_3b
    const v1, -0x7fffffff

    if-ne v0, v1, :cond_3c

    const-string v1, "INDEX_MASK_1"

    return-object v1

    :cond_3c
    const v1, -0x7ffffffd

    if-ne v0, v1, :cond_3d

    const-string v1, "INDEX_MASK_2"

    return-object v1

    :cond_3d
    const v1, -0x7ffffff9

    if-ne v0, v1, :cond_3e

    const-string v1, "INDEX_MASK_3"

    return-object v1

    :cond_3e
    const v1, -0x7ffffff1

    if-ne v0, v1, :cond_3f

    const-string v1, "INDEX_MASK_4"

    return-object v1

    :cond_3f
    const v1, -0x7fffffe1

    if-ne v0, v1, :cond_40

    const-string v1, "INDEX_MASK_5"

    return-object v1

    :cond_40
    const v1, -0x7fffffc1

    if-ne v0, v1, :cond_41

    const-string v1, "INDEX_MASK_6"

    return-object v1

    :cond_41
    const v1, -0x7fffff81

    if-ne v0, v1, :cond_42

    const-string v1, "INDEX_MASK_7"

    return-object v1

    :cond_42
    const v1, -0x7fffff01

    if-ne v0, v1, :cond_43

    const-string v1, "INDEX_MASK_8"

    return-object v1

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
