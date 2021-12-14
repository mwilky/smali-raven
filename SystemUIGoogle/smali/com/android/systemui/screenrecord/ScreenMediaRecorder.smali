.class public Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
.super Ljava/lang/Object;
.source "ScreenMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    }
.end annotation


# instance fields
.field private mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field private mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field private mContext:Landroid/content/Context;

.field private mInputSurface:Landroid/view/Surface;

.field mListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMuxer:Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

.field private mTempAudioFile:Ljava/io/File;

.field private mTempVideoFile:Ljava/io/File;

.field private mUser:I

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method

.method private getSupportedSize(III)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p0, "video/avc"

    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    rem-int v2, p1, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v2

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v3

    rem-int v3, p2, v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v3

    rem-int v3, p2, v3

    sub-int v3, p2, v3

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "ScreenMediaRecorder"

    if-lt v0, v2, :cond_3

    if-lt v1, v3, :cond_3

    invoke-virtual {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    if-ge p0, p3, :cond_2

    move p3, p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen size supported at rate "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v7, [I

    aput v2, p0, v6

    aput v3, p0, v5

    aput p3, p0, v4

    return-object p0

    :cond_3
    int-to-double v2, v0

    int-to-double v9, p1

    div-double/2addr v2, v9

    int-to-double v0, v1

    int-to-double p1, p2

    div-double/2addr v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    mul-double/2addr v9, v0

    double-to-int v2, v9

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result p2

    rem-int p2, v2, p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result p2

    rem-int p2, v2, p2

    sub-int/2addr v2, p2

    :cond_4
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p2

    rem-int p2, p1, p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p2

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    :cond_5
    invoke-virtual {p0, v2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    if-ge p0, p3, :cond_6

    move p3, p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Resized by "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v7, [I

    aput v2, p0, v6

    aput p1, p0, v5

    aput p3, p0, v4

    return-object p0
.end method

.method private prepare()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "media_projection"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v4}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/media/projection/MediaProjection;

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    iput-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const-string/jumbo v2, "temp"

    const-string v3, ".mp4"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRefreshRate()F

    move-result v6

    float-to-int v6, v6

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v7, v8, v6}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->getSupportedSize(III)[I

    move-result-object v6

    aget v9, v6, v4

    const/4 v15, 0x1

    aget v10, v6, v15

    aget v6, v6, v3

    mul-int v7, v9, v10

    mul-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x1e

    mul-int/lit8 v7, v7, 0x6

    iget-object v8, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v8, 0x8

    const/16 v11, 0x100

    invoke-virtual {v3, v8, v11}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v9, v10}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v7}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v6, 0x36ee80

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v6, 0x12a05f200L

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v15}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x2fda0

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0xac44

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v3, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    iget-object v7, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget v11, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v12, 0x10

    const/4 v14, 0x0

    const/4 v1, 0x0

    const-string v8, "Recording Display"

    move v3, v15

    move-object v15, v1

    invoke-virtual/range {v7 .. v15}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v5, :cond_4

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v5, ".aac"

    invoke-static {v2, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    new-instance v1, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v6, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v7, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v6, v7, :cond_3

    move v4, v3

    :cond_3
    invoke-direct {v1, v2, v5, v4}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;-><init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V

    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_4
    return-void
.end method

.method private recordInternalAudio()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->start()V

    :cond_1
    return-void
.end method

.method private stopInternalAudioRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    :cond_1
    return-void
.end method


# virtual methods
.method end()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->stopInternalAudioRecording()V

    const-string p0, "ScreenMediaRecorder"

    const-string v0, "end recording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'screen-\'yyyyMMdd-HHmmss\'.mp4\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "datetaken"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "external_primary"

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenMediaRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v2, v4, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "muxing recording"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "temp"

    const-string v4, ".mp4"

    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v4, v8, v5, v6}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMuxer:Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mux()V

    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "muxing recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;Landroid/net/Uri;Ljava/io/File;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "ScreenMediaRecorder"

    const-string v1, "start recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->prepare()V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-direct {p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->recordInternalAudio()V

    return-void
.end method
