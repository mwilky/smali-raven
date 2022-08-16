.class public final Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;
.super Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.source "BiometricDisplayListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SideFingerprint"
.end annotation


# instance fields
.field public final properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SideFingerprint(properties="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
