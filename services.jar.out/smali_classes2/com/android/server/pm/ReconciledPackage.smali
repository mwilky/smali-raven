.class public final Lcom/android/server/pm/ReconciledPackage;
.super Ljava/lang/Object;
.source "ReconciledPackage.java"


# instance fields
.field public final mAllowedSharedLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public final mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mPrepareResult:Lcom/android/server/pm/PrepareResult;

.field public final mRemoveAppKeySetData:Z

.field public final mRequest:Lcom/android/server/pm/ReconcileRequest;

.field public final mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSharedUserSignaturesChanged:Z

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ReconcileRequest;Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageInstalledInfo;Lcom/android/server/pm/PrepareResult;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ReconcileRequest;",
            "Lcom/android/server/pm/InstallArgs;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            "Lcom/android/server/pm/PrepareResult;",
            "Lcom/android/server/pm/ScanResult;",
            "Lcom/android/server/pm/DeletePackageAction;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ReconciledPackage;->mRequest:Lcom/android/server/pm/ReconcileRequest;

    iput-object p2, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput-object p3, p0, Lcom/android/server/pm/ReconciledPackage;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p4, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    iput-object p5, p0, Lcom/android/server/pm/ReconciledPackage;->mPrepareResult:Lcom/android/server/pm/PrepareResult;

    iput-object p6, p0, Lcom/android/server/pm/ReconciledPackage;->mScanResult:Lcom/android/server/pm/ScanResult;

    iput-object p7, p0, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    iput-object p8, p0, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    iput-object p9, p0, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iput-boolean p10, p0, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    iput-boolean p11, p0, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    return-void
.end method


# virtual methods
.method public getCombinedAvailablePackages()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/ReconciledPackage;->mRequest:Lcom/android/server/pm/ReconcileRequest;

    iget-object v1, v1, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/ReconciledPackage;->mRequest:Lcom/android/server/pm/ReconcileRequest;

    iget-object v2, v2, Lcom/android/server/pm/ReconcileRequest;->mScannedPackages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/pm/ReconciledPackage;->mRequest:Lcom/android/server/pm/ReconcileRequest;

    iget-object v1, v1, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/server/pm/ReconciledPackage;->mRequest:Lcom/android/server/pm/ReconcileRequest;

    iget-object p0, p0, Lcom/android/server/pm/ReconcileRequest;->mScannedPackages:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ScanResult;

    iget-object v2, v1, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object v1, v1, Lcom/android/server/pm/ScanRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
