.class public Lcom/android/server/cloudsearch/CloudSearchManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "CloudSearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/cloudsearch/CloudSearchManagerService;",
        "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CloudSearchManagerService"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityTaskManagerInternal(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1070031

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/cloudsearch/CloudSearchManagerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/cloudsearch/CloudSearchManagerService;I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enforceCallingPermissionForManagement()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/server/cloudsearch/CloudSearchManagerService;->TAG:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_CLOUDSEARCH"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .locals 0

    const p0, 0x1d4c0

    return p0
.end method

.method public newServiceListLocked(IZ[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/cloudsearch/CloudSearchPerUserService;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    aget-object v3, p3, v0

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public newServiceLocked(IZ)Lcom/android/server/cloudsearch/CloudSearchPerUserService;
    .locals 2

    new-instance p2, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    const-string v1, ""

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cloudsearch/CloudSearchManagerService;->newServiceLocked(IZ)Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    move-result-object p0

    return-object p0
.end method

.method public onServicePackageRestartedLocked(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onPackageRestartedLocked()V

    :cond_0
    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onPackageUpdatedLocked()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;-><init>(Lcom/android/server/cloudsearch/CloudSearchManagerService;Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub-IA;)V

    const-string v1, "cloudsearch"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
