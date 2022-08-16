.class public final Lcom/android/settings/safetycenter/LockScreenSafetySource;
.super Ljava/lang/Object;
.source "LockScreenSafetySource.java"


# direct methods
.method private static createGearMenuIconAction(Landroid/content/Context;Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;)Landroid/safetycenter/SafetySourceStatus$IconAction;
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->shouldShowGearMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/safetycenter/SafetySourceStatus$IconAction;

    const/16 v1, 0x64

    const/16 v2, 0x77d

    invoke-virtual {p1, v2}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getLaunchScreenLockSettingsIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/safetycenter/SafetySourceStatus$IconAction;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static createNoScreenLockIssue(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceIssue;
    .locals 7

    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v1, 0x7f040eb5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetScreenLockAction"

    invoke-direct {v0, v2, v1, p1}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object p1

    new-instance v6, Landroid/safetycenter/SafetySourceIssue$Builder;

    const v0, 0x7f040eb7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f040eb6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "NoScreenLockIssue"

    const/16 v4, 0x12c

    const-string v5, "NoScreenLockIssueType"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    const/16 p0, 0x64

    invoke-virtual {v6, p0}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/safetycenter/SafetySourceIssue$Builder;->build()Landroid/safetycenter/SafetySourceIssue;

    move-result-object p0

    return-object p0
.end method

.method private static createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static onLockScreenChange(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/safetycenter/SafetyEvent$Builder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->setSafetySourceData(Landroid/content/Context;Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;Landroid/safetycenter/SafetyEvent;)V

    invoke-static {p0}, Lcom/android/settings/safetycenter/BiometricsSafetySource;->onBiometricsChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static setSafetySourceData(Landroid/content/Context;Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;Landroid/safetycenter/SafetyEvent;)V
    .locals 8

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    const/16 v2, 0x77d

    invoke-virtual {p1, v2}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getLaunchChooseLockGenericFragmentIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->createGearMenuIconAction(Landroid/content/Context;Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;)Landroid/safetycenter/SafetySourceStatus$IconAction;

    move-result-object v3

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->isPasswordQualityManaged(ILcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->isLockPatternSecure()Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const/16 v4, 0xc8

    goto :goto_0

    :cond_2
    const/16 v4, 0x12c

    goto :goto_0

    :cond_3
    const/16 v4, 0x64

    :goto_0
    new-instance v5, Landroid/safetycenter/SafetySourceStatus$Builder;

    const v6, 0x7f041567

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getSummary(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, p1, v4}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v2}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/safetycenter/SafetySourceStatus$Builder;->setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/safetycenter/SafetySourceStatus$Builder;->setIconAction(Landroid/safetycenter/SafetySourceStatus$IconAction;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object p1

    new-instance v3, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {v3}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {v3, p1}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object p1

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    invoke-static {p0, v2}, Lcom/android/settings/safetycenter/LockScreenSafetySource;->createNoScreenLockIssue(Landroid/content/Context;Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceIssue;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/safetycenter/SafetySourceData$Builder;->addIssue(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceData$Builder;

    :cond_4
    invoke-virtual {p1}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    const-string v1, "AndroidLockScreen"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method
