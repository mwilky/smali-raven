.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

.field public final synthetic f$1:Landroid/hardware/fingerprint/IFingerprintStateListener;

.field public final synthetic f$2:Landroid/content/pm/UserInfo;

.field public final synthetic f$3:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/fingerprint/IFingerprintStateListener;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/UserInfo;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/fingerprint/IFingerprintStateListener;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->lambda$broadcastCurrentEnrollmentState$0$FingerprintService(Landroid/hardware/fingerprint/IFingerprintStateListener;Landroid/content/pm/UserInfo;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Z)V

    return-void
.end method
