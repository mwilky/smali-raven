.class public Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DefaultUsbConfigurationPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_usb_configuration"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
