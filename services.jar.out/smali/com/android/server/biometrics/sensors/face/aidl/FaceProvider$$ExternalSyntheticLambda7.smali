.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$1:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->$r8$lambda$SA9CJy00QUcljW_dkwH04fhTdH4(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    return-void
.end method
