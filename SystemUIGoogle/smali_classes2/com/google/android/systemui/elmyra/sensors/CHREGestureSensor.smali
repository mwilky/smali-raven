.class public Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;
.super Ljava/lang/Object;
.source "CHREGestureSensor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/google/android/systemui/elmyra/sensors/GestureSensor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextHubClient:Landroid/hardware/location/ContextHubClient;

.field private final mContextHubClientCallback:Landroid/hardware/location/ContextHubClientCallback;

.field private mContextHubRetryCount:I

.field private final mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

.field private final mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

.field private mIsListening:Z

.field private final mProgressDetectThreshold:F


# direct methods
.method public static synthetic $r8$lambda$W7slu-UEhjN0UjNzOgQT1hxlSuc(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->lambda$new$0(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V

    return-void
.end method

.method public static synthetic $r8$lambda$djCIpXyGsk_PevnEZ_1lS1DjXqc(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->updateSensitivity(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;-><init>(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClientCallback:Landroid/hardware/location/ContextHubClientCallback;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->elmyra_progress_detect_threshold:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mProgressDetectThreshold:F

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    new-instance p1, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->setSnapshotListener(Lcom/google/android/systemui/elmyra/SnapshotController$Listener;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    new-instance p1, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->setListener(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mIsListening:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->startRecognizer()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    return-object p0
.end method

.method private initializeContextHubClientIfNull()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.context_hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContext:Landroid/content/Context;

    const-string v1, "contexthub"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/ContextHubManager;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubManager;->getContextHubs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Elmyra/GestureSensor"

    const-string v0, "No context hubs found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClientCallback:Landroid/hardware/location/ContextHubClientCallback;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClient:Landroid/hardware/location/ContextHubClient;

    iget v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubRetryCount:I

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;)V
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const/16 v0, 0xcb

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    return-void
.end method

.method private sendMessageToNanoApp(I[B)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->initializeContextHubClientIfNull()V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClient:Landroid/hardware/location/ContextHubClient;

    const-string v1, "Elmyra/GestureSensor"

    if-nez v0, :cond_0

    const-string p0, "ContextHubClient null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide v2, 0x476f6f676c00100eL    # 1.3057659520462467E36

    invoke-static {v2, v3, p1, p2}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClient:Landroid/hardware/location/ContextHubClient;

    invoke-virtual {p0, p2}, Landroid/hardware/location/ContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const/4 p1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p1

    const-string p0, "Unable to send message %d to nanoapp, error code %d"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private startRecognizer()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;-><init>()V

    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mProgressDetectThreshold:F

    iput v1, v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->progressReportThreshold:F

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$RecognizerStart;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/16 v1, 0xc8

    invoke-direct {p0, v1, v0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->getChassisConfiguration()Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0xcc

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    :cond_0
    return-void
.end method

.method private updateSensitivity(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p1

    iput p1, v0, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$SensitivityUpdate;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const/16 v0, 0xca

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mIsListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v0, :cond_0

    const-string v0, "  mContextHubClient is null. Likely no context hubs were found"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mContextHubRetryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mContextHubRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mIsListening:Z

    return p0
.end method

.method public setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mController:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V

    return-void
.end method

.method public startListening()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mIsListening:Z

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->startRecognizer()V

    return-void
.end method

.method public stopListening()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/16 v2, 0xc9

    invoke-direct {p0, v2, v1}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[B)V

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->mIsListening:Z

    return-void
.end method
