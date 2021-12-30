.class public Lcom/google/android/settings/security/PrimarySecurityWarningPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrimarySecurityWarningPreferenceController.java"


# instance fields
.field private mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/settings/security/SecurityContentManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/security/SecurityContentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/security/PrimarySecurityWarningPreferenceController;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x75c

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/security/PrimarySecurityWarningPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    check-cast p1, Lcom/google/android/settings/security/SecurityWarningPreference;

    iget-object v0, p0, Lcom/google/android/settings/security/PrimarySecurityWarningPreferenceController;->mSecurityContentManager:Lcom/google/android/settings/security/SecurityContentManager;

    invoke-virtual {v0}, Lcom/google/android/settings/security/SecurityContentManager;->getPrimarySecurityWarning()Lcom/google/android/settings/security/SecurityWarning;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/security/PrimarySecurityWarningPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/settings/security/SecurityWarningPreference;->setSecurityWarning(Lcom/google/android/settings/security/SecurityWarning;Lcom/android/settings/SettingsPreferenceFragment;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
