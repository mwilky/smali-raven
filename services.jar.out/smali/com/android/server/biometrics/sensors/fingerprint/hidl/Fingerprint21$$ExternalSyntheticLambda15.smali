.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$2:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->$r8$lambda$fgnvyhyBwAhjbRIBs0gb-TAIk2w(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V

    return-void
.end method
