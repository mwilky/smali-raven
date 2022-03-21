.class public Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "StorageSelectionPreferenceController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;,
        Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;
    }
.end annotation


# instance fields
.field private mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

.field mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

.field mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

.field private final mStorageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;-><init>(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

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

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->setAdapter(Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

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

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-interface {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;->onItemSelected(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStorageEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
