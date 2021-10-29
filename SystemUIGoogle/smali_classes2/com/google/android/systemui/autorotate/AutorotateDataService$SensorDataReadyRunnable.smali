.class Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;
.super Ljava/lang/Object;
.source "AutorotateDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/autorotate/AutorotateDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorDataReadyRunnable"
.end annotation


# instance fields
.field private mRotation:I

.field private mRotationTimestampMillis:J

.field final synthetic this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    iput-wide p3, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotationTimestampMillis:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v1}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$100(Lcom/google/android/systemui/autorotate/AutorotateDataService;)[Lcom/google/android/systemui/autorotate/SensorData;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/autorotate/DataLogger;->setDeviceRotatedData([Lcom/google/android/systemui/autorotate/SensorData;I)V

    iget-object v0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->this$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static {v0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->access$200(Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/autorotate/DataLogger;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotationTimestampMillis:J

    iget p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$SensorDataReadyRunnable;->mRotation:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/systemui/autorotate/DataLogger;->pushDeviceRotatedEvent(JII)V

    return-void
.end method
