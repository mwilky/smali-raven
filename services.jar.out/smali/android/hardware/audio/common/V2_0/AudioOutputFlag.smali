.class public final Landroid/hardware/audio/common/V2_0/AudioOutputFlag;
.super Ljava/lang/Object;
.source "AudioOutputFlag.java"


# static fields
.field public static final COMPRESS_OFFLOAD:I = 0x10

.field public static final DEEP_BUFFER:I = 0x8

.field public static final DIRECT:I = 0x1

.field public static final DIRECT_PCM:I = 0x2000

.field public static final FAST:I = 0x4

.field public static final HW_AV_SYNC:I = 0x40

.field public static final IEC958_NONAUDIO:I = 0x400

.field public static final MMAP_NOIRQ:I = 0x4000

.field public static final NONE:I = 0x0

.field public static final NON_BLOCKING:I = 0x20

.field public static final PRIMARY:I = 0x2

.field public static final RAW:I = 0x100

.field public static final SYNC:I = 0x200

.field public static final TTS:I = 0x80

.field public static final VOIP_RX:I = 0x8000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "DIRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "PRIMARY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v2, "FAST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string v2, "DEEP_BUFFER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const-string v2, "COMPRESS_OFFLOAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const-string v2, "NON_BLOCKING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const-string v2, "HW_AV_SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    const-string v2, "TTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    const-string v2, "RAW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    const-string v2, "SYNC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    const-string v2, "IEC958_NONAUDIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    :cond_a
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_b

    const-string v2, "DIRECT_PCM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x2000

    :cond_b
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_c

    const-string v2, "MMAP_NOIRQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x4000

    :cond_c
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_d

    const-string v3, "VOIP_RX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_d
    if-eq p0, v1, :cond_e

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

    :cond_e
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
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "DIRECT"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string v0, "PRIMARY"

    return-object v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string v0, "FAST"

    return-object v0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    const-string v0, "DEEP_BUFFER"

    return-object v0

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    const-string v0, "COMPRESS_OFFLOAD"

    return-object v0

    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const-string v0, "NON_BLOCKING"

    return-object v0

    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    const-string v0, "HW_AV_SYNC"

    return-object v0

    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const-string v0, "TTS"

    return-object v0

    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    const-string v0, "RAW"

    return-object v0

    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    const-string v0, "SYNC"

    return-object v0

    :cond_a
    const/16 v0, 0x400

    if-ne p0, v0, :cond_b

    const-string v0, "IEC958_NONAUDIO"

    return-object v0

    :cond_b
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_c

    const-string v0, "DIRECT_PCM"

    return-object v0

    :cond_c
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_d

    const-string v0, "MMAP_NOIRQ"

    return-object v0

    :cond_d
    const v0, 0x8000

    if-ne p0, v0, :cond_e

    const-string v0, "VOIP_RX"

    return-object v0

    :cond_e
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
