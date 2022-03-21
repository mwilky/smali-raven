.class public Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HapticsErrorInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoIcon:Landroid/view/View;

.field private mPreference:Landroidx/preference/Preference;

.field private mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController$1;

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController$1;-><init>(Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

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

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
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

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsErrorInfoPreferenceController;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
