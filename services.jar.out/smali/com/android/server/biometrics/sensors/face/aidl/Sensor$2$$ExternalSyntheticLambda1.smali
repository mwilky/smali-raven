.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    return-void
.end method


# virtual methods
.method public final onUserStarted(ILjava/lang/Object;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-object v5, p2

    check-cast v5, Landroid/hardware/biometrics/face/ISession;

    move v4, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->$r8$lambda$53vLAmUI9iQLVp29LXVuBmz3ado(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ILandroid/hardware/biometrics/face/ISession;I)V

    return-void
.end method
