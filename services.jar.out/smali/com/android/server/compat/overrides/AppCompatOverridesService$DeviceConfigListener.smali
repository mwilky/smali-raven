.class final Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "AppCompatOverridesService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/overrides/AppCompatOverridesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceConfigListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNamespace:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method private constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/compat/overrides/AppCompatOverridesService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->register()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->unregister()V

    return-void
.end method

.method private register()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private unregister()V
    .locals 0

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "remove_overrides"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "owned_change_ids"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->access$700(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->access$800(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {v4, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->access$900(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/util/Map;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    iget-object v5, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->mNamespace:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->access$1000(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {v4, p1, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->access$1100(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
