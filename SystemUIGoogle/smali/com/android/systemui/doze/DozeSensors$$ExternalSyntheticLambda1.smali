.class public final synthetic Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeSensors;

    return-void
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->$r8$lambda$3KOYE8Q2-MlL-D0NdFYJt2eufCQ(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    return-void
.end method
