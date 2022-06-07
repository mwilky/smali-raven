.class public Lcom/android/settings/notification/zen/ZenCustomRuleCallsSettings;
.super Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleCallsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string/jumbo v3, "zen_mode_calls"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleRepeatCallersPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v4, "zen_mode_repeat_callers"

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/android/settings/notification/zen/ZenRuleRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleStarredContactsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x3

    const-string/jumbo v4, "zen_mode_starred_contacts_callers"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/zen/ZenRuleStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->getHelpResource()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64b

    return p0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_settings_category_calls"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150124

    return p0
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onResume()V

    return-void
.end method

.method public bridge synthetic onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    return-void
.end method

.method public updatePreferences()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->updatePreferences()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const p0, 0x7f04181d

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
