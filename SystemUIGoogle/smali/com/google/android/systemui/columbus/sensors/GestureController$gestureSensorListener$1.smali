.class public final Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Columbus/GestureControl"

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Gesture "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " throttled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-virtual {v3}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Lcom/google/android/systemui/columbus/gates/Gate;

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    const-wide/16 v3, 0x1

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    const-string p0, "Gesture blocked by "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-ne p2, v0, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p0, p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :goto_2
    return-void
.end method
