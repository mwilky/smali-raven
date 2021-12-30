.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAddGuest:Lcom/android/settingslib/RestrictedPreference;

.field mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGuestUserAutoCreated:Z

.field private mHandler:Landroid/os/Handler;

.field mMePreference:Lcom/android/settings/users/UserPreference;

.field private mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

.field private mPendingUserIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingUserName:Ljava/lang/CharSequence;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

.field mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mUserListCategory:Landroidx/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$Yd4oirlkhXSVP0MdHvI8P04nUKw(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$scheduleGuestCreation$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$gLY1vWU0eHjr6pXloapCtwaYNDM(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$2(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$grKq0Kf4T6YfU_UR5pV-aeqgMm4(Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h74fMdcmpMySzNcYOHoJr2GMQYk(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$1(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jvEoEDaugibf-Gkg_fkXHSMuqkw(Landroid/content/pm/UserInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->lambda$getRealUsersCount$6(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rc3Fz0exs-Ij_nNOSENhAtihXIE(Lcom/android/settings/users/UserSettings;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$3(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yP4PFoxuLyoVZjn1vaUuxEVHskM(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    const v1, 0x7f150100

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings$12;-><init>(I)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/settingslib/users/EditUserInfoController;

    const-string v1, "com.android.settings.files"

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/EditUserInfoController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/users/UserSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->onUserCreationFailed()V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object p0
.end method

.method private addUserNow(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0414f2

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0414f1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v0, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private buildAddUserDialog(I)Landroid/app/Dialog;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    const v6, 0x7f0414ec

    goto :goto_0

    :cond_0
    const v6, 0x7f040fb0

    :goto_0
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-instance v8, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual/range {v1 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildEditCurrentUserDialog()Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v4, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const v6, 0x7f040fb0

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, v3, v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V

    const/4 p0, 0x0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private canSwitchUserNow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    return-void

    :cond_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p0

    return-object p0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f041509

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object p0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getUserName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0414e8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method private hasLockscreenSecurity()Z
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method private hideUserCreatingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isCurrentUserGuest()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    return p0
.end method

.method private synthetic lambda$buildAddUserDialog$3(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method private synthetic lambda$buildAddUserDialog$4()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$1(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$2(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eq p4, p1, :cond_0

    new-instance p1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getRealUsersCount$6(Landroid/content/pm/UserInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->resetGuest()V

    return-void
.end method

.method private synthetic lambda$scheduleGuestCreation$5()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0414e8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v0, :cond_0

    const-string v0, "UserSettings"

    const-string v1, "Unable to automatically recreate guest user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private launchChooseLockscreen()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadProfile()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0409bb

    goto :goto_0

    :cond_0
    const v1, 0x7f0414e7

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onUserCreated(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private onUserCreationFailed()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0401c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    return-void
.end method

.method private openUserDetails(Landroid/content/pm/UserInfo;Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/android/settings/users/UserSettings;->getUserName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    invoke-virtual {p2, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private removeThisUser()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    const-string v1, "UserSettings"

    if-nez v0, :cond_0

    const-string p0, "Cannot remove current user when switching is disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/UserManager;->removeUserOrSetEphemeral(IZ)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to remove self user"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateAddGuest(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p2, p2, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const p2, 0x7f0414e8

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const p2, 0x7f0409be

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const p2, 0x7f0409b9

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateAddUser(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result p1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v3, 0x7f0414af

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getRealUsersCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method


# virtual methods
.method exitGuest()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e3

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x259

    return p0

    :pswitch_1
    const/16 p0, 0x258

    return p0

    :pswitch_2
    const/16 p0, 0x257

    return p0

    :pswitch_3
    const/16 p0, 0x256

    return p0

    :pswitch_4
    const/16 p0, 0x252

    return p0

    :cond_0
    const/16 p0, 0x253

    return p0

    :cond_1
    const/16 p0, 0x24f

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a3a

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x60

    return p0
.end method

.method getRealUsersCount()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda8;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040d72

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    new-instance v1, Lcom/android/settings/users/MultiUserSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/users/MultiUserSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150100

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11100ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v2, "user_settings_add_users_when_locked"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    new-instance v0, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    const-string v2, "multiuser_top_intro"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p1, :cond_2

    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {v1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const-string p1, "user"

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string p1, "user_me"

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v0, 0x7f0414bb

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    const-string p1, "guest_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "user_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    const v0, 0x7f0414b4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const v0, 0x7f0414f1

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v5}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const v0, 0x7f0414f2

    :try_start_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->buildEditCurrentUserDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0414e5

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0414e4

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0414e6

    new-instance v2, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0414f0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0414fc

    new-instance v2, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    const v3, 0x7f0414b3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary"

    const v3, 0x7f0414b2

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "title"

    const v4, 0x7f0414b1

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary"

    const v4, 0x7f0414b0

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f06028b

    const-string v0, "title"

    const-string v4, "summary"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const v0, 0x7f0414b9

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {p1, v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0414bd

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v5, "key_add_user_long_message_displayed"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const v5, 0x7f0414b6

    goto :goto_0

    :cond_2
    const v5, 0x7f0414b5

    :goto_0
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0414b8

    invoke-virtual {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v1, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0d05c1
        0x7f0d057b
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0414f8

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_remove_user"

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMultiUserSwitchChanged(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1

    :cond_2
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    :goto_1
    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0x6e4

    new-array v4, v2, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0414e8

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0401c1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return v1

    :cond_7
    return v2
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const-string v1, "removing_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method resetGuest()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    return-void
.end method

.method scheduleGuestCreation()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserInfoController;->startingActivityForResult()V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method updateUserList()V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-ne v10, v11, :cond_4

    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/settings/users/UserPreference;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v11, v10, v9, v12}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v10, v8}, Lcom/android/settings/users/UserSettings;->getUserName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v11, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v10, "user_guest"

    invoke-virtual {v11, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v10, :cond_5

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v11, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_7

    const v9, 0x7f0414bb

    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_3
    move-object v9, v11

    :goto_4
    if-nez v9, :cond_8

    goto/16 :goto_2

    :cond_8
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f041506

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_9
    const v10, 0x7f041505

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v10, :cond_a

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v6

    goto :goto_5

    :cond_a
    move v10, v5

    :goto_5
    invoke-virtual {v9, v10}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_c

    const v10, 0x7f041507

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_c
    :goto_6
    iget-object v10, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0, v9, v8}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_f
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_10

    new-instance v4, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, -0xa

    invoke-direct {v4, v6, v9, v7}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v4, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    :cond_11
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    const v4, 0x7f0414ee

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_7

    :cond_12
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->updateAddGuest(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->updateAddUser(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    :cond_14
    return-void
.end method
