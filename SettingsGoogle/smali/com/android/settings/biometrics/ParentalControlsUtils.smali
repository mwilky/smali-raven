.class public Lcom/android/settings/biometrics/ParentalControlsUtils;
.super Ljava/lang/Object;
.source "ParentalControlsUtils.java"


# direct methods
.method public static parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->isTestModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ParentalControlsUtils"

    const-string p1, "Requiring consent for test flow"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x0

    const-string v1, "disallow_biometric"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0

    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p0, p1, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequiredInternal(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method static parentConsentRequiredInternal(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    new-instance p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const-string v0, "disallow_biometric"

    invoke-direct {p1, p0, v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
