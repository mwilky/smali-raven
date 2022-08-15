.class public interface abstract Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.super Ljava/lang/Object;
.source "ParsingPackage.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;


# virtual methods
.method public abstract addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract hideAsParsed()Ljava/lang/Object;
.end method

.method public abstract removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method

.method public abstract sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.end method
