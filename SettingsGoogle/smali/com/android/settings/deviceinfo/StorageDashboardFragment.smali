.class public Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;,
        Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
        ">;>;",
        "Landroidx/preference/Preference$OnPreferenceClickListener;"
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAppsResult:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeUpSpacePreference:Landroidx/preference/Preference;

.field private mIsWorkProfile:Z

.field private mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

.field private mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field private mSecondaryUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

.field private final mStorageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

.field private mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$jv-kL4HiWg42oh81kM5Zj8W1VIU(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->lambda$setSecondaryUsersVisible$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mEuKa_dcdqC7wk-C0GJfx1HL-o8(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->lambda$onAttach$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMQxqIvMU-_MKx5rAo4rMty8Zok(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->lambda$setSecondaryUsersVisible$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$1;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)Lcom/android/settings/deviceinfo/storage/StorageEntry;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/StorageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method private initializePreference()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "free_up_space"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mFreeUpSpacePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private isQuotaSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onAttach$0(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi()V

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isDiskInfoUnsupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isUnmountable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isVolumeRecordMissed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->launchForgetMissingVolumeRecordFragment(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0412f3

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDiskId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/storage/DiskInitFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$setSecondaryUsersVisible$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    return p0
.end method

.method private static synthetic lambda$setSecondaryUsersVisible$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
    .locals 0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    return-object p0
.end method

.method private onReceivedSizes()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0338

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v5, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setUsedSize(J)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v3, v3, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setTotalSize(J)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v4, v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iget-wide v4, v4, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setTotalSize(J)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->onLoadFinished(Landroid/util/SparseArray;I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setSecondaryUsersVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private refreshUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setStorageEntries(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;->setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->setSecondaryUsersVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isMounted()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->isQuotaSupported()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->maybeSetLoading(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v3, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getVolumeInfo()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setVolume(Landroid/os/storage/VolumeInfo;)V

    :goto_0
    return-void
.end method

.method private setSecondaryUsersVisible(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda2;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda1;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setPreferenceGroupVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateSecondaryUserControllers(Ljava/util/List;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;

    invoke-interface {v1, p2}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;->handleResult(Landroid/util/SparseArray;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    new-instance v8, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    new-instance v6, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v6, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mIsWorkProfile:Z

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mPreferenceController:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mIsWorkProfile:Z

    invoke-static {p1, v1, v2}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getSecondaryUserControllers(Landroid/content/Context;Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSecondaryUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a48

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StorageDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500ed

    return p0
.end method

.method public getPrivateStorageInfo()Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-object p0
.end method

.method public getStorageResult()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    return-object p0
.end method

.method initializeOptionsMenu(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/deviceinfo/VolumeOptionMenuController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mOptionMenuController:Lcom/android/settings/deviceinfo/VolumeOptionMenuController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public maybeSetLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mIsWorkProfile:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserId:I

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;

    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageSelectionController:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->setOnItemSelectedListener(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;)V

    const-class p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageUsageProgressBarController:Lcom/android/settings/deviceinfo/storage/StorageUsageProgressBarPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->maybeInitializeVolume(Landroid/os/storage/StorageManager;Landroid/os/Bundle;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getDefaultInternalStorageEntry(Landroid/content/Context;)Lcom/android/settings/deviceinfo/storage/StorageEntry;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/settings/deviceinfo/storage/StorageEntry;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    goto :goto_1

    :cond_1
    const-string v1, "selected_storage_entry_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializePreference()V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->initializeOptionsMenu(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageEntry;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v4, v1}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;-><init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onReceivedSizes()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mFreeUpSpacePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->getMetricsCategory()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    const/16 p1, 0x348

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEntries:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getAllStorageEntries(Landroid/content/Context;Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->refreshUi()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mSelectedStorageEntry:Lcom/android/settings/deviceinfo/storage/StorageEntry;

    const-string v1, "selected_storage_entry_key"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method public setPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mStorageInfo:Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    return-void
.end method

.method public setStorageResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->mAppsResult:Landroid/util/SparseArray;

    return-void
.end method
