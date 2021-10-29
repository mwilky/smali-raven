.class public Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "PackageStateUnserialized.java"


# instance fields
.field private hiddenUntilInstalled:Z

.field private volatile lastPackageUsageTimeInMills:[J

.field private overrideSeInfo:Ljava/lang/String;

.field private updatedSystemApp:Z

.field private usesLibraryFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesLibraryInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-void
.end method

.method private __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static synthetic lambda$getNonNativeUsesLibraryInfos$0(Landroid/content/pm/SharedLibraryInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private lazyInitLastPackageUsageTimeInMills()[J
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public getLastPackageUsageTimeInMills()[J
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lazyInitLastPackageUsageTimeInMills()[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    move-object v0, v1

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLatestForegroundPackageUseTimeInMills()J
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-wide/16 v1, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v6

    aget-wide v6, v6, v5

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public getLatestPackageUseTimeInMills()J
    .locals 7

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getNonNativeUsesLibraryInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/pm/pkg/PackageStateUnserialized$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getOverrideSeInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUsesLibraryFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    return-object v0
.end method

.method public getUsesLibraryInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    return-object v0
.end method

.method public isHiddenUntilInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return v0
.end method

.method public isUpdatedSystemApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return v0
.end method

.method public setHiddenUntilInstalled(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    return-object p0
.end method

.method public setLastPackageUsageTimeInMills(IJ)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 1

    if-gez p1, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-object p0
.end method

.method public varargs setLastPackageUsageTimeInMills([J)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 3

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setOverrideSeInfo(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    return-object p0
.end method

.method public setUsesLibraryFiles(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setUsesLibraryInfos(Ljava/util/List;)Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;)",
            "Lcom/android/server/pm/pkg/PackageStateUnserialized;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/pm/pkg/PackageStateUnserialized;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->hiddenUntilInstalled:Z

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    iget-object v0, p1, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->overrideSeInfo:Ljava/lang/String;

    return-void
.end method
