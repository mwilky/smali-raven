.class Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private mIndexMax:I

.field private mIndexMin:I

.field private mIndexMinNoPerm:I

.field private mIsMuted:Z

.field private mIsMutedInternally:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 10

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v0, 0xa

    invoke-static {p3, v1, v0}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VSS() stream:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " initStreamVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "AS.AudioService"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7d0

    const-string v8, "VSS()"

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "   Muted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "   Muted Internally: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "   Min: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    if-eq v0, v1, :cond_0

    const-string v0, " w/o perm:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_0
    const-string v0, "   Max: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   streamVolume:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   Current: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, ", "

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_4

    if-lez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v1, v3, :cond_2

    const-string v2, "default"

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    nop

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "   Devices: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$3800(Lcom/android/server/audio/AudioService;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    move v6, v5

    if-eq v5, v3, :cond_7

    and-int v5, v0, v6

    if-eqz v5, :cond_6

    add-int/lit8 v5, v4, 0x1

    if-lez v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-static {v6}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private getAbsoluteVolumeIndex(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3200(Lcom/android/server/audio/AudioService;)[F

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    :goto_0
    return p1
.end method

.method private getValidIndex(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_0
    if-ge p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v1, :cond_2

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v1
.end method

.method private hasValidSettingsName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setStreamVolumeIndex(II)V
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(III)I

    return-void
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 5

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3, v2}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    :cond_2
    const/high16 v3, 0x8000000

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method applyDeviceVolume_syncVSS(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    const/high16 v0, 0x8000000

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    return-void
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v1, v1, v2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->access$3400(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v2}, Lcom/android/server/audio/AudioService;->access$3700(Lcom/android/server/audio/AudioService;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIndex(I)I
    .locals 4

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move v1, v2

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getMinIndex(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_0
    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .locals 3

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFullyMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mute(Z)Z
    .locals 10

    const/4 v0, 0x0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_1
    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public muteInternally(Z)Z
    .locals 5

    const/4 v0, 0x0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eq p1, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v3, 0x9

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :cond_1
    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForStream(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    :cond_2
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    if-ne v2, v3, :cond_3

    invoke-static {v3, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const/4 v8, 0x0

    move v5, v1

    move v6, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return v0
.end method

.method public readSettings()V
    .locals 10

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_0
    :try_start_3
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v5, 0x7

    if-ne v2, v5, :cond_1

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-enter v0

    :try_start_5
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v3, :cond_2

    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    move v7, v8

    :goto_2
    if-ne v7, v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v7, 0xa

    invoke-direct {p0, v8, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_6
    :goto_3
    :try_start_6
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v4

    mul-int/lit8 v2, v2, 0xa

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move v2, v4

    :cond_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 7

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v1, v0, v6}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v1

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, p2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    invoke-direct {p0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(IZ)I

    move-result v3

    move p1, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    move p1, v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v6

    if-ne p2, v6, :cond_2

    move v3, v4

    :cond_2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    :goto_1
    if-ltz v6, :cond_5

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v7, v7, v6

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v8, :cond_4

    sget-object v8, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v8, v6

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v8, v9, :cond_4

    if-nez v5, :cond_3

    invoke-virtual {v7, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v8, p1, v9, v6}, Lcom/android/server/audio/AudioService;->access$3500(Lcom/android/server/audio/AudioService;III)I

    move-result v8

    invoke-virtual {v7, v8, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    if-eqz v3, :cond_4

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v9, v6}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v9

    invoke-virtual {v7, v8, v9, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_7

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    if-ne p2, v7, :cond_7

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    sget-object v8, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_a

    add-int/lit8 v0, v2, 0x5

    div-int/lit8 v2, v0, 0xa

    add-int/lit8 v0, p1, 0x5

    div-int/lit8 p1, v0, 0xa

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v1

    if-ne v0, v1, :cond_9

    if-nez p3, :cond_8

    const-string v0, "AS.AudioService"

    const-string v1, "No caller for volume_changed event"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v2, p1, v1, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    :cond_9
    if-eq p1, v2, :cond_a

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_a
    return v5

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public updateNoPermMinIndex(I)V
    .locals 2

    mul-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mIndexMinNoPerm for stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :cond_0
    return-void
.end method
