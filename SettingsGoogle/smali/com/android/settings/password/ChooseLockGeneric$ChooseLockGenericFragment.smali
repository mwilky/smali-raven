.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# static fields
.field static final CHOOSE_LOCK_BEFORE_BIOMETRIC_REQUEST:I = 0x67

.field static final CHOOSE_LOCK_REQUEST:I = 0x66

.field static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field static final ENABLE_ENCRYPTION_REQUEST:I = 0x65

.field static final SKIP_FINGERPRINT_REQUEST:I = 0x68


# instance fields
.field private mCallerAppName:Ljava/lang/String;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected mForBiometrics:Z

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFace:Z

.field protected mForFingerprint:Z

.field private mIsCallingAppAdmin:Z

.field private mIsManagedProfile:Z

.field private mIsSetNewPassword:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private mOnlyEnforceDevicePasswordRequirement:Z

.field private mPasswordConfirmed:Z

.field private mRequestGatekeeperPasswordHandle:Z

.field private mRequestedMinComplexity:I

.field private mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mUnificationProfileId:I

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mWaitingForConfirmation:Z


# direct methods
.method public static synthetic $r8$lambda$TSssExb5DAY9k9sf4WYceKSY4qw(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->lambda$addHeaderView$0(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private disableUnusablePreferences()V
    .locals 9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    instance-of v7, v6, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v7, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v8, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v5

    if-nez v7, :cond_0

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFooterString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordComplexity()I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const v0, 0x7f041464

    goto :goto_0

    :cond_0
    const v0, 0x7f041461

    goto :goto_0

    :cond_1
    const v0, 0x7f041463

    goto :goto_0

    :cond_2
    const v0, 0x7f041462

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 1

    const/high16 v0, 0x80000

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(Lcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(I)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v2, 0x10000

    if-eq p0, v2, :cond_d

    const/high16 v2, 0x20000

    if-eq p0, v2, :cond_9

    const/high16 v2, 0x30000

    if-eq p0, v2, :cond_9

    const/high16 v2, 0x40000

    if-eq p0, v2, :cond_5

    const/high16 v2, 0x50000

    if-eq p0, v2, :cond_5

    const/high16 v2, 0x60000

    if-eq p0, v2, :cond_5

    const/high16 v2, 0x80000

    if-eq p0, v2, :cond_5

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const p0, 0x7f04145b

    return p0

    :cond_2
    if-eqz v0, :cond_3

    const p0, 0x7f04145c

    return p0

    :cond_3
    if-eqz v1, :cond_4

    const p0, 0x7f04145a

    return p0

    :cond_4
    const p0, 0x7f041459

    return p0

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const p0, 0x7f04144f

    return p0

    :cond_6
    if-eqz v0, :cond_7

    const p0, 0x7f041450

    return p0

    :cond_7
    if-eqz v1, :cond_8

    const p0, 0x7f04144e

    return p0

    :cond_8
    const p0, 0x7f04144d

    return p0

    :cond_9
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    const p0, 0x7f041457

    return p0

    :cond_a
    if-eqz v0, :cond_b

    const p0, 0x7f041458

    return p0

    :cond_b
    if-eqz v1, :cond_c

    const p0, 0x7f041456

    return p0

    :cond_c
    const p0, 0x7f041455

    return p0

    :cond_d
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    const p0, 0x7f041453

    return p0

    :cond_e
    if-eqz v0, :cond_f

    const p0, 0x7f041454

    return p0

    :cond_f
    if-eqz v1, :cond_10

    const p0, 0x7f041452

    return p0

    :cond_10
    const p0, 0x7f041451

    return p0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz p0, :cond_0

    const p0, 0x7f04145f

    goto :goto_0

    :cond_0
    const p0, 0x7f04145e

    :goto_0
    return p0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object p0, p0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$addHeaderView$0(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_0

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    const-string v1, "for_cred_req_boot"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const-string v0, "for_fingerprint"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    const-string v0, "for_face"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    const-string v0, "for_biometrics"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x67

    goto :goto_0

    :cond_0
    const/16 p2, 0x65

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    :goto_1
    return-void
.end method

.method private setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 0

    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 0

    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4

    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/password/ScreenLockType;->fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockGeneric$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    return v3

    :pswitch_1
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    sget-object v2, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    return v3

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered unknown unlock method to set: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockGenericFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "frp_warning_dialog"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateActivityTitle()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f040bf4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f040bf0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f040bf3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f040bef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f0406de

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 2

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f04110c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040958

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040959

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040957

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040920

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040921

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f04091f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040410

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f040411

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f04040f

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_7

    :cond_6
    const-string/jumbo v0, "unlock_skip_face"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_9

    :cond_8
    const-string/jumbo v0, "unlock_skip_biometrics"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 4

    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setHeaderView(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHeaderView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const v2, 0x7f040bec

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p0, :cond_0

    const p0, 0x7f04095b

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    if-eqz v1, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p0, :cond_2

    const p0, 0x7f040923

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    if-eqz v1, :cond_5

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p0, :cond_4

    const p0, 0x7f040413

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_6

    const p0, 0x7f040bf1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockRestrictedByAdmin()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f040beb

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    invoke-static {v0, v2, v3}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_0

    :cond_7
    const-string p0, ""

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    const v0, 0x7f1500d8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "lock_settings_footer"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsCallingAppAdmin:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getFooterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const v1, 0x7f0d033c

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setViewId(I)V

    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setViewId(I)V

    const-string/jumbo v0, "unlock_skip_face"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setViewId(I)V

    const-string/jumbo v0, "unlock_skip_biometrics"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setViewId(I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const v1, 0x7f0d033e

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setViewId(I)V

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const v0, 0x7f0d033d

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setViewId(I)V

    return-void
.end method

.method protected alwaysHideInsecureScreenLockTypes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 1

    const-string v0, "persistent_data_block"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getDataBlockSize()I

    move-result p0

    if-nez p0, :cond_0

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

.method protected getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p1, "skip_intro"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a25

    return p0
.end method

.method protected getInternalActivityClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    return-object p0
.end method

.method protected getLockManagedPasswordIntent(Lcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->createIntent(ZLcom/android/internal/widget/LockscreenCredential;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPasswordIntent(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordType(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordComplexity()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordRequirement(ILandroid/app/admin/PasswordMetrics;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFace(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFace(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForBiometrics(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    :cond_0
    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1b

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p3, :cond_0

    const-string p2, "password"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/LockscreenCredential;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x66

    if-eq p1, v3, :cond_9

    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x67

    if-ne p1, v3, :cond_5

    if-ne p2, v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricEnrollIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    :cond_5
    const/16 v3, 0x68

    if-ne p1, v3, :cond_7

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-ne p2, v1, :cond_6

    move p2, v2

    :cond_6
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    :cond_7
    const/16 p2, 0x1f5

    if-ne p1, p2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    :cond_9
    :goto_1
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_3

    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_c
    :goto_3
    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->canRunBeforeDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "Refusing to start because device is not provisioned"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    const-string v3, "confirm_credentials"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    instance-of v4, v0, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    const-string v7, "password"

    if-eqz v4, :cond_3

    xor-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    :cond_5
    :goto_3
    const-string v3, "request_gk_pw_handle"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    const-string v3, "for_fingerprint"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    const-string v3, "for_face"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFace:Z

    const-string v3, "for_biometrics"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForBiometrics:Z

    const-string v3, "requested_min_complexity"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string v3, "device_password_requirement_only"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const-string v3, "is_calling_app_admin"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsCallingAppAdmin:Z

    if-eqz v1, :cond_6

    const-string v3, "for_cred_req_boot"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_7

    const-string/jumbo v3, "unification_profile_credential"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const/16 v3, -0x2710

    const-string/jumbo v4, "unification_profile_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    :cond_7
    if-eqz p1, :cond_8

    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string/jumbo v3, "waiting_for_confirmation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v3, v4, v1, v7}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v3, v4, v7}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setAppRequestedMinComplexity(I)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setEnforceDevicePasswordRequirementOnly(Z)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUnificationProfileId:I

    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setProfileToUnify(I)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->alwaysHideInsecureScreenLockTypes()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "hide_insecure_options"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    move v3, v6

    goto :goto_6

    :cond_a
    :goto_5
    move v3, v5

    :goto_6
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->setHideInsecureScreenLockTypes(Z)Lcom/android/settings/password/ChooseLockGenericController$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController$Builder;->build()Lcom/android/settings/password/ChooseLockGenericController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockGenericController;->isComplexityProvidedByAdmin()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    const-string v1, "caller_app_name"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    move v5, v6

    :goto_8
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_d

    :cond_d
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    const v2, 0x7f04146c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsManagedProfile:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v5

    goto :goto_9

    :cond_e
    move v0, v6

    :goto_9
    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_f

    move v0, v5

    goto :goto_a

    :cond_f
    move v0, v6

    :goto_a
    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    iput-boolean v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_d

    :cond_11
    :goto_b
    iput-boolean v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p1, :cond_12

    goto :goto_c

    :cond_12
    move v5, v6

    :goto_c
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    :cond_13
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateActivityTitle()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo v0, "unlock_skip_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "unlock_skip_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "unlock_skip_biometrics"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getInternalActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/2addr v0, v1

    const-string v2, "confirm_credentials"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestedMinComplexity:I

    const-string v2, "requested_min_complexity"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const-string v2, "device_password_requirement_only"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mCallerAppName:Ljava/lang/String;

    const-string v2, "caller_app_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_3

    const-string v2, "password"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const/16 v0, 0x68

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string/jumbo v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string v0, "password"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method updatePreferencesOrFinish(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "ChooseLockGenericFragment"

    const-string v1, "Ignoring PASSWORD_TYPE_KEY because device is not file encrypted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences()V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method updateUnlockMethodAndFinish(IZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v1, "show_options_button"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "choose_lock_generic_extras"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mRequestGatekeeperPasswordHandle:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x67

    goto :goto_0

    :cond_1
    const/16 p1, 0x66

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to update password without confirming it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
