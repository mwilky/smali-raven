.class public Lcom/android/systemui/shared/plugins/PluginInstance;
.super Ljava/lang/Object;
.source "PluginInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginInstance$InstanceFactory;,
        Lcom/android/systemui/shared/plugins/PluginInstance$VersionChecker;,
        Lcom/android/systemui/shared/plugins/PluginInstance$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mPlugin:Lcom/android/systemui/plugins/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersionInfo:Lcom/android/systemui/shared/plugins/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/plugins/PluginInstance;->sClassLoaders:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;Lcom/android/systemui/shared/plugins/VersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mVersionInfo:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/plugins/PluginInstance;->sClassLoaders:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public containsPluginClass(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getPluginContext()Landroid/content/Context;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method public getVersionInfo()Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mVersionInfo:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Lcom/android/systemui/plugins/PluginListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {p2, p1, p0}, Lcom/android/systemui/plugins/PluginListener;->onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Lcom/android/systemui/plugins/Plugin;

    instance-of p1, p0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    :cond_0
    return-void
.end method
