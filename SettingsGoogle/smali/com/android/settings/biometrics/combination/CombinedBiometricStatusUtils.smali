.class public Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;
.super Ljava/lang/Object;
.source "CombinedBiometricStatusUtils.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFaceManager:Landroid/hardware/face/FaceManager;

.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    iput p2, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mUserId:I

    return-void
.end method

.method private hasEnrolledFace()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasEnrolledFingerprints()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public getProfileSettingsClassName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/Settings$CombinedBiometricProfileSettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/Settings$CombinedBiometricSettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->hasEnrolledFace()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-le v0, v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f0411c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f0411c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f04120f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f120049

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f0411c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->hasEnrolledFace()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFaceHardware(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
