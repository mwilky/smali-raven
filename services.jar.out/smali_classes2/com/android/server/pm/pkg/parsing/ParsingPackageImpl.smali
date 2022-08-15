.class public Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
.super Ljava/lang/Object;
.source "ParsingPackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackage;
.implements Lcom/android/server/pm/pkg/parsing/ParsingPackageHidden;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field public static sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

.field public static sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

.field public static sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public anyDensity:Ljava/lang/Boolean;

.field public apexSystemServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation
.end field

.field public appComponentFactory:Ljava/lang/String;

.field public attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field public autoRevokePermissions:I

.field public backupAgentName:Ljava/lang/String;

.field public banner:I

.field public baseRevisionCode:I

.field public category:I

.field public classLoaderName:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public compatibleWidthLimitDp:I

.field public compileSdkVersion:I

.field public compileSdkVersionCodeName:Ljava/lang/String;

.field public configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public dataExtractionRules:I

.field public descriptionRes:I

.field public featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fullBackupContent:I

.field public gwpAsanMode:I

.field public iconRes:I

.field public implicitPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installLocation:I

.field public instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public labelRes:I

.field public largestWidthLimitDp:I

.field public libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public logo:I

.field public mBaseApkPath:Ljava/lang/String;

.field public mBooleans:J

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocaleConfigRes:I

.field public mLongVersionCode:J

.field public mPath:Ljava/lang/String;

.field public mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field public mStorageUuid:Ljava/util/UUID;

.field public manageSpaceActivityName:Ljava/lang/String;

.field public maxAspectRatio:F

.field public maxSdkVersion:I

.field public memtagMode:I

.field public metaData:Landroid/os/Bundle;

.field public mimeGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minAspectRatio:F

.field public minExtensionVersions:Landroid/util/SparseIntArray;

.field public minSdkVersion:I

.field public nativeHeapZeroInitialized:I

.field public networkSecurityConfigRes:I

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public overlayCategory:Ljava/lang/String;

.field public overlayPriority:I

.field public overlayTarget:Ljava/lang/String;

.field public overlayTargetOverlayableName:Ljava/lang/String;

.field public overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field public preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public processName:Ljava/lang/String;

.field public processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field public queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestRawExternalStorageAccess:Ljava/lang/Boolean;

.field public requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public requiredAccountType:Ljava/lang/String;

.field public requiresSmallestWidthDp:I

.field public resizeable:Ljava/lang/Boolean;

.field public resizeableActivity:Ljava/lang/Boolean;

