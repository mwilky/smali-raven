.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $bytes:[B

.field public final synthetic $messageType:I

.field public final synthetic $onFail:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(I[BLcom/google/android/systemui/columbus/sensors/CHREGestureSensor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$bytes:[B

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onFail:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$bytes:[B

    const-wide v2, 0x476f6f676c001019L    # 1.3057659520462483E36

    invoke-static {v2, v3, v0, v1}, Landroid/hardware/location/NanoAppMessage;->createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->contextHubClient:Landroid/hardware/location/ContextHubClient;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/location/ContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    const-string v1, "Unable to send message "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to nanoapp, error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/GestureSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onFail:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$sendMessageToNanoApp$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2
    return-void
.end method
