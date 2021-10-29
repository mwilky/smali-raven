.class Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventWriterTask"
.end annotation


# static fields
.field private static final WRITER_SLEEP_MS:J = 0x64L


# instance fields
.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


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

.method private logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V
    .locals 30

    move-object/from16 v0, p1

    const/4 v1, 0x0

    iget v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown camera facing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraService_proxy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    nop

    :goto_0
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_0
    const/4 v3, 0x5

    new-array v9, v3, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    new-instance v5, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v5}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v5, v9, v4

    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/CameraStreamStats;

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v7

    iput v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget-object v6, v9, v4

    invoke-virtual {v5}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v7

    iput-object v7, v6, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0xe3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->getDuration()J

    move-result-wide v5

    iget v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v12, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iget v13, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iget v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    iget v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    move-wide/from16 v27, v5

    iget-wide v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    move-wide/from16 v16, v4

    iget-wide v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move-wide/from16 v18, v4

    iget-boolean v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    move/from16 v20, v4

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v22

    const/4 v4, 0x1

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v23

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v24

    const/4 v4, 0x3

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v25

    const/4 v4, 0x4

    aget-object v4, v9, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    move-object/from16 v29, v9

    move v9, v1

    move/from16 v21, v2

    move-wide/from16 v5, v27

    const/16 v4, 0xe3

    invoke-static/range {v4 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    invoke-direct {p0, v1}, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->logCameraUsageEvent(Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;)V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :goto_2
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
