.class final Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;
.super Ljava/lang/Object;
.source "GestureSensorImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl$GestureSensorEventListener$onSensorChanged$1$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;-><init>(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->reportGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method
