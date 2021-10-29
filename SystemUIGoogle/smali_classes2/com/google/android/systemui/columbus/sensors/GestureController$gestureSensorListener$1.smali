.class public final Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-static {v0, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController;->access$isThrottled(Lcom/google/android/systemui/columbus/sensors/GestureController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Gesture "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " throttled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/GestureControl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->access$getGestureListener$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;->onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :goto_0
    return-void
.end method
