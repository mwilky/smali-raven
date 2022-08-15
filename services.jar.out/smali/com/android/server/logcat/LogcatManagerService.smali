.class public final Lcom/android/server/logcat/LogcatManagerService;
.super Lcom/android/server/SystemService;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/logcat/LogcatManagerService$Injector;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;,
        Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;,
        Lcom/android/server/logcat/LogcatManagerService$BinderService;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;,
        Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    }
.end annotation


# static fields
.field public static final PENDING_CONFIRMATION_TIMEOUT_MILLIS:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STATUS_EXPIRATION_TIMEOUT_MILLIS:I = 0xea60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mActiveLogAccessCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

.field public final mClock:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

.field public final mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

.field public final mLogAccessStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mLogdService:Landroid/os/ILogd;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/logcat/LogcatManagerService;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/logcat/LogcatManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const v0, 0x11170

    goto :goto_0

    :cond_0
    const v0, 0x61a80

    :goto_0
    sput v0, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/logcat/LogcatManagerService;-><init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/logcat/LogcatManagerService$Injector;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->createClock()Ljava/util/function/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$BinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/logcat/LogcatManagerService$BinderService;-><init>(Lcom/android/server/logcat/LogcatManagerService;Lcom/android/server/logcat/LogcatManagerService$BinderService-IA;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    invoke-direct {p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;-><init>(Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    new-instance p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    invoke-virtual {p2}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;-><init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V

    iput-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object v0

    iget v1, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p2, p2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/os/ILogd;->approve(IIII)V

    iget-object p2, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LogcatManagerService"

    const-string p2, "Fails to call remote functions"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/logcat/LogAccessDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x10008000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    const-string p1, "android.intent.extra.UID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public final declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/logcat/LogcatManagerService;->getLogdService()Landroid/os/ILogd;

    move-result-object p0

    iget v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v2, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/os/ILogd;->decline(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LogcatManagerService"

    const-string v0, "Fails to call remote functions"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getBinderService()Landroid/os/logcat/ILogcatManagerService;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    return-object p0
.end method

.method public final getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-direct {v0, p1, p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public getLocalService()Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    return-object p0
.end method

.method public final getLogdService()Landroid/os/ILogd;
    .locals 1

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mInjector:Lcom/android/server/logcat/LogcatManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/logcat/LogcatManagerService$Injector;->getLogdService()Landroid/os/ILogd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogdService:Landroid/os/ILogd;

    return-object p0
.end method

.method public final getPackageName(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "LogcatManagerService"

    if-nez p0, :cond_1

    const-string p0, "PackageManager is null, declining the logd access"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "Unknown calling package name, declining the logd access"

    if-eqz p1, :cond_2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 p1, 0x0

    aget-object p0, p0, p1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    iget-object p0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    invoke-virtual {p0, v1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    iput p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    iget-object p0, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onAccessStatusExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLogAccessFinished(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onLogAccessRequested(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>(Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus-IA;)V

    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v2, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    goto :goto_0

    :cond_4
    iget-object p0, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    iget-object v1, v1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/server/logcat/LogcatManagerService;->processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    :goto_0
    return-void
.end method

.method public onPendingTimeoutExpired(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v0, "logcat"

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mBinderService:Lcom/android/server/logcat/LogcatManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLocalService:Lcom/android/server/logcat/LogcatManagerService$LogcatManagerServiceInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "LogcatManagerService"

    const-string v1, "Could not start the LogcatManagerService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final processNewLogAccessRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    iput v1, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget v4, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->createIntent(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final scheduleStatusExpiry(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final shouldShowConfirmationDialog(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
