.class public final Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;
.super Ljava/lang/Object;
.source "GestureSensorImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$2;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;->onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :goto_0
    return-void
.end method
