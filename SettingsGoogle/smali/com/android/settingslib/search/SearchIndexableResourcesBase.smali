.class public Lcom/android/settingslib/search/SearchIndexableResourcesBase;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/search/SearchIndexableResources;


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settingslib/search/SearchIndexableData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/AllInOneTetherSettings;

    sget-object v2, Lcom/android/settings/AllInOneTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/LegalSettings;

    sget-object v2, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/TetherSettings;

    sget-object v2, Lcom/android/settings/TetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/accounts/AccountDashboardFragment;

    sget-object v2, Lcom/android/settings/accounts/AccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    sget-object v2, Lcom/android/settings/accounts/ManagedProfileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/AppDashboardFragment;

    sget-object v2, Lcom/android/settings/applications/AppDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/assist/ManageAssist;

    sget-object v2, Lcom/android/settings/applications/assist/ManageAssist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    sget-object v2, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    sget-object v2, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/backup/BackupSettingsFragment;

    sget-object v2, Lcom/android/settings/backup/BackupSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/backup/PrivacySettings;

    sget-object v2, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/backup/UserBackupSettingsActivity;

    sget-object v2, Lcom/android/settings/backup/UserBackupSettingsActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;

    sget-object v2, Lcom/android/settings/biometrics/combination/CombinedBiometricSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/biometrics/face/FaceSettings;

    sget-object v2, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datausage/BillingCycleSettings;

    sget-object v2, Lcom/android/settings/datausage/BillingCycleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    sget-object v2, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;

    sget-object v2, Lcom/android/settings/datausage/UnrestrictedDataAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datetime/DateTimeSettings;

    sget-object v2, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    sget-object v2, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    sget-object v2, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/WirelessDebuggingFragment;

    sget-object v2, Lcom/android/settings/development/WirelessDebuggingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;

    sget-object v2, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;

    sget-object v2, Lcom/android/settings/development/graphicsdriver/GraphicsDriverDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;

    sget-object v2, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/development/transcode/TranscodeSettingsFragment;

    sget-object v2, Lcom/android/settings/development/transcode/TranscodeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    sget-object v2, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    sget-object v2, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    sget-object v2, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFragment;

    sget-object v2, Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/ColorModePreferenceFragment;

    sget-object v2, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;

    sget-object v2, Lcom/android/settings/display/SmartAutoRotatePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;

    sget-object v2, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/dream/DreamSettings;

    sget-object v2, Lcom/android/settings/dream/DreamSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/emergency/EmergencyDashboardFragment;

    sget-object v2, Lcom/android/settings/emergency/EmergencyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/emergency/EmergencyGestureSettings;

    sget-object v2, Lcom/android/settings/emergency/EmergencyGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    sget-object v2, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/AssistGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/AssistGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    sget-object v2, Lcom/android/settings/gestures/DoubleTapPowerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    sget-object v2, Lcom/android/settings/gestures/DoubleTapScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/DoubleTwistGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/GestureSettings;

    sget-object v2, Lcom/android/settings/gestures/GestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/PickupGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/PickupGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/PowerMenuSettings;

    sget-object v2, Lcom/android/settings/gestures/PowerMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/PreventRingingGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/PreventRingingGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    sget-object v2, Lcom/android/settings/gestures/SwipeToNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/gestures/TapScreenGestureSettings;

    sget-object v2, Lcom/android/settings/gestures/TapScreenGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    sget-object v2, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    sget-object v2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    sget-object v2, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/language/LanguageAndInputSettings;

    sget-object v2, Lcom/android/settings/language/LanguageAndInputSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    sget-object v2, Lcom/android/settings/localepicker/LocaleListEditor;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/location/LocationSettings;

    sget-object v2, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;

    sget-object v2, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/network/AdaptiveConnectivitySettings;

    sget-object v2, Lcom/android/settings/network/AdaptiveConnectivitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/network/NetworkDashboardFragment;

    sget-object v2, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/network/NetworkProviderSettings;

    sget-object v2, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    sget-object v2, Lcom/android/settings/nfc/PaymentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/BubbleNotificationSettings;

    sget-object v2, Lcom/android/settings/notification/BubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    sget-object v2, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    sget-object v2, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/SoundSettings;

    sget-object v2, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/SoundWorkSettings;

    sget-object v2, Lcom/android/settings/notification/SoundWorkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;

    sget-object v2, Lcom/android/settings/notification/app/AppBubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenAccessSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeBypassingAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeCallsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeCallsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeConversationsSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeConversationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeMessagesSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeMessagesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModePeopleSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModePeopleSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings;

    sget-object v2, Lcom/android/settings/notification/zen/ZenModeSoundVibrationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    sget-object v2, Lcom/android/settings/print/PrintSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    sget-object v2, Lcom/android/settings/privacy/PrivacyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/CredentialManagementAppFragment;

    sget-object v2, Lcom/android/settings/security/CredentialManagementAppFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/EncryptionAndCredential;

    sget-object v2, Lcom/android/settings/security/EncryptionAndCredential;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/InstallCertificateFromStorage;

    sget-object v2, Lcom/android/settings/security/InstallCertificateFromStorage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/LockscreenDashboardFragment;

    sget-object v2, Lcom/android/settings/security/LockscreenDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/ScreenPinningSettings;

    sget-object v2, Lcom/android/settings/security/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/SecuritySettings;

    sget-object v2, Lcom/android/settings/security/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    sget-object v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/security/trustagent/TrustAgentSettings;

    sget-object v2, Lcom/android/settings/security/trustagent/TrustAgentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/sound/MediaControlsSettings;

    sget-object v2, Lcom/android/settings/sound/MediaControlsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/support/SupportDashboardActivity;

    sget-object v2, Lcom/android/settings/support/SupportDashboardActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/system/SystemDashboardFragment;

    sget-object v2, Lcom/android/settings/system/SystemDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object v2, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    sget-object v2, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/users/UserSettings;

    sget-object v2, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    sget-object v2, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    sget-object v2, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    sget-object v2, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/AwareDisplaySettings;

    sget-object v2, Lcom/google/android/settings/aware/AwareDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/AwareSettings;

    sget-object v2, Lcom/google/android/settings/aware/AwareSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/SilenceGestureSettings;

    sget-object v2, Lcom/google/android/settings/aware/SilenceGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/SkipGestureSettings;

    sget-object v2, Lcom/google/android/settings/aware/SkipGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/TapGestureSettings;

    sget-object v2, Lcom/google/android/settings/aware/TapGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/aware/WakeScreenGestureSettings;

    sget-object v2, Lcom/google/android/settings/aware/WakeScreenGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/gamemode/GameModeSettings;

    sget-object v2, Lcom/google/android/settings/gamemode/GameModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/games/GameSettings;

    sget-object v2, Lcom/google/android/settings/games/GameSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/gestures/columbus/ColumbusSettings;

    sget-object v2, Lcom/google/android/settings/gestures/columbus/ColumbusSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/security/SecurityAdvancedSettings;

    sget-object v2, Lcom/google/android/settings/security/SecurityAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableData;

    const-class v1, Lcom/google/android/settings/security/SecurityHubDashboard;

    sget-object v2, Lcom/google/android/settings/security/SecurityHubDashboard;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/search/SearchIndexableData;-><init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V

    return-void
.end method


# virtual methods
.method public addIndex(Lcom/android/settingslib/search/SearchIndexableData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/search/SearchIndexableData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    return-object p0
.end method
