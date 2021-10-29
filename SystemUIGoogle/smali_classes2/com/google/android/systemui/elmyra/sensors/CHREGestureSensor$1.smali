.class Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;
.super Landroid/hardware/location/ContextHubClientCallback;
.source "CHREGestureSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-direct {p0}, Landroid/hardware/location/ContextHubClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHubReset(Landroid/hardware/location/ContextHubClient;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HubReset: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->getAttachedHub()Landroid/hardware/location/ContextHubInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Elmyra/GestureSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    const-string p1, "Elmyra/GestureSensor"

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    const-wide v2, 0x476f6f676c00100eL    # 1.3057659520462467E36

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$200(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->storeChassisConfiguration(Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$300(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result v0

    iput v0, p2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->sensitivitySetting:F

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$200(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onSnapshotReceived(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;

    move-result-object p2

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;

    iget-boolean v1, p2, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hapticConsumed:Z

    iget-boolean p2, p2, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureDetected;->hostSuspended:Z

    invoke-direct {v0, v1, p2}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;-><init>(ZZ)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$200(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureProgress;->parseFrom([B)Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureProgress;

    move-result-object p2

    iget p2, p2, Lcom/google/android/systemui/elmyra/proto/nano/ContextHubMessages$GestureProgress;->progress:F

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$200(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->onGestureProgress(F)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$000(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;->access$100(Lcom/google/android/systemui/elmyra/sensors/CHREGestureSensor;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Invalid protocol buffer"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V
    .locals 0

    const-wide p0, 0x476f6f676c00100eL    # 1.3057659520462467E36

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Nanoapp aborted, code: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Elmyra/GestureSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
