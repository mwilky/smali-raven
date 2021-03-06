.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/hint/HintManagerService$AppHintSession;,
        Lcom/android/server/power/hint/HintManagerService$BinderService;,
        Lcom/android/server/power/hint/HintManagerService$UidObserver;,
        Lcom/android/server/power/hint/HintManagerService$NativeWrapper;,
        Lcom/android/server/power/hint/HintManagerService$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HintManagerService"


# instance fields
.field private final mActiveSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/power/hint/HintManagerService$AppHintSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mHintSessionPreferredRate:J

.field private final mLock:Ljava/lang/Object;

.field private final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field final mService:Landroid/os/IHintManager$Stub;

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    new-instance v0, Lcom/android/server/power/hint/HintManagerService$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/power/hint/HintManagerService$UidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/hint/HintManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->isHalSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/hint/HintManagerService;II[I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object v0
.end method

.method private checkTidValid(II[I)Z
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4

    aget v5, p3, v3

    const-string v6, "Uid:"

    const-string v7, "Tgid:"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v7}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v8, v7, v2

    long-to-int v8, v8

    aget-wide v9, v7, v4

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-ne v8, p1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method private isHalSupported()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private systemReady()V
    .locals 5

    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$UidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    const-string v1, "performance_hint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/hint/HintManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
