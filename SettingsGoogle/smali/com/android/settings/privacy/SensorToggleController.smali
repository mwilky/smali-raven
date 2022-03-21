.class public abstract Lcom/android/settings/privacy/SensorToggleController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SensorToggleController.java"


# instance fields
.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field protected final mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# direct methods
.method public static synthetic $r8$lambda$lOQAaRp7mNyiBqL4JmZ7m-6RCjM(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/privacy/SensorToggleController;->lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/PreferenceScreen;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getRestriction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    new-instance v2, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;)V

    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(ILcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Ljava/util/concurrent/Executor;)V

    return-void
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

.method protected getRestriction()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSensor()I
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f040d0c

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->setSensorBlockedForProfileGroup(IIZ)V

    return v1
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
