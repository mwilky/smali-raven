.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureConfigurationChanged(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$1;->this$0:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;

    invoke-direct {v0}, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;-><init>()V

    iget p1, p1, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensitivity:F

    iput p1, v0, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$SensitivityUpdate;->sensitivity:F

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p1

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;->sendMessageToNanoApp(I[BLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
