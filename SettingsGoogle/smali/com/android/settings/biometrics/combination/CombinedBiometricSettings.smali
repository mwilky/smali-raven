.class public Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;
.super Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.source "CombinedBiometricSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics/combination/CombinedBiometricSearchIndexProvider;

    const v1, 0x7f1500d4

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/combination/CombinedBiometricSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_face_settings"

    return-object p0
.end method

.method public getFingerprintPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_fingerprint_settings"

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BiometricSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x756

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500d4

    return p0
.end method

.method public getUnlockPhonePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_settings_biometric_keyguard"

    return-object p0
.end method

.method public getUseInAppsPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "biometric_settings_biometric_app"

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;

    iget v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/combination/BiometricSettingsKeyguardPreferenceController;->setUserId(I)V

    const-class p1, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;

    iget p0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/biometrics/combination/BiometricSettingsAppPreferenceController;->setUserId(I)V

    return-void
.end method
