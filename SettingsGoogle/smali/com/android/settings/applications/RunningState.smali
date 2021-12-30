.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RunningState:Background"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result p0

    return p0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    iget v0, p4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v2, p4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v2, p4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iget v2, p4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {p3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget p3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput p3, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    new-instance p3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {p3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, p3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, p0, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object p0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2

    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    :cond_0
    sget-object p0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 2

    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_1

    const/16 v0, 0x15e

    if-ge p0, v0, :cond_1

    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p2, :cond_1

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/16 v3, 0x64

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v10, :cond_1

    iget v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v10, :cond_1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    :cond_2
    add-int/2addr v8, v4

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v13, v10}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-wide/16 v10, 0x0

    if-ge v9, v7, :cond_7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_6

    iget v10, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v10, :cond_6

    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v10, :cond_6

    iput-boolean v4, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    iget-boolean v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v11, :cond_6

    iput-boolean v4, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v9, v7, :cond_14

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_b

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v14, :cond_b

    iget-object v15, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v14, :cond_b

    iget-boolean v15, v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v15, :cond_b

    iget-object v14, v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x12c

    if-ge v15, v6, :cond_b

    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_7
    if-eqz v6, :cond_a

    iget-boolean v14, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v14, :cond_9

    iget-object v14, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0, v14}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_8

    :cond_8
    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    :cond_9
    :goto_8
    move v6, v4

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_b

    move-object/from16 p2, v5

    goto :goto_b

    :cond_b
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_c

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    iget-object v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v14, :cond_d

    new-instance v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v1, v12, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v4

    :cond_d
    iget v6, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v15, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    move-object/from16 p2, v5

    if-eq v6, v15, :cond_13

    iget-wide v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_e

    iget v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    iget v5, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v4, v5, :cond_12

    if-eq v5, v4, :cond_11

    if-eqz v5, :cond_f

    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    if-eqz v4, :cond_10

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    iput v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_11
    const/4 v12, 0x1

    :cond_12
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget v4, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    :cond_13
    invoke-virtual {v14, v1, v13}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int/2addr v12, v4

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p2

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_14
    move-object/from16 p2, v5

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v8, :cond_19

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v7, :cond_16

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v7, :cond_15

    new-instance v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v7, v1, v9, v12}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v9, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v12, 0x1

    :cond_15
    iget-object v9, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    :cond_16
    invoke-direct {v0, v5}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    :cond_17
    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v9, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    invoke-virtual {v7, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_d

    :cond_18
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    :goto_d
    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v9, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iput-object v5, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 p2, v4

    goto :goto_c

    :cond_19
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1e

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_1d

    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v8, :cond_1b

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v5, :cond_1a

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_1a
    if-eqz v5, :cond_1c

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_1b
    iput-object v5, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_1c
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1d
    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    const/4 v12, 0x1

    goto :goto_e

    :cond_1e
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_21

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v6, 0x1

    goto :goto_12

    :cond_20
    :goto_11
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x1

    const/4 v12, 0x1

    :goto_12
    add-int/2addr v4, v6

    goto :goto_10

    :cond_21
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_23

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_22

    invoke-virtual {v7, v1, v2, v9}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v7

    or-int/2addr v7, v12

    move v12, v7

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_23
    move-object v4, v5

    const/4 v3, 0x0

    :goto_14
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_2c

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_24
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v13, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v13, v14, :cond_27

    invoke-virtual {v9, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    iget v13, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v13, :cond_25

    iget-object v13, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    :cond_25
    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_26
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget v13, v13, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v13, v14, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    const/4 v12, 0x1

    goto :goto_16

    :cond_27
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v12

    if-nez v12, :cond_29

    if-nez v4, :cond_28

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v9, :cond_2a

    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->remove(I)V

    :cond_2a
    const/4 v12, 0x1

    goto :goto_15

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    :cond_2c
    if-eqz v4, :cond_2d

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    if-eqz v12, :cond_40

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_18
    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v13, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_2e

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v13, v6

    if-eqz v13, :cond_2e

    iput-boolean v6, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    :cond_2e
    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v9, :cond_2f

    iget v13, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v13, :cond_2f

    const/4 v13, 0x0

    iput-boolean v13, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-wide v13, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v5, v9, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v9, v13, v5

    if-lez v9, :cond_2f

    iput-wide v5, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    :cond_2f
    const/4 v5, 0x0

    goto :goto_1a

    :cond_30
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_19

    :cond_31
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto :goto_18

    :cond_32
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v8, :cond_33

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    iget-object v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_35

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ServiceItem;

    iput-boolean v9, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v9, :cond_34

    move-object v13, v9

    :cond_34
    const/4 v9, 0x1

    goto :goto_1c

    :cond_35
    new-instance v8, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v9, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v8, v9}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iget-object v9, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v14, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v13, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_1d

    :cond_36
    iput-object v6, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :goto_1e
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x1

    add-int/lit8 v13, v6, -0x1

    if-ge v7, v13, :cond_37

    iget-object v9, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_37
    const/4 v7, 0x0

    invoke-virtual {v8, v1, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    iget v7, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v9, :cond_38

    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v4, v7, v8}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_1f

    :cond_38
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b

    :cond_39
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v2, :cond_3d

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v7, :cond_3c

    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-gtz v7, :cond_3c

    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v7, :cond_3a

    new-instance v7, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v8, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v7, v8}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v5, v7, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_3a
    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v13, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v13, v14, :cond_3b

    iget-object v13, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v4, v13, v7}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_21

    :cond_3b
    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_21
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_3d
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_22
    if-ge v9, v2, :cond_3f

    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v5, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v8, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v8, :cond_3e

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    goto :goto_23

    :cond_3e
    const/4 v7, 0x0

    :goto_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_3f
    const/4 v7, 0x0

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v3, v0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v2

    goto :goto_24

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_40
    const/4 v7, 0x0

    :goto_24
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v7

    move v4, v3

    move v5, v4

    move v9, v5

    :goto_25
    const/16 v8, 0xc8

    const/16 v13, 0x190

    if-ge v9, v2, :cond_44

    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v15, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v6, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v15, v6, :cond_43

    iget-object v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v13, :cond_41

    add-int/lit8 v4, v4, 0x1

    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_41
    if-gt v6, v8, :cond_42

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_42
    const-string v6, "RunningState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown non-service process: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_43
    add-int/lit8 v3, v3, 0x1

    :goto_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_44
    :try_start_1
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    move v9, v7

    :goto_27
    if-ge v9, v2, :cond_45

    :try_start_2
    iget-object v14, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v14, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v14, v6, v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :catch_0
    move v9, v7

    move-wide/from16 v16, v10

    move-wide/from16 v18, v16

    const/4 v2, 0x0

    goto/16 :goto_35

    :cond_45
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move/from16 v20, v12

    const/4 v6, 0x0

    move v10, v7

    move v11, v10

    move v12, v11

    :goto_28
    if-ge v10, v2, :cond_50

    :try_start_4
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    move-wide/from16 v21, v14

    :try_start_5
    aget-wide v13, v9, v10

    iget v15, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v7, v1, v13, v14, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v13

    or-int v20, v20, v13

    iget v13, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v13, v14, :cond_47

    iget-wide v13, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long v18, v18, v13

    move/from16 v23, v2

    move-object v2, v6

    move-object/from16 v24, v9

    :cond_46
    :goto_29
    move-wide/from16 v14, v21

    goto/16 :goto_33

    :cond_47
    iget-object v13, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x190

    if-lt v13, v14, :cond_4f

    iget-wide v14, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    add-long v13, v21, v14

    if-eqz v6, :cond_49

    :try_start_6
    new-instance v15, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v8, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v15, v8}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v15, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v7, v15, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v7, v15, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v8, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    if-eq v7, v8, :cond_48

    const/4 v7, 0x1

    goto :goto_2a

    :cond_48
    const/4 v7, 0x0

    :goto_2a
    or-int/2addr v7, v11

    :try_start_7
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move/from16 v23, v2

    move-object v8, v6

    move-object/from16 v24, v9

    const/4 v2, 0x1

    move v9, v7

    goto/16 :goto_30

    :catch_1
    move-object v2, v6

    move v9, v7

    goto/16 :goto_32

    :cond_49
    :try_start_8
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v12, v8, :cond_4b

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v8, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v8, v7, :cond_4a

    goto :goto_2c

    :cond_4a
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/android/settings/applications/RunningState$MergedItem;

    move/from16 v23, v2

    move-object v8, v6

    move-object/from16 v24, v9

    move v9, v11

    :goto_2b
    const/4 v2, 0x1

    goto :goto_30

    :cond_4b
    :goto_2c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v12, :cond_4d

    :try_start_9
    iget-object v15, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningState$MergedItem;

    move/from16 v23, v2

    iget v2, v15, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    move-object/from16 v24, v9

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v2, v9, :cond_4c

    const/4 v2, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v2, 0x0

    :goto_2e
    or-int/2addr v11, v2

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v23

    move-object/from16 v9, v24

    goto :goto_2d

    :cond_4d
    move/from16 v23, v2

    move-object/from16 v24, v9

    new-instance v15, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v2, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v15, v2}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v15, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v7, v15, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v2, v15, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v6, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    if-eq v2, v6, :cond_4e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_4e
    const/4 v6, 0x0

    :goto_2f
    or-int v9, v11, v6

    :try_start_a
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :goto_30
    invoke-virtual {v15, v1, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    invoke-virtual {v15, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    add-int/lit8 v12, v12, 0x1

    move-object v2, v8

    move v11, v9

    move-wide v14, v13

    const/16 v8, 0xc8

    goto :goto_33

    :catch_2
    move-object v2, v8

    goto :goto_32

    :catch_3
    move-object v2, v8

    goto :goto_31

    :catch_4
    move-object v2, v6

    :goto_31
    move v9, v11

    :goto_32
    move-wide v10, v13

    move/from16 v12, v20

    goto :goto_35

    :cond_4f
    move/from16 v23, v2

    move-object v2, v6

    move-object/from16 v24, v9

    const/16 v8, 0xc8

    if-gt v13, v8, :cond_46

    :try_start_b
    iget-wide v13, v7, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    add-long v16, v16, v13

    goto/16 :goto_29

    :goto_33
    add-int/lit8 v10, v10, 0x1

    move-object v6, v2

    move/from16 v2, v23

    move-object/from16 v9, v24

    const/4 v7, 0x0

    const/16 v13, 0x190

    goto/16 :goto_28

    :catch_5
    move-object v2, v6

    goto :goto_34

    :catch_6
    move-object v2, v6

    move-wide/from16 v21, v14

    :catch_7
    :goto_34
    move v9, v11

    move/from16 v12, v20

    move-wide/from16 v10, v21

    goto :goto_35

    :cond_50
    move-object v2, v6

    move-wide/from16 v21, v14

    move-wide/from16 v7, v16

    goto :goto_36

    :catch_8
    move-wide/from16 v16, v10

    move-wide/from16 v18, v16

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_35
    move-wide v14, v10

    move/from16 v20, v12

    move-wide/from16 v7, v16

    move v11, v9

    :goto_36
    move-wide/from16 v9, v18

    if-nez v2, :cond_53

    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v4, :cond_53

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v11

    const/4 v11, 0x0

    :goto_37
    if-ge v11, v4, :cond_52

    iget-object v13, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v6, v13, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    move-wide/from16 v16, v9

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v6, v9, :cond_51

    const/4 v6, 0x1

    goto :goto_38

    :cond_51
    const/4 v6, 0x0

    :goto_38
    or-int/2addr v12, v6

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, v16

    goto :goto_37

    :cond_52
    move-wide/from16 v16, v9

    move v11, v12

    goto :goto_39

    :cond_53
    move-wide/from16 v16, v9

    :goto_39
    if-eqz v2, :cond_58

    if-nez v11, :cond_54

    move-object v9, v2

    goto :goto_3d

    :cond_54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_3a
    if-ge v10, v6, :cond_56

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v12, v11, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v13, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v12, v13, :cond_55

    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v9, v12, v11}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_3b

    :cond_55
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_56
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3c
    if-ge v11, v10, :cond_59

    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v6, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v13, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v6, v13, :cond_57

    const/4 v6, 0x1

    invoke-virtual {v12, v1, v6}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    invoke-virtual {v12, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_57
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    :cond_58
    const/4 v9, 0x0

    :cond_59
    :goto_3d
    const/4 v10, 0x0

    :goto_3e
    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5a

    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v11, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    :cond_5a
    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iput v4, v0, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v5, v0, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v3, v0, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v7, v0, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v3, v16

    iput-wide v3, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v2, :cond_5b

    iput-object v2, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    iput-object v9, v0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    iget-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v2, :cond_5b

    const/16 v20, 0x1

    :cond_5b
    iget-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_5c
    monitor-exit v1

    return v20

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result p1

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateNow()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method waitForData()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
