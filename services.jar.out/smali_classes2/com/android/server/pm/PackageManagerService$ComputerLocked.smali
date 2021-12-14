.class public Lcom/android/server/pm/PackageManagerService$ComputerLocked;
.super Lcom/android/server/pm/PackageManagerService$ComputerEngine;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ComputerLocked"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;-><init>(Lcom/android/server/pm/PackageManagerService$Snapshot;)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterAppAccess(Ljava/lang/String;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Landroid/content/Intent;ILjava/util/List;Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p11}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstalledPackagesBody(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInstantAppPackageName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageSettingInternal(Ljava/lang/String;I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageUidInternal(Ljava/lang/String;III)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackageUidInternal(Ljava/lang/String;III)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;III)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInstantAppInternalBody(Ljava/lang/String;II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZI)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZI)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p9}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/pm/PackageManagerService$ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final resolveComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ComputerLocked;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
