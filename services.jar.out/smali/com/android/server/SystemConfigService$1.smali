.class Lcom/android/server/SystemConfigService$1;
.super Landroid/os/ISystemConfig$Stub;
.source "SystemConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemConfigService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemConfigService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-direct {p0}, Landroid/os/ISystemConfig$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$0(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 2

    nop

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierAssociatedAppEntries requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierAssociatedApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda2;

    sget-object v2, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSystemPermissionUids(Ljava/lang/String;)[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v2, "getSystemPermissionUids requires GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v2

    return-object v2
.end method
