.class public Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventWriterTask"
.end annotation


# instance fields
.field public mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V
    .locals 34

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown camera facing: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "CameraService_proxy"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v5

    goto :goto_0

    :cond_0
    move v12, v2

    goto :goto_0

    :cond_1
    move v12, v3

    goto :goto_0

    :cond_2
    move v12, v4

    :goto_0
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    const/4 v6, 0x5

    new-array v15, v6, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move v7, v5

    :goto_2
    if-ge v7, v6, :cond_5

    new-instance v8, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v8}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v8, v15, v7

    if-ge v7, v1, :cond_4

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/CameraStreamStats;

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v10

    iput v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v10

    iput-object v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v10

    iput-object v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    aget-object v9, v15, v7

    invoke-virtual {v8}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    const/16 v7, 0xe3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v8

    iget v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    move-object/from16 v24, v15

    move v15, v6

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    move/from16 v16, v6

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    move/from16 v17, v6

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move/from16 v18, v6

    move-wide/from16 v32, v8

    iget-wide v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move-wide/from16 v19, v7

    iget-wide v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v21, v6

    iget-boolean v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    move/from16 v23, v6

    aget-object v5, v24, v5

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    aget-object v4, v24, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    aget-object v3, v24, v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v27

    aget-object v2, v24, v2

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v28

    const/4 v2, 0x4

    aget-object v2, v24, v2

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v29

    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    move/from16 v31, v0

    move/from16 v24, v1

    move-wide/from16 v8, v32

    const/16 v7, 0xe3

    invoke-static/range {v7 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;I)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-virtual {p0, v1}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
