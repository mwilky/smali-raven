.class public final synthetic Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public final synthetic f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

.field public final synthetic f$2:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iput-object p3, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/SensorManager$DynamicSensorCallback;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/AsyncSensorManager$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/util/sensors/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method