.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-object v0, v0, Lcom/android/wm/shell/TaskView;->mListener:Lcom/android/wm/shell/TaskView$Listener;

    invoke-interface {v0}, Lcom/android/wm/shell/TaskView$Listener;->onTaskRemovalStarted()V

    return-void

    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iget v0, v0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda9;->f$1:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v0, [B

    iget-boolean v3, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    div-int/lit8 v3, v0, 0x2

    new-array v4, v3, [S

    new-array v3, v3, [S

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_2
    iget-boolean v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    if-eqz v10, :cond_8

    iget-object v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v9, v3

    sub-int/2addr v9, v5

    invoke-virtual {v8, v3, v5, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v8

    iget-object v9, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    array-length v10, v4

    sub-int/2addr v10, v6

    invoke-virtual {v9, v4, v6, v10}, Landroid/media/AudioRecord;->read([SII)I

    move-result v9

    if-gez v8, :cond_1

    if-gez v9, :cond_1

    goto/16 :goto_8

    :cond_1
    if-gez v8, :cond_2

    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([SS)V

    move v5, v6

    move v8, v9

    :cond_2
    if-gez v9, :cond_3

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([SS)V

    move v6, v5

    move v9, v8

    :cond_3
    add-int/2addr v8, v5

    add-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/lit8 v11, v10, 0x2

    const v12, 0x3fb33333    # 1.4f

    :goto_3
    const/16 v13, 0x7fff

    const/16 v14, -0x8000

    if-ge v7, v10, :cond_4

    aget-short v15, v4, v7

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    invoke-static {v15, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    move-result v13

    int-to-short v13, v13

    aput-short v13, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_5

    aget-short v12, v3, v7

    aget-short v15, v4, v7

    add-int/2addr v12, v15

    invoke-static {v12, v14, v13}, Landroid/util/MathUtils;->constrain(III)I

    move-result v12

    int-to-short v12, v12

    mul-int/lit8 v13, v7, 0x2

    and-int/lit16 v15, v12, 0xff

    int-to-byte v15, v15

    aput-byte v15, v2, v13

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v2, v13

    add-int/lit8 v7, v7, 0x1

    const/16 v13, 0x7fff

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_5
    sub-int v12, v5, v10

    if-ge v7, v12, :cond_6

    add-int v12, v10, v7

    aget-short v12, v3, v12

    aput-short v12, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_6
    sub-int v7, v6, v10

    if-ge v5, v7, :cond_7

    add-int v7, v10, v5

    aget-short v7, v4, v7

    aput-short v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    sub-int v5, v8, v10

    sub-int v6, v9, v10

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    iget-object v7, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v11

    move v7, v10

    :goto_7
    if-gez v11, :cond_9

    const-string/jumbo v0, "read error "

    const-string v2, ", shorts internal: "

    const-string v3, ", shorts mic: "

    invoke-static {v0, v11, v2, v8, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScreenAudioRecorder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    iget-object v4, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    iget-wide v8, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    return-void

    :cond_9
    :goto_9
    if-lez v11, :cond_c

    iget-object v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-gez v15, :cond_a

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    goto :goto_b

    :cond_a
    iget-object v10, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v10, v15}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    if-le v11, v12, :cond_b

    goto :goto_a

    :cond_b
    move v12, v11

    :goto_a
    add-int/lit8 v13, v12, 0x0

    sub-int/2addr v11, v12

    invoke-virtual {v10, v2, v7, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v7, v12

    iget-object v14, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    move-object v10, v2

    move-object/from16 p0, v3

    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    const/16 v20, 0x0

    move/from16 v17, v12

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    int-to-long v12, v13

    add-long/2addr v2, v12

    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTotalBytes:J

    const-wide/32 v12, 0xf4240

    const-wide/16 v14, 0x2

    div-long/2addr v2, v14

    mul-long/2addr v2, v12

    iget-object v12, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v12, 0xac44

    int-to-long v12, v12

    div-long/2addr v2, v12

    iput-wide v2, v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mPresentationTime:J

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->writeOutput()V

    move-object/from16 v3, p0

    move-object v2, v10

    goto :goto_9

    :cond_c
    :goto_b
    move-object v10, v2

    move-object/from16 p0, v3

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v2, v10

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
