.class public final Lcom/android/settings/safetycenter/BiometricsSafetySource;
.super Ljava/lang/Object;
.source "BiometricsSafetySource.java"


# direct methods
.method private static createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static onBiometricsChanged(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/safetycenter/SafetyEvent$Builder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setSafetySourceData(Landroid/content/Context;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

.method private static setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLandroid/safetycenter/SafetyEvent;)V
    .locals 1

    invoke-static {p0, p3}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const/16 p5, 0xc8

    goto :goto_0

    :cond_0
    const/16 p5, 0x64

    :goto_0
    new-instance v0, Landroid/safetycenter/SafetySourceStatus$Builder;

    invoke-direct {v0, p1, p2, p5}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, p3}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/safetycenter/SafetySourceStatus$Builder;->setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object p1

    new-instance p2, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {p2}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {p2, p1}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object p2

    const-string p3, "AndroidBiometrics"

    invoke-virtual {p2, p0, p3, p1, p6}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

.method public static setSafetySourceData(Landroid/content/Context;Landroid/safetycenter/SafetyEvent;)V
    .locals 13

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settings/biometrics/BiometricNavigationUtils;

    invoke-direct {v1, v0}, Lcom/android/settings/biometrics/BiometricNavigationUtils;-><init>(I)V

    new-instance v2, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->isAvailable()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const v3, 0x7f0411ca

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->getSettingsClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, p0, v3, v0, v6}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    if-nez v0, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v5

    :goto_0
    invoke-virtual {v2}, Lcom/android/settings/biometrics/combination/CombinedBiometricStatusUtils;->hasEnrolled()Z

    move-result v11

    move-object v6, p0

    move-object v12, p1

    invoke-static/range {v6 .. v12}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/face/FaceStatusUtils;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/biometrics/face/FaceStatusUtils;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;I)V

    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const v2, 0x7f041211

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->getSettingsClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, p0, v2, v0, v6}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    if-nez v0, :cond_3

    move v10, v4

    goto :goto_1

    :cond_3
    move v10, v5

    :goto_1
    invoke-virtual {v3}, Lcom/android/settings/biometrics/face/FaceStatusUtils;->hasEnrolled()Z

    move-result v11

    move-object v6, p0

    move-object v12, p1

    invoke-static/range {v6 .. v12}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLandroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const v2, 0x7f04124a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getSettingsClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, p0, v2, v0, v6}, Lcom/android/settings/biometrics/BiometricNavigationUtils;->getBiometricSettingsIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    if-nez v0, :cond_5

    move v10, v4

    goto :goto_2

    :cond_5
    move v10, v5

    :goto_2
    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->hasEnrolled()Z

    move-result v11

    move-object v6, p0

    move-object v12, p1

    invoke-static/range {v6 .. v12}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->setBiometricSafetySourceData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZLandroid/safetycenter/SafetyEvent;)V

    :cond_6
    return-void
.end method
