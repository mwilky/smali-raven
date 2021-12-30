.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field private mEnrollReason:I

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$201(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf5

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public setEnrollReason(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    return-void
.end method

.method protected startEnrollment()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    if-nez v1, :cond_0

    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "Null hardware auth token for enroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v1, 0x7f040937

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollReason:I

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;I)V

    return-void
.end method
