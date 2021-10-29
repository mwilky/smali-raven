.class public Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/PackageSetting;)I
    .locals 3

    move v0, p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 3

    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I
    .locals 0

    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 3

    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOdm()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlagsExt(ILcom/android/server/pm/PackageSetting;)I
    .locals 0

    return p0
.end method

.method public static appInfoPrivateFlagsExt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 2

    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlagsExt(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    return v1
.end method

.method private static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method private static assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V
    .locals 2

    nop

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    return-void
.end method

.method private static checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z
    .locals 3

    const/high16 v0, 0x20000000

    and-int v1, p3, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x402000

    and-int/2addr v1, p3

    if-nez v1, :cond_1

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private static flag(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/apex/ApexInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 12

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Landroid/content/pm/PackageUserState;

    invoke-direct {v8}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v10, p1

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Lcom/android/server/pm/PackageSetting;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p4, :cond_2

    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1, p2, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p4, p2, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2, p0, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v4

    iput-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_0
    iput-object v1, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    :cond_4
    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {v1, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    invoke-static {v1, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlagsExt(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILcom/android/server/pm/PackageSetting;)Landroid/content/pm/InstrumentationInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Landroid/content/pm/parsing/ParsingPackageRead;IIZ)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-static {v1, p0, p4, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V

    return-object v1
.end method

.method public static generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProcessInfo(Ljava/util/Map;I)Landroid/util/ArrayMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProcess;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Landroid/content/pm/ProcessInfo;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getGwpAsanMode()I

    move-result v9

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getMemtagMode()I

    move-result v10

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v11

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;III)V

    invoke-virtual {v1, v5, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_3

    const-string v2, "(null AppInfo)"

    goto :goto_0

    :cond_3
    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParsing"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_4
    if-nez p4, :cond_5

    return-object v0

    :cond_5
    invoke-static {p1, p2, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p4, :cond_2

    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    invoke-static {p1, p2, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    return-object v0
.end method

.method private static generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Lcom/android/server/pm/PackageSetting;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p2

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v11, p11

    invoke-static {v12, v13, v14, v15, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    if-nez v16, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object v12, v11

    move-object/from16 v11, v16

    invoke-static/range {v0 .. v11}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/PackageInfo;->isStub:Z

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/PackageInfo;->coreApp:Z

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_4

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_0
    if-ge v11, v8, :cond_3

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_1

    :cond_2
    move-object/from16 v18, v6

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_4
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_2
    if-ge v11, v8, :cond_6

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_3

    :cond_5
    move-object/from16 v18, v6

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_7
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_a

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_4
    if-ge v11, v8, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedService;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_5

    :cond_8
    move-object/from16 v18, v6

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_a
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_d

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_6
    if-ge v11, v8, :cond_c

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_7

    :cond_b
    move-object/from16 v18, v6

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_d
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_10

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_e

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    move-object/from16 v4, p0

    move-object v5, v12

    invoke-static {v3, v4, v13, v15, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILcom/android/server/pm/PackageSetting;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v4, p0

    move-object v5, v12

    goto :goto_9

    :cond_f
    move-object/from16 v4, p0

    move-object v5, v12

    goto :goto_9

    :cond_10
    move-object/from16 v4, p0

    move-object v5, v12

    :goto_9
    return-object v7
.end method

.method private static initForUser(Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static initForUser(Landroid/content/pm/InstrumentationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->SYSTEM_DATA_PATH:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataCredentialProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseAppDataDeviceProtectedDirForSystemUser()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v4, -0x2

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDefaultToDeviceProtectedStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    :goto_1
    return-void
.end method
