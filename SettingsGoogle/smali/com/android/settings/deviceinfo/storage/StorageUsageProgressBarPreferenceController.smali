.class public Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "StorageUsageProgressBarPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageProgressCtrl"


# instance fields
.field mIsUpdateStateFromSelectedStorageEntry:Z

.field private mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private final mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

.field mTotalBytes:J

.field private mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field mUsedBytes:J


# direct methods
.method public static synthetic $r8$lambda$NrBFxm8eOKVxarB1OwAuK64l5Xg(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->lambda$getStorageStatsAndUpdateUi$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$W3uKY5iPaR4MIhhwJXbbkzR95pc(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->lambda$getStorageStatsAndUpdateUi$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    return-void
.end method

.method private getStorageStatsAndUpdateUi()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private getStorageSummary(IJ)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, p3, v2

    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p2, p3, v1

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getStorageStatsAndUpdateUi$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$getStorageStatsAndUpdateUi$1()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    goto :goto_0

    :cond_1
    const-string v0, "StorageProgressCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounted public storage has null root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

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

    check-cast p1, Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

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

.method public setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->getStorageStatsAndUpdateUi()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mIsUpdateStateFromSelectedStorageEntry:Z

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    const v0, 0x7f041333

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->getStorageSummary(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    const v0, 0x7f041329

    iget-wide v1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->getStorageSummary(IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setTotalSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsageProgressBarPreference:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mUsedBytes:J

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->mTotalBytes:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
