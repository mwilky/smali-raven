.class public Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "LocationTimeZoneDetectionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "location_time_zone_detection"


# instance fields
.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mTimeManager:Landroid/app/time/TimeManager;

.field private mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location_time_zone_detection"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v0, Landroid/app/time/TimeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeManager;

    iput-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p1}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeZoneCapabilitiesAndConfig:Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    return-object p0
.end method

.method private refreshUi()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3

    const/16 v1, 0x14

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x1e

    if-eq p0, v1, :cond_2

    const/16 v1, 0x28

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown capability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->getTimeZoneCapabilitiesAndConfig(Z)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities;->getConfigureGeoDetectionEnabledCapability()I

    move-result v1

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const v0, 0x7f040ba9

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    const v0, 0x7f040ba7

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f040b80

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f040ba2

    goto :goto_0

    :cond_3
    const v0, 0x7f040ba8

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0x28

    if-ne v1, p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected configureGeoDetectionEnabledCapability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->refreshUi()V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {v1, v0, p0}, Landroid/app/time/TimeManager;->addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    invoke-direct {p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->refreshUi()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {v0, p0}, Landroid/app/time/TimeManager;->removeTimeZoneDetectorListener(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/android/settings/datetime/LocationToggleDisabledDialogFragment;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datetime/LocationToggleDisabledDialogFragment;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "location_time_zone_detection"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    invoke-virtual {p0, p1}, Landroid/app/time/TimeManager;->updateTimeZoneConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    return p0
.end method

.method setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
