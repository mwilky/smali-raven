.class public Lcom/google/android/settings/security/SecurityAdvancedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecurityAdvancedSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/settings/security/SecurityAdvancedSettings$1;

    const v1, 0x7f1500ca

    invoke-direct {v0, v1}, Lcom/google/android/settings/security/SecurityAdvancedSettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/security/SecurityAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/settings/security/SecurityAdvancedSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;

    const-string v2, "securityhub_enterprise_privacy"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/EnterprisePrivacyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;

    const-string v2, "securityhub_financed_privacy"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/FinancedPrivacyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;

    const-string v2, "securityhub_manage_trust_agents"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/trustagent/ManageTrustAgentsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/ScreenPinningPreferenceController;

    const-string v2, "securityhub_screen_pinning_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/ScreenPinningPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/SimLockPreferenceController;

    const-string v2, "securityhub_sim_lock_settings"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/EncryptionStatusPreferenceController;

    const-string v2, "securityhub_encryption_and_credential"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/EncryptionStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;

    const-string v3, "securityhub_unlock_set_or_change_profile"

    invoke-direct {v2, p0, p2, v3}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/security/LockUnificationPreferenceController;

    const-string v3, "securityhub_unification"

    invoke-direct {v2, p0, p2, v3}, Lcom/android/settings/security/LockUnificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;

    const-string v2, "securityhub_visiblepattern_profile"

    invoke-direct {p2, p0, p1, v2}, Lcom/android/settings/security/VisiblePatternProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;

    const-string v2, "securityhub_face_settings_profile"

    invoke-direct {p2, p0, v2, p1}, Lcom/android/settings/biometrics/face/FaceProfileStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;

    const-string v2, "securityhub_fingerprint_settings_profile"

    invoke-direct {p2, p0, v2, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintProfileStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/settings/biometrics/combination/CombinedBiometricProfileStatusPreferenceController;

    const-string v2, "securityhub_biometric_settings_profile"

    invoke-direct {p2, p0, v2, p1}, Lcom/android/settings/biometrics/combination/CombinedBiometricProfileStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string p2, "security_category_profile"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/settings/security/SecurityAdvancedSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.settings.category.ia.advanced_security"

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecurityAdvancedSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x75d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500ca

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->handleActivityResult(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/LockUnificationPreferenceController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/security/LockUnificationPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
