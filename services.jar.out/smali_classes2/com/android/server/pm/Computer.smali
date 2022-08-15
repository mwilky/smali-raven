.class public interface abstract Lcom/android/server/pm/Computer;
.super Ljava/lang/Object;
.source "Computer.java"

# interfaces
.implements Lcom/android/server/pm/snapshot/PackageDataSnapshot;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# virtual methods
.method public abstract activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract canAccessComponent(ILandroid/content/ComponentName;I)Z
.end method

.method public abstract canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
.end method

.method public abstract canPackageQuery(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract canQueryPackage(ILjava/lang/String;)Z
.end method

.method public abstract canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
.end method

.method public abstract canViewInstantApps(II)Z
.end method

.method public abstract canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract checkPackageFrozen(Ljava/lang/String;)V
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkUidPermission(Ljava/lang/String;I)I
.end method

.method public abstract checkUidSignatures(II)I
.end method

.method public abstract currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
.end method

.method public abstract dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
.end method

.method public abstract dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
.end method

.method public abstract enforceCrossUserPermission(IIZZLjava/lang/String;)V
.end method

.method public abstract filterAppAccess(II)Z
.end method

.method public abstract filterAppAccess(Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
.end method

.method public abstract filterAppAccess(Ljava/lang/String;II)Z
.end method

.method public varargs abstract filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation
.end method

.method public abstract findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation
.end method

.method public abstract findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getAllAvailablePackageNames()[Ljava/lang/String;
.end method

.method public abstract getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getBlockUninstall(ILjava/lang/String;)Z
.end method

.method public abstract getBlockUninstallForUser(Ljava/lang/String;I)Z
.end method

.method public abstract getBroadcastAllowList(Ljava/lang/String;[IZ)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[IZ)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;II)I
.end method

.method public abstract getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
.end method

.method public abstract getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
.end method

.method public abstract getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getFlagsForUid(I)I
.end method

.method public abstract getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getHomeIntent()Landroid/content/Intent;
.end method

.method public abstract getInstallReason(Ljava/lang/String;I)I
.end method

.method public abstract getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
.end method

.method public abstract getInstalledApplications(JII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstantAppInstallerComponent()Landroid/content/ComponentName;
.end method

.method public abstract getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
.end method

.method public abstract getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getNamesForUids([I)[Ljava/lang/String;
.end method

.method public abstract getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
.end method

.method public abstract getPackageGids(Ljava/lang/String;JI)[I
.end method

.method public abstract getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageOrSharedUser(I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/pkg/SharedUserApi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageStartability(ZLjava/lang/String;II)I
.end method

.method public abstract getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getPackageStates()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageUid(Ljava/lang/String;JI)I
.end method

.method public abstract getPackageUidInternal(Ljava/lang/String;JII)I
.end method

.method public abstract getPackagesForAppId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPersistentApplications(ZI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
.end method

.method public abstract getPrivateFlagsForUid(I)I
.end method

.method public abstract getProcessesForUid(I)Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
.end method

.method public abstract getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
.end method

.method public abstract getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
.end method

.method public abstract getSharedUserPackages(I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getSigningDetails(I)Landroid/content/pm/SigningDetails;
.end method

.method public abstract getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
.end method

.method public abstract getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public abstract getTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getUidForSharedUser(Ljava/lang/String;)I
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract getUnusedPackages(J)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getUsed()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getVersion()I
.end method

.method public abstract getVisibilityAllowList(Ljava/lang/String;I)[I
.end method

.method public abstract getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSigningCertificate(Ljava/lang/String;[BI)Z
.end method

.method public abstract hasUidSigningCertificate(I[BI)Z
.end method

.method public abstract isCallerInstallerOfRecord(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
.end method

.method public abstract isCallerSameApp(Ljava/lang/String;I)Z
.end method

.method public abstract isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;I)Z
.end method

.method public abstract isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
.end method

.method public abstract isInstallDisabledForPackage(Ljava/lang/String;II)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInternal(Ljava/lang/String;II)Z
.end method

.method public abstract isPackageAvailable(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract isSuspendingAnyPackages(Ljava/lang/String;I)Z
.end method

.method public abstract isUidPrivileged(I)Z
.end method

.method public abstract queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
.end method

.method public abstract updateFlagsForResolve(JIIZZ)J
.end method

.method public abstract use()Lcom/android/server/pm/Computer;
.end method
