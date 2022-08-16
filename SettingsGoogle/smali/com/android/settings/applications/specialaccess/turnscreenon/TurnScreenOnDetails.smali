.class public Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "TurnScreenOnDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getPreferenceSummary(Landroid/app/AppOpsManager;ILjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->isTurnScreenOnAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0402a3

    goto :goto_0

    :cond_0
    const p0, 0x7f0402a4

    :goto_0
    return p0
.end method

.method static isTurnScreenOnAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x782

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const p1, 0x7f150105

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    const v0, 0x7f04022f

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->setTurnScreenOnAppOp(ILjava/lang/String;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->isTurnScreenOnAllowed(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method setTurnScreenOnAppOp(ILjava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/turnscreenon/TurnScreenOnDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method
