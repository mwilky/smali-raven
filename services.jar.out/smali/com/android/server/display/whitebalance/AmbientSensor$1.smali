.class public Lcom/android/server/display/whitebalance/AmbientSensor$1;
.super Ljava/lang/Object;
.source "AmbientSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/whitebalance/AmbientSensor;


# direct methods
.method public constructor <init>(Lcom/android/server/display/whitebalance/AmbientSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$1;->this$0:Lcom/android/server/display/whitebalance/AmbientSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object p0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$1;->this$0:Lcom/android/server/display/whitebalance/AmbientSensor;

    invoke-static {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->-$$Nest$mhandleNewEvent(Lcom/android/server/display/whitebalance/AmbientSensor;F)V

    return-void
.end method
