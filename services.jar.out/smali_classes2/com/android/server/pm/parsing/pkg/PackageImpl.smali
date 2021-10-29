.class public final Lcom/android/server/pm/parsing/pkg/PackageImpl;
.super Landroid/content/pm/parsing/ParsingPackageImpl;
.source "PackageImpl.java"

# interfaces
.implements Lcom/android/server/pm/parsing/pkg/ParsedPackage;
.implements Lcom/android/server/pm/parsing/pkg/AndroidPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/parsing/pkg/PackageImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

.field private mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

.field private mBaseAppInfoFlags:I

.field private mBaseAppInfoPrivateFlags:I

.field private mBaseAppInfoPrivateFlagsExt:I

.field private mBooleans:I

.field private final manifestPackageName:Ljava/lang/String;

.field protected nativeLibraryDir:Ljava/lang/String;

.field protected nativeLibraryRootDir:Ljava/lang/String;

.field private nativeLibraryRootRequiresIsa:Z

.field protected primaryCpuAbi:Ljava/lang/String;

.field protected seInfo:Ljava/lang/String;

.field protected seInfoUser:Ljava/lang/String;

.field protected secondaryCpuAbi:Ljava/lang/String;

.field protected secondaryNativeLibraryDir:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/pm/parsing/ParsingPackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.method private assignDerivedFields()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "user_de"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-void
.end method

.method public static buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 1

    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/parsing/ParsingPackage;->setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/parsing/ParsingPackage;->hideAsParsed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    return-object v0
.end method

.method public static forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 7

    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method public static forTesting(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->forTesting(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    move-result-object v0

    return-object v0
.end method

.method public static forTesting(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 7

    new-instance v6, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/parsing/pkg/PackageImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)V

    return-object v6
.end method

.method private getBoolean(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->setPriority(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->capPermissionPriorities()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearAdoptPermissions()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->originalPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearOriginalPackages()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public bridge synthetic clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->clearProtectedBroadcasts()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataCredentialProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppDataDeviceProtectedDirForSystemUser:Ljava/lang/String;

    return-object v0
.end method

.method public getLongVersionCode()J
    .locals 2

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getManifestPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeLibraryRootDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSeInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSeInfoUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCpuAbi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryNativeLibraryDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUuid()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return v0
.end method

.method public hideAsFinal()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->assignDerivedFields()V

    return-object p0
.end method

.method public hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-super {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->hideAsParsed()Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic hideAsParsed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->hideAsParsed()Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public isCoreApp()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFactoryTest()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isNativeLibraryRootRequiresIsa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return v0
.end method

.method public isOdm()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isOem()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPrivileged()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isProduct()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSignedWithPlatformKey()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isStub()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSystemExt()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVendor()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Landroid/content/pm/parsing/component/ParsedActivity;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedService;->getFlags()I

    move-result v6

    and-int/2addr v6, v3

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2}, Landroid/content/pm/parsing/component/ParsedService;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedProvider;->getFlags()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_4

    invoke-virtual {v6, v2}, Landroid/content/pm/parsing/component/ParsedProvider;->setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method public bridge synthetic markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic removePermission(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removePermission(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v2, p1}, Landroid/content/pm/parsing/component/ParsedActivity;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v3, p1}, Landroid/content/pm/parsing/component/ParsedActivity;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v4, p1}, Landroid/content/pm/parsing/component/ParsedProvider;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v5, p1}, Landroid/content/pm/parsing/component/ParsedService;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method public bridge synthetic setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setAllComponentsDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseApkPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBaseCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setCodePath(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCoreApp(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDefaultToDeviceProtectedStorage(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setDirectBootAware(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setFactoryTest(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    return-object p0
.end method

.method public bridge synthetic setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setNativeLibraryRootRequiresIsa(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setOdm(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOdm(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setOem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setOem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedPermission;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/parsing/component/ParsedPermission;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->permissionGroups:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedPermissionGroup;

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->activities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->providers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/parsing/component/ParsedProvider;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_5

    iget-object v7, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->services:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/parsing/component/ParsedService;

    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/parsing/component/ParsedService;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_6

    iget-object v8, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->instrumentations:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    iget-object v9, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->setPackageName(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_6
    return-object p0
.end method

.method public bridge synthetic setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPackageName(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPersistent(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setPrivileged(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setProduct(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setProduct(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRealPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setRestrictUpdateHash([B)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSeInfoUser(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSignedWithPlatformKey(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 4

    iput-object p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->splitCodePaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSplitCodePaths([Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setStub(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setStub(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSystem(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystem(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setSystemExt(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    return-object p0
.end method

.method public bridge synthetic setUid(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setUid(I)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setBoolean(IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public bridge synthetic setVendor(Z)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->setVendor(Z)Lcom/android/server/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVersionCode(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCode:I

    return-object p0
.end method

.method public setVersionCodeMajor(I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    iput p1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->versionCodeMajor:I

    return-object p0
.end method

.method public toAppInfoToString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageImpl{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .locals 2

    invoke-super {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlags:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBaseAppInfoPrivateFlagsExt:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->writeToParcel(Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->nativeLibraryRootRequiresIsa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->mBooleans:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
