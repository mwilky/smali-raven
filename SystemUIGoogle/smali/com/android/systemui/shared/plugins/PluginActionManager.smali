.class public Lcom/android/systemui/shared/plugins/PluginActionManager;
.super Ljava/lang/Object;
.source "PluginActionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginActionManager$PluginContextWrapper;,
        Lcom/android/systemui/shared/plugins/PluginActionManager$Factory;
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


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mAllowMultiple:Z

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mIsDebuggable:Z

.field private final mListener:Lcom/android/systemui/plugins/PluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field private final mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

.field private final mPluginInstances:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/plugins/PluginInstance<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPrivilegedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1J013yPjqW1h78J0FyIon-FoVCQ(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$removePkg$4(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8TM7K2rxqRKfAu55Vw3Zcf26ozs(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$handleQueryPlugins$5(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWzagWxnH7QoNH7ZAC9-VqRJxlg(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$queryAll$3(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBZKG6dtfbpWOlthMBUiG2NGTM4(Lcom/android/systemui/shared/plugins/PluginActionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->queryAll()V

    return-void
.end method

.method public static synthetic $r8$lambda$nTrqaXNoyZ9Ewe_oMzlt3sqKZco(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$reloadPackage$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pBQrwk3hQN6yH77r52dt5cnCyVw(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$destroy$0(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRQyi7k9O-R4crA50YERIw8utIE(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->lambda$onPackageRemoved$1(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLandroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/shared/plugins/PluginEnabler;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/shared/plugins/PluginInstance$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPrivilegedPlugins:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginClass:Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    iput-boolean p6, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    iput-object p10, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p11, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    iput-object p13, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    invoke-virtual {v0, p12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iput-boolean p9, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mIsDebuggable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLandroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;Lcom/android/systemui/shared/plugins/PluginActionManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/systemui/shared/plugins/PluginActionManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZLandroid/app/NotificationManager;Lcom/android/systemui/shared/plugins/PluginEnabler;Ljava/util/List;Lcom/android/systemui/shared/plugins/PluginInstance$Factory;)V

    return-void
.end method

.method private disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/plugins/PluginInstance<",
            "TT;>;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstance;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->isPluginPrivileged(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginInstanceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple plugins found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginInstanceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->loadPluginComponent(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private synthetic lambda$destroy$0(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->onPluginDisconnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method private synthetic lambda$handleQueryPlugins$5(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->onPluginConnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method private synthetic lambda$onPackageRemoved$1(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->removePkg(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$queryAll$3(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->onPluginDisconnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method private synthetic lambda$reloadPackage$2(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->removePkg(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->queryPkg(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$removePkg$4(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->onPluginDisconnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V

    return-void
.end method

.method private loadPluginComponent(Landroid/content/ComponentName;)Lcom/android/systemui/shared/plugins/PluginInstance;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/shared/plugins/PluginInstance<",
            "TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mIsDebuggable:Z

    const-string v1, "PluginInstanceManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->isPluginPrivileged(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plugin cannot be loaded on production build: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "com.android.systemui.permission.PLUGIN"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Plugin doesn\'t have permission: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstanceFactory:Lcom/android/systemui/shared/plugins/PluginInstance$Factory;

    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginClass:Ljava/lang/Class;

    invoke-virtual {v4, v5, v3, p1, v6}, Lcom/android/systemui/shared/plugins/PluginInstance$Factory;->create(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/PluginInstance;

    move-result-object p0
    :try_end_1
    .catch Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v3}, Lcom/android/systemui/shared/plugins/PluginActionManager;->reportInvalidVersion(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load plugin: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private onPluginConnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/plugins/PluginInstance<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->onCreate(Landroid/content/Context;Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method

.method private onPluginDisconnected(Lcom/android/systemui/shared/plugins/PluginInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/plugins/PluginInstance<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->onDestroy(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method

.method private queryAll()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstance;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginActionManager;->handleQueryPlugins(Ljava/lang/String;)V

    return-void
.end method

.method private queryPkg(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAllowMultiple:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager;->handleQueryPlugins(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private removePkg(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstance;

    invoke-virtual {v1}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportInvalidVersion(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;)V
    .locals 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "stat_sys_warning"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "system_notification_accent_color"

    const-string v4, "color"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    const-string v4, "ALR"

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    move-result v1

    const-string v3, "Plugin \""

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is too old"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact plugin developer to get an updated version.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is too new"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check to see if an OTA is available.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4000000

    invoke-static {p2, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$Action$Builder;

    const/4 v1, 0x0

    const-string v2, "Disable plugin"

    invoke-direct {p2, v1, v2, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x6

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Plugin has invalid interface version "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;->getActualVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;->getExpectedVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginInstanceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstance;

    invoke-virtual {v2}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/shared/plugins/PluginActionManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TC;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstance;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/plugins/PluginInstance;->containsPluginClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->getVersionInfo()Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->getVersionInfo()Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/plugins/VersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/plugins/PluginInstance;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Lcom/android/systemui/shared/plugins/PluginInstance;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableAll()Z
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPluginInstances:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/plugins/PluginInstance;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/shared/plugins/PluginActionManager;->disable(Lcom/android/systemui/shared/plugins/PluginInstance;I)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method isPluginPrivileged(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mPrivilegedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public loadAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/plugins/PluginActionManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shared/plugins/PluginActionManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginActionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginActionManager;->mAction:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s@%s (action=%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
