.class public Lcom/android/settings/backup/BackupSettingsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackupSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mBackupSettingsIntent:Landroid/content/Intent;

.field private mBackupSettingsSummary:Ljava/lang/String;

.field private mBackupSettingsTitle:Ljava/lang/CharSequence;

.field private mManufacturerIntent:Landroid/content/Intent;

.field private mManufacturerLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelForBackupSettings()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getSummaryForBackupSettings()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentProvidedByManufacturer()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getLabelProvidedByManufacturer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "backup_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "manufacturer_backup"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mBackupSettingsSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/backup/BackupSettingsPreferenceController;->mManufacturerLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
