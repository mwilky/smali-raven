.class Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$SystemWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSystemWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disablePackageCaches()V
    .locals 1

    invoke-static {}, Landroid/content/pm/PackageManager;->disableApplicationInfoCache()V

    invoke-static {}, Landroid/content/pm/PackageManager;->disablePackageInfoCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableGetPackagesForUidCache()V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateHasSystemFeatureCache()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    return-void
.end method

.method public enablePackageCaches()V
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    return-void
.end method
