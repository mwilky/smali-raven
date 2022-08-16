.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;
.super Landroid/hardware/location/ContextHubClientCallback;
.source "CHREGestureSensor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;-><init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-direct {p0}, Landroid/hardware/location/ContextHubClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHubReset(Landroid/hardware/location/ContextHubClient;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubClient;->getAttachedHub()Landroid/hardware/location/ContextHubInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "HubReset: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/GestureSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onMessageFromNanoApp(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    const-string p1, "Columbus/GestureSensor"

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    const-wide v2, 0x476f6f676c001019L    # 1.3057659520462483E36

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v0

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_1

    const-string p0, "Unknown message type: "

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;-><init>()V

    invoke-static {v0, p2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;

    invoke-static {p0, p2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleNanoappEvents(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$NanoappEvents;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p2

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;-><init>()V

    invoke-static {v0, p2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;

    invoke-static {p0, p2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->access$handleGestureDetection(Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "Invalid protocol buffer"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onNanoAppAborted(Landroid/hardware/location/ContextHubClient;JI)V
    .locals 0

    const-wide p0, 0x476f6f676c001019L    # 1.3057659520462483E36

    cmp-long p0, p2, p0

    if-nez p0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Nanoapp aborted, code: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/GestureSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onNanoAppLoaded(Landroid/hardware/location/ContextHubClient;J)V
    .locals 2

    const-wide v0, 0x476f6f676c001019L    # 1.3057659520462483E36

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    iget-boolean p1, p1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->isListening:Z

    if-eqz p1, :cond_0

    const-string p1, "Columbus/GestureSensor"

    const-string p2, "Nanoapp loaded"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->updateScreenState()V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$contextHubClientCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->startRecognizer()V

    :cond_0
    return-void
.end method
