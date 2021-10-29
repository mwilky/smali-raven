.class final Lcom/android/server/vibrator/Vibration$DebugInfo;
.super Ljava/lang/Object;
.source "Vibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/Vibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebugInfo"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private final mEffect:Landroid/os/CombinedVibration;

.field private final mEndTimeDebug:J

.field private final mOpPkg:Ljava/lang/String;

.field private final mOriginalEffect:Landroid/os/CombinedVibration;

.field private final mReason:Ljava/lang/String;

.field private final mScale:F

.field private final mStartTimeDebug:J

.field private final mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field private final mUid:I


# direct methods
.method constructor <init>(JJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    iput-object p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    iput-object p6, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    iput p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    iput-object p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    iput p9, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    iput-object p10, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    const-wide v3, 0x20b00000001L

    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    instance-of v4, v3, Landroid/os/CombinedVibration$Mono;

    const-wide v5, 0x20b00000001L

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/os/CombinedVibration$Mono;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Mono;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/os/CombinedVibration$Stereo;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V

    :cond_1
    :goto_1
    const-wide v4, 0x20500000002L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Stereo;)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-wide v3, 0x20500000002L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x20b00000001L

    invoke-virtual {p4}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .locals 1

    nop

    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration$Sequential;)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/VibrationEffect;)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-object v2, p4

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v5, 0x10b00000001L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V

    goto :goto_0

    :cond_0
    const-wide v3, 0x10500000002L

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    const-wide v3, 0x10200000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getStartFrequency()F

    move-result v2

    const-wide v3, 0x10200000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p4}, Landroid/os/vibrator/RampSegment;->getEndFrequency()F

    move-result v2

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p4}, Landroid/os/vibrator/StepSegment;->getFrequency()F

    move-result v2

    const-wide v3, 0x10200000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/VibrationEffectSegment;)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    instance-of v2, p4, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_0

    const-wide v2, 0x10b00000003L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/StepSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/StepSegment;)V

    goto :goto_0

    :cond_0
    instance-of v2, p4, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_1

    const-wide v2, 0x10b00000004L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/RampSegment;)V

    goto :goto_0

    :cond_1
    instance-of v2, p4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_2

    const-wide v2, 0x10b00000001L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrebakedSegment;)V

    goto :goto_0

    :cond_2
    instance-of v2, p4, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v2, :cond_3

    const-wide v2, 0x10b00000002L

    move-object v4, p4

    check-cast v4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/vibrator/PrimitiveSegment;)V

    :cond_3
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v2}, Lcom/android/server/vibrator/Vibration$Status;->ordinal()I

    move-result v2

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v4

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v4

    const-wide v5, 0x10500000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    if-eqz v4, :cond_0

    const-wide v5, 0x10b00000003L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v4, :cond_1

    const-wide v5, 0x10b00000004L

    invoke-direct {p0, p1, v5, v6, v4}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/vibrator/Vibration;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/vibrator/Vibration;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTimeDebug:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v1}, Lcom/android/server/vibrator/Vibration$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAttrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
