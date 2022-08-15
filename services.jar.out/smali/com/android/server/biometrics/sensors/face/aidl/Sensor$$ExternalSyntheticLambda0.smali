.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    return-void
.end method


# virtual methods
.method public final getCurrentUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->$r8$lambda$0SD2XYhKZnHDlcZsqucTXrCGpvo(Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)I

    move-result p0

    return p0
.end method
