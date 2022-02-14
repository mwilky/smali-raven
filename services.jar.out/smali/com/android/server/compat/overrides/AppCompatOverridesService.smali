.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService;
.super Ljava/lang/Object;
.source "AppCompatOverridesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;,
        Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;,
        Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;
    }
.end annotation


# static fields
.field private static final SUPPORTED_NAMESPACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppCompatOverridesService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private final mSupportedNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "app_compat_overrides"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    nop

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    sget-object v1, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/compat/IPlatformCompat;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    iput-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    new-instance v1, Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    invoke-direct {v1, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService$1;)V

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    new-instance v4, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    iget-object v5, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v2, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/compat/overrides/AppCompatOverridesService$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyAllOverrides(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->addAllPackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->isInstalledForAnyUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeOverrides(Ljava/util/Map;)V

    return-void
.end method

.method private addAllPackageOverrides(Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    nop

    const-string v3, ""

    invoke-static {v2, p1, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v2, v11}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/util/Set;

    const/4 v10, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v8, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyPackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyAllOverrides(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/provider/DeviceConfig$Properties;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v1, "owned_change_ids"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "remove_overrides"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/util/Set;

    const/4 v10, 0x1

    move-object v3, p0

    move-object v5, v2

    move-object v8, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyPackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyPackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;Ljava/util/Set;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p1, p3, p4, p6}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parsePackageOverrides(Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p7, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    const-string/jumbo v1, "remove_overrides"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parseRemoveOverrides(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    nop

    const-string/jumbo v0, "owned_change_ids"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parseOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-wide v1, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private isInstalledForAnyUser(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppCompatOverridesService"

    const-string v3, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private removeAllPackageOverrides(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeOverrides(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/compat/IPlatformCompat;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppCompatOverridesService"

    const-string v3, "Failed to call IPlatformCompat#removeOverridesOnReleaseBuilds"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterDeviceConfigListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->access$300(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    invoke-static {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->access$500(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->unregisterDeviceConfigListeners()V

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->unregisterPackageReceiver()V

    return-void
.end method

.method registerDeviceConfigListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->access$200(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method registerPackageReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    invoke-static {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->access$400(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V

    return-void
.end method