.field public restrictUpdateHash:[B

.field public restrictedAccountType:Ljava/lang/String;

.field public roundIconRes:I

.field public sdkLibName:Ljava/lang/String;

.field public sdkLibVersionMajor:I

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field public sharedUserId:Ljava/lang/String;

.field public sharedUserLabel:I

.field public signingDetails:Landroid/content/pm/SigningDetails;

.field public splitClassLoaderNames:[Ljava/lang/String;

.field public splitCodePaths:[Ljava/lang/String;

.field public splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public splitFlags:[I

.field public splitNames:[Ljava/lang/String;

.field public splitRevisionCodes:[I

.field public staticSharedLibName:Ljava/lang/String;

.field public staticSharedLibVersion:J

.field public supportsExtraLargeScreens:Ljava/lang/Boolean;

.field public supportsLargeScreens:Ljava/lang/Boolean;

.field public supportsNormalScreens:Ljava/lang/Boolean;

.field public supportsSmallScreens:Ljava/lang/Boolean;

.field public targetSandboxVersion:I

.field public targetSdkVersion:I

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalNativeLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation
.end field

.field public usesSdkLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesSdkLibrariesCertDigests:[[Ljava/lang/String;

.field public usesSdkLibrariesVersionsMajor:[J

.field public usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field public usesStaticLibrariesVersions:[J

.field public versionCode:I

.field public versionCodeMajor:I

.field public versionName:Ljava/lang/String;

.field public volumeUuid:Ljava/lang/String;

.field public zygotePreloadName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$VIpuXzegVo12DY15boysLIeX1Qc(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const-wide v1, 0x100000000000L

    iput-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_0

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v5, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v5, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_1

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    sget-object v0, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v2, Lcom/android/server/pm/pkg/component/ParsedApexSystemServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    const-class v0, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const-wide v2, 0x100000000000L

    iput-wide v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    const/16 p1, 0xb

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    const/4 p1, 0x5

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/4 p1, 0x2

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/16 p1, 0x9

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    const/16 p1, 0xa

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    const/4 p1, 0x6

    invoke-virtual {p4, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)I
    .locals 0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAdoptPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addApexSystemService(Lcom/android/server/pm/pkg/component/ParsedApexSystemService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addAttribution(Lcom/android/server/pm/pkg/component/ParsedAttribution;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addImplicitPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addInstrumentation(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p2, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addLibraryName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public final addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addOriginalPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public addOverlayable(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPermission(Lcom/android/server/pm/pkg/component/ParsedPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addPreferredActivityFilter(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProperty(Landroid/content/pm/PackageManager$Property;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProtectedBroadcast(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesIntent(Landroid/content/Intent;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addQueriesProvider(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReceiver(Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addReqFeature(Landroid/content/pm/FeatureInfo;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addService(Lcom/android/server/pm/pkg/component/ParsedService;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public final addUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesPermission(Lcom/android/server/pm/pkg/component/ParsedUsesPermission;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesSdkLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public addUsesStaticLibrary(Ljava/lang/String;J[Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    const-class p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public areAttributionsUserVisible()Z
    .locals 2

    const-wide v0, 0x800000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    iput-object p4, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    array-length p1, p1

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method public final assignDerivedFields()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    return-void
.end method

.method public final buildAppClassNamesByProcess()Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProcess;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    return-object p0
.end method

.method public getAdoptPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getApexSystemServices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    return-object p0
.end method

.method public getAttributions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public getAutoRevokePermissions()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return p0
.end method

.method public getBackupAgentName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public getBaseRevisionCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return p0
.end method

.method public final getBoolean(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getCompileSdkVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return p0
.end method

.method public getCompileSdkVersionCodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigPreferences()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public getFeatureGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public getImplicitPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getInstallLocation()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    return p0
.end method

.method public getInstrumentations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public getKeySetMapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public getLibraryNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getMimeGroups()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getMinAspectRatio()F
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    return p0
.end method

.method public getMinExtensionVersions()Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getMinSdkVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    return p0
.end method

.method public getOriginalPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public getOverlayCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayPriority()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    return p0
.end method

.method public getOverlayTarget()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayTargetOverlayableName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public getOverlayables()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public getPreferredActivityFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getProcesses()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    return-object p0
.end method

.method public getProtectedBroadcasts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object p0
.end method

.method public getProviders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesIntents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public getQueriesProviders()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getRequiredAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getResizeableActivity()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getRestrictUpdateHash()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public getRestrictedAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkLibName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkLibVersionMajor()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    return p0
.end method

.method public getServices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    return-object p0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedUserLabel()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getSplitClassLoaderNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitDependencies()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->EMPTY_INT_ARRAY_SPARSE_ARRAY:Landroid/util/SparseArray;

    :cond_0
    return-object p0
.end method

.method public getSplitFlags()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    return-object p0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getSplitRevisionCodes()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->INT:[I

    :cond_0
    return-object p0
.end method

.method public getStaticSharedLibName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object p0
.end method

.method public getStaticSharedLibVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public getTargetSdkVersion()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getUiOptions()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    return p0
.end method

.method public getUpgradeKeySets()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public getUsesLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesNativeLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesOptionalNativeLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermission;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesSdkLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesSdkLibrariesVersionsMajor()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    return-object p0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object p0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    return p0
.end method

.method public getVersionCodeMajor()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hasPreserveLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x2000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hasRequestForegroundServiceExemption()Z
    .locals 2

    const-wide v0, 0x400000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public hideAsParsed()Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public isAllowAudioPlaybackCapture()Z
    .locals 2

    const-wide v0, 0x80000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowBackup()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowClearUserData()Z
    .locals 2

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowClearUserDataOnFailedRestore()Z
    .locals 2

    const-wide/32 v0, 0x40000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowNativeHeapPointerTagging()Z
    .locals 2

    const-wide v0, 0x1000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAllowTaskReparenting()Z
    .locals 2

    const-wide/16 v0, 0x400

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isAnyDensity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBackupInForeground()Z
    .locals 2

    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isBaseHardwareAccelerated()Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCantSaveState()Z
    .locals 2

    const-wide v0, 0x800000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isCrossProfile()Z
    .locals 2

    const-wide v0, 0x80000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDebuggable()Z
    .locals 2

    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .locals 2

    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x8000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    const-wide v0, 0x100000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExternalStorage()Z
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isExtractNativeLibs()Z
    .locals 2

    const-wide/32 v0, 0x20000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isForceQueryable()Z
    .locals 2

    const-wide v0, 0x40000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isFullBackupOnly()Z
    .locals 2

    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isGame()Z
    .locals 2

    const-wide/32 v0, 0x40000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasCode()Z
    .locals 2

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasDomainUrls()Z
    .locals 2

    const-wide/32 v0, 0x400000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isHasFragileUserData()Z
    .locals 2

    const-wide v0, 0x400000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isIsolatedSplitLoading()Z
    .locals 2

    const-wide/32 v0, 0x200000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isKillAfterRestore()Z
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLargeHeap()Z
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isLeavingSharedUid()Z
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isMultiArch()Z
    .locals 2

    const-wide/32 v0, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOnBackInvokedCallbackEnabled()Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOverlay()Z
    .locals 2

    const-wide/32 v0, 0x100000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isOverlayIsStatic()Z
    .locals 2

    const-wide v0, 0x8000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPartiallyDirectBootAware()Z
    .locals 2

    const-wide/32 v0, 0x10000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isPersistent()Z
    .locals 2

    const-wide/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isProfileable()Z
    .locals 2

    const-wide v0, 0x200000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isProfileableByShell()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRequestLegacyExternalStorage()Z
    .locals 2

    const-wide v0, 0x100000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRequiredForAllUsers()Z
    .locals 2

    const-wide v0, 0x4000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResetEnabledSettingsOnAppDataCleared()Z
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isResizeable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isResizeableActivityViaSdkVersion()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isRestoreAnyVersion()Z
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSdkLibrary()Z
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isStaticSharedLibrary()Z
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSupportsExtraLargeScreens()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportsLargeScreens()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSupportsNormalScreens()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportsRtl()Z
    .locals 2

    const-wide/16 v0, 0x4000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isSupportsSmallScreens()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTestOnly()Z
    .locals 2

    const-wide/32 v0, 0x8000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUse32BitAbi()Z
    .locals 2

    const-wide v0, 0x10000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUseEmbeddedDex()Z
    .locals 2

    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUsesCleartextTraffic()Z
    .locals 2

    const-wide/16 v0, 0x2000

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isUsesNonSdkApi()Z
    .locals 2

    const-wide v0, 0x200000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVisibleToInstantApps()Z
    .locals 2

    const-wide v0, 0x20000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public isVmSafeMode()Z
    .locals 2

    const-wide/16 v0, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public removeUsesOptionalNativeLibrary(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowAudioPlaybackCapture(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x80000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowBackup(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowClearUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowClearUserDataOnFailedRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowNativeHeapPointerTagging(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x1000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAllowTaskReparenting(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x400

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAnyDensity(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAppComponentFactory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributionsAreUserVisible(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide v0, 0x800000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setAutoRevokePermissions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return-object p0
.end method

.method public bridge synthetic setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupAgentName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBackupInForeground(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBanner(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    return-object p0
.end method

.method public bridge synthetic setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseHardwareAccelerated(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setBaseRevisionCode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return-object p0
.end method

.method public final setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCantSaveState(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x800000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCategory(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    return-object p0
.end method

.method public bridge synthetic setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClassLoaderName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCompatibleWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return-object p0
.end method

.method public setCompileSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return-object p0
.end method

.method public setCompileSdkVersionCodeName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setCrossProfile(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x80000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDataExtractionRules(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    return-object p0
.end method

.method public bridge synthetic setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDebuggable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDescriptionRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x100000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setExtractNativeLibs(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setForceQueryable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x40000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupContent(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    return-object p0
.end method

.method public bridge synthetic setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setFullBackupOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGame(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x40000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setGwpAsanMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return-object p0
.end method

.method public bridge synthetic setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasCode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x200

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasDomainUrls(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x400000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setHasFragileUserData(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x400000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    return-object p0
.end method

.method public bridge synthetic setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setInstallLocation(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    return-object p0
.end method

.method public setIsolatedSplitLoading(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x200000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKillAfterRestore(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackage;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    return-object p0
.end method

.method public bridge synthetic setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargeHeap(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x1000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLargestWidthLimitDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLeavingSharedUid(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/high16 v0, 0x8000000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLocaleConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setLogo(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    return-object p0
.end method

.method public bridge synthetic setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setManageSpaceActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMaxSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMemtagMode(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    return-object p0
.end method

.method public bridge synthetic setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinExtensionVersions(Landroid/util/SparseIntArray;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public bridge synthetic setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMinSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setMultiArch(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNativeHeapZeroInitialized(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    return-object p0
.end method

.method public bridge synthetic setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSecurityConfigRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setOnBackInvokedCallbackEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x4000000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlay(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x100000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayCategory(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayIsStatic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x8000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayPriority(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    return-object p0
.end method

.method public bridge synthetic setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTarget(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setOverlayTargetOverlayableName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPartiallyDirectBootAware(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x10000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPersistent(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x40

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setPreserveLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x2000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProcesses(Ljava/util/Map;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/component/ParsedProcess;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileable(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    xor-int/lit8 p1, p1, 0x1

    const-wide v0, 0x200000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setProfileableByShell(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestForegroundServiceExemption(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x400000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestLegacyExternalStorage(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x100000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiredForAllUsers(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x4000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRequiresSmallestWidthDp(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return-object p0
.end method

.method public setResetEnabledSettingsOnAppDataCleared(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 2

    const-wide/high16 v0, 0x1000000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeable(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivity(Ljava/lang/Boolean;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setResizeableActivityViaSdkVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestoreAnyVersion(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public bridge synthetic setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRestrictedAccountType(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setRoundIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    return-object p0
.end method

.method public bridge synthetic setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibVersionMajor(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    return-object p0
.end method

.method public bridge synthetic setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSdkLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/high16 v0, 0x2000000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserId(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSharedUserLabel(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public bridge synthetic setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitClassLoaderName(ILjava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSplitHasCode(IZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    if-eqz p2, :cond_0

    aget p2, v0, p1

    or-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    aget p2, v0, p1

    and-int/lit8 p2, p2, -0x5

    :goto_0
    aput p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibVersion(J)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-wide p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setStaticSharedLibrary(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x80000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsExtraLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsLargeScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsNormalScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsRtl(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x4000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setSupportsSmallScreens(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSandboxVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return-object p0
.end method

.method public bridge synthetic setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTargetSdkVersion(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTestOnly(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x8000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    return-object p0
.end method

.method public bridge synthetic setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    return-object p0
.end method

.method public bridge synthetic setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUpgradeKeySets(Ljava/util/Set;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUse32BitAbi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x10000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUseEmbeddedDex(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUsesCleartextTraffic(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x2000

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setUsesNonSdkApi(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x200000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVisibleToInstantApps(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide v0, 0x20000000000L

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVmSafeMode(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    const-wide/16 v0, 0x100

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setBoolean(JZ)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public setZygotePreloadName(Ljava/lang/String;)Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortActivities()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortReceivers()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;

    move-result-object p0

    return-object p0
.end method

.method public sortServices()Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {p0}, Lcom/android/server/pm/pkg/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)I

    move-result p0

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v0
.end method

.method public toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .locals 3

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    const-wide v1, 0x100000000000L

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->dataExtractionRulesRes:I

    sget-boolean v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    :goto_0
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v2

    :goto_2
    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mStorageUuid:Ljava/util/UUID;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setMemtagMode(I)V

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setNativeHeapZeroInitialized(I)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setRequestRawExternalStorageAccess(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLongVersionCode:J

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->buildAppClassNamesByProcess()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setAppClassNamesByProcess(Landroid/util/ArrayMap;)V

    iget v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setLocaleConfigRes(I)V

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->setKnownActivityEmbeddingCerts(Ljava/util/Set;)V

    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayTargetOverlayableName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sdkLibVersionMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesOptionalNativeLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v3, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibraries:Ljava/util/List;

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesVersionsMajor:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesSdkLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->usesPermissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageUtils;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->apexSystemServices:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->dataExtractionRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->maxSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget-wide v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mBooleans:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mProperties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->memtagMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->requestRawExternalStorageAccess:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mLocaleConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object p0, p0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
