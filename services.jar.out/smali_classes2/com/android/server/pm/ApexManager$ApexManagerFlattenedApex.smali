.class final Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApexManagerFlattenedApex"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ApexManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;-><init>()V

    return-void
.end method


# virtual methods
.method abortStagedSession(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public destroyCeSnapshots(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroyDeSnapshots(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.art.debug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$1;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method getActivePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFactoryPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInactivePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSessions()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    return-object v0
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "APEX updates are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isApexSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public markBootCompleted()V
    .locals 0

    return-void
.end method

.method markStagedSessionReady(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method markStagedSessionSuccessful(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0

    return-void
.end method

.method reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method revertActiveSessions()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    return-void
.end method

.method public snapshotCeData(IILjava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    const-string v2, "Device doesn\'t support updating APEX"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
