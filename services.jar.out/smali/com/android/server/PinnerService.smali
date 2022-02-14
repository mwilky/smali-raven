.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinnedApp;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;,
        Lcom/android/server/PinnerService$AppKey;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_ASSISTANT:I = 0x2

.field private static final KEY_CAMERA:I = 0x0

.field private static final KEY_HOME:I = 0x1

.field private static final MATCH_FLAGS:I = 0xd0000

.field private static final MAX_ASSISTANT_PIN_SIZE:I = 0x3c00000

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final MAX_HOME_PIN_SIZE:I = 0x600000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static PROP_PIN_ODEX:Z = false

.field private static PROP_PIN_PINLIST:Z = false

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfiguredToPinAssistant:Z

.field private final mConfiguredToPinCamera:Z

.field private final mConfiguredToPinHome:Z

.field private final mContext:Landroid/content/Context;

.field private final mPendingRepin:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPinKeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PinnerService$PinnedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private mSearchManager:Landroid/app/SearchManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-EpkTk7WXM4LQsI83InRATHH3gc(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinAppsWithUpdatedKeys(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuPmnbX6d3sOIO4LP4dO1IrwBvY(Lcom/android/server/PinnerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JURuH7L1-81XaRgwi-XDmkFWZdo(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinApps(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyGDUuH13qbrODfSq7SBVti5uF0(Lcom/android/server/PinnerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinApps()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    const-string/jumbo v0, "pinner.use_pinlist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    const-string/jumbo v0, "pinner.whole_odex"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    invoke-direct {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUidListener()V

    invoke-direct {p0}, Lcom/android/server/PinnerService;->registerUserSetupCompleteListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/PinnerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PinnerService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/PinnerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PinnerService;->sendUnpinAppsMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->sendPinAppsWithUpdatedKeysMessage(I)V

    return-void
.end method

.method static synthetic access$1400(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PinnerService;)Landroid/app/ActivityManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/PinnerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidActive(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/PinnerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PinnerService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private createPinKeys()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-boolean v1, p0, Lcom/android/server/PinnerService;->mConfiguredToPinCamera:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pinner.pin_camera"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v4, "runtime_native_boot"

    const-string/jumbo v5, "pin_camera"

    invoke-static {v4, v5, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinHome:Z

    if-eqz v2, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/PinnerService;->mConfiguredToPinAssistant:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xd0000

    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v3}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    :cond_2
    if-eqz p3, :cond_6

    iget-object v3, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    if-nez v3, :cond_3

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    return-object v3

    :cond_6
    return-object v0
.end method

.method private getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method private getHomeInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/PinnerService;->getApplicationInfoForIntent(Landroid/content/Intent;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private getInfoForKey(II)Landroid/content/pm/ApplicationInfo;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getAssistantInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getHomeInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNameForKey(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "Assistant"

    return-object v0

    :pswitch_1
    const-string v0, "Home"

    return-object v0

    :pswitch_2
    const-string v0, "Camera"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getPinKeys()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSizeLimitForKey(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x3c00000

    return v0

    :pswitch_1
    const/high16 v0, 0x600000

    return v0

    :pswitch_2
    const/high16 v0, 0x5000000

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUidForKey(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePinOnStart()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x107002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    const v7, 0x7fffffff

    invoke-static {v6, v7, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v0, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to pin file = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, ".jar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v9, ".apk"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    or-int/2addr v0, v9

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :try_start_1
    invoke-static {v6, v9}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :goto_2
    if-nez v10, :cond_1

    goto :goto_5

    :cond_1
    array-length v0, v10

    move v11, v4

    :goto_3
    if-ge v11, v0, :cond_3

    aget-object v12, v10, v11

    invoke-static {v12, v7, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v14, "PinnerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to pin ART file = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    monitor-enter p0

    :try_start_2
    iget-object v4, v1, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    return-void
.end method

.method private handleUidActive(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    return-void
.end method

.method private handleUidGone(I)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    sget-boolean v0, Lcom/android/server/PinnerService;->PROP_PIN_PINLIST:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PinnerService"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PinnerService"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private pinApp(IIZ)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getUidForKey(I)I

    move-result v0

    if-nez p3, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->unpinApp(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/server/PinnerService;->pinApp(ILandroid/content/pm/ApplicationInfo;)V

    :cond_1
    return-void
.end method

.method private pinApp(ILandroid/content/pm/ApplicationInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/PinnerService$PinnedApp;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PinnerService$PinnedApp;-><init>(Lcom/android/server/PinnerService;Landroid/content/pm/ApplicationInfo;Lcom/android/server/PinnerService$1;)V

    move-object v3, v0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PinnerService;->getSizeLimitForKey(I)I

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v7, v0

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v0, v8

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    if-gtz v8, :cond_2

    const-string v0, "PinnerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reached to the pin size limit. Skipping: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v9, v8, v0}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v0, "PinnerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to pin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_1
    iget-object v0, v3, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, v10, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    sub-int/2addr v8, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v6

    :goto_2
    move-object v7, v0

    invoke-static {v7}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_3
    invoke-static {v10, v9}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v0

    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_4
    if-nez v11, :cond_6

    return-void

    :cond_6
    array-length v0, v11

    move v12, v6

    :goto_5
    if-ge v12, v0, :cond_9

    aget-object v13, v11, v12

    invoke-static {v13, v4, v6}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v14

    if-eqz v14, :cond_8

    monitor-enter p0

    :try_start_4
    sget-boolean v15, Lcom/android/server/PinnerService;->PROP_PIN_ODEX:Z

    if-eqz v15, :cond_7

    iget-object v15, v3, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit p0

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_8
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    return-void

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private pinApps(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method private pinAppsInternal(IZ)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/PinnerService;->createPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PinnerService"

    const-string v2, "Attempted to update a list of apps, but apps were already pinned. Skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinKeys:Landroid/util/ArraySet;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p1, v2}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private pinAppsWithUpdatedKeys(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    return-void
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    :cond_1
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    :goto_1
    nop

    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    return-object v3

    :goto_2
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .locals 19

    move-object/from16 v7, p0

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v1, v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sget v5, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v0, v5

    const/4 v5, 0x0

    invoke-static {v7, v0, v5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v16
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1

    iget-wide v10, v1, Landroid/system/StructStat;->st_size:J

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    long-to-int v6, v10

    const-wide/16 v10, 0x0

    int-to-long v12, v6

    :try_start_2
    sget v14, Landroid/system/OsConstants;->PROT_READ:I

    sget v15, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v17, 0x0

    invoke-static/range {v10 .. v18}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    new-instance v1, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v1}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v12, v1

    const/4 v1, 0x0

    sget v2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v2
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_0

    :try_start_4
    rem-int v2, p1, v2
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int v2, p1, v2

    move v14, v1

    move v13, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v15, p2

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_0
    move/from16 v13, p1

    move v14, v1

    :goto_0
    if-ge v14, v13, :cond_3

    move-object/from16 v15, p2

    :try_start_5
    invoke-virtual {v15, v12}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v12, Lcom/android/server/PinnerService$PinRange;->start:I

    iget v2, v12, Lcom/android/server/PinnerService$PinRange;->length:I

    invoke-static {v5, v1, v6}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    sub-int v3, v6, v1

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    sub-int v3, v13, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v4, v1, v3

    add-int/2addr v2, v4

    rem-int v4, v1, v3

    sub-int/2addr v1, v4

    rem-int v4, v2, v3

    if-eqz v4, :cond_1

    rem-int v4, v2, v3

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_1
    sub-int v3, v13, v14

    invoke-static {v5, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    if-lez v2, :cond_2

    int-to-long v3, v1

    add-long/2addr v3, v10

    int-to-long v8, v2

    invoke-static {v3, v4, v8, v9}, Landroid/system/Os;->mlock(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    add-int/2addr v14, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v4, v6

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    :cond_3
    move-object/from16 v15, p2

    :cond_4
    :try_start_6
    new-instance v8, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v8

    move-wide v2, v10

    move v4, v6

    move-object/from16 v5, p0

    move v9, v6

    move v6, v14

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v8

    const-wide/16 v2, -0x1

    nop

    invoke-static/range {v16 .. v16}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    int-to-long v4, v9

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_5
    return-object v1

    :catchall_2
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move v9, v6

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-wide v2, v10

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-object/from16 v1, v16

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v15, p2

    move v9, v6

    move/from16 v13, p1

    move v4, v9

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    move-object/from16 v1, v16

    goto :goto_2

    :catch_6
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    goto :goto_2

    :catch_7
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v13, p1

    :goto_1
    :try_start_8
    const-string v5, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-ltz v6, :cond_6

    int-to-long v8, v4

    invoke-static {v2, v3, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_6
    return-object v5

    :catchall_8
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_7

    int-to-long v5, v4

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_7
    throw v0
.end method

.method private registerUidListener()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mAm:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/server/PinnerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/PinnerService$3;-><init>(Lcom/android/server/PinnerService;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PinnerService"

    const-string v2, "Failed to register uid observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private registerUserSetupCompleteListener()V
    .locals 5

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/PinnerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/PinnerService$2;-><init>(Lcom/android/server/PinnerService;Landroid/os/Handler;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring error closing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PinnerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private static safeMunmap(JJ)V
    .locals 3

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PinnerService"

    const-string v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendPinAppMessage(IIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/PinnerService$$ExternalSyntheticLambda0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendPinAppsMessage(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/PinnerService$$ExternalSyntheticLambda2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendPinAppsWithUpdatedKeysMessage(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendUnpinAppsMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    sget-object v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/PinnerService$$ExternalSyntheticLambda3;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private unpinApp(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedApp;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private unpinApps()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/PinnerService;->unpinApp(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateActiveState(IZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PinnerService$PinnedApp;

    iget v2, v1, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    if-ne v2, p1, :cond_0

    iput-boolean p2, v1, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/PinnerService;->mSearchManager:Landroid/app/SearchManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    const-string/jumbo v1, "pinner"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_0
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PinnerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->sendPinAppsMessage(I)V

    :cond_0
    return-void
.end method

.method public update(Landroid/util/ArraySet;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/PinnerService;->getPinKeys()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/android/server/PinnerService;->getInfoForKey(II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating pinned files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " force="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PinnerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v1, p2}, Lcom/android/server/PinnerService;->sendPinAppMessage(IIZ)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
