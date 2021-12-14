.class public Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;
.super Ljava/lang/Object;
.source "ColumbusStructuredDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$Companion;


# instance fields
.field private final allowPackageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final broadcastReceiver:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final lock:Ljava/lang/Object;

.field private packageStats:Lorg/json/JSONArray;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;

.field private final userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->Companion:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_ALLOW_LIST:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStringArray(ColumbusResourceHelper.SUMATRA_ALLOW_LIST)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->allowPackageList:Ljava/util/Set;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$userTrackerCallback$1;

    new-instance v1, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->broadcastReceiver:Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager$broadcastReceiver$1;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->fetchPackageStats()Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-interface {p2, v0, p3}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "package"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$fetchPackageStats(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Lorg/json/JSONArray;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->fetchPackageStats()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllowPackageList$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->allowPackageList:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$removePackage(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setPackageStats$p(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    return-void
.end method

.method private final fetchPackageStats()Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "columbus_package_stats"

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Columbus/StructuredData"

    const-string v2, "Failed to parse package counts"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final getCurrentTimestamp()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getLastDenyTimestamp(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "packageName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "lastDeny"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide p0

    :cond_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 p0, 0x0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final makeJSONObject(Ljava/lang/String;IJ)Lorg/json/JSONObject;
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "packageName"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "shownCount"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "lastDeny"

    invoke-virtual {p0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic makeJSONObject$default(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Ljava/lang/String;IJILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->makeJSONObject(Ljava/lang/String;IJ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makeJSONObject"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final removePackage(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final storePackageStats()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "columbus_package_stats"

    iget-object v3, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getPackageShownCount(Ljava/lang/String;)I
    .locals 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "packageName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p0, "shownCount"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    if-lt v4, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final getTimeSinceLastDeny(Ljava/lang/String;)J
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getCurrentTimestamp()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getLastDenyTimestamp(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, p0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final incrementPackageShownCount(Ljava/lang/String;)V
    .locals 9

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string p1, "shownCount"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "shownCount"

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->makeJSONObject$default(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Ljava/lang/String;IJILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->storePackageStats()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setLastDenyTimeToNow(Ljava/lang/String;)V
    .locals 9

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->getCurrentTimestamp()J

    move-result-wide v4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    :goto_0
    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string p1, "lastDeny"

    invoke-virtual {v6, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->storePackageStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    if-lt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->packageStats:Lorg/json/JSONArray;

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->makeJSONObject$default(Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Ljava/lang/String;IJILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;->storePackageStats()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
