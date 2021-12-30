.class public abstract Lcom/android/settings/core/LiveDataController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LiveDataController.java"


# instance fields
.field private mData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPreference:Landroidx/preference/Preference;

.field protected mSummary:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$WmIsrWD3WSFeSh919w66ZNarnPg(Lcom/android/settings/core/LiveDataController;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/LiveDataController;->lambda$initLifeCycleOwner$0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEpdX-nMnLP9VI_qjeyU0y06M8w(Lcom/android/settings/core/LiveDataController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/LiveDataController;->lambda$initLifeCycleOwner$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/android/settings/core/LiveDataController;->mData:Landroidx/lifecycle/MutableLiveData;

    const p2, 0x7f04004e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/LiveDataController;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method

.method private synthetic lambda$initLifeCycleOwner$0(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/core/LiveDataController;->mSummary:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/core/LiveDataController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$initLifeCycleOwner$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/core/LiveDataController;->mData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/android/settings/core/LiveDataController;->getSummaryTextInBackground()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

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

    iput-object p1, p0, Lcom/android/settings/core/LiveDataController;->mPreference:Landroidx/preference/Preference;

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/LiveDataController;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected abstract getSummaryTextInBackground()Ljava/lang/CharSequence;
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public initLifeCycleOwner(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/core/LiveDataController;->mData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/core/LiveDataController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/core/LiveDataController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/core/LiveDataController;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lcom/android/settings/core/LiveDataController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/core/LiveDataController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/core/LiveDataController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
