.class Landroid/net/ConnectivityModuleConnector$DependenciesImpl;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityModuleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependenciesImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityModuleConnector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".InProcess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p4, :cond_2

    const/16 v3, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v3, 0x431

    :goto_1
    if-ne v1, v3, :cond_4

    if-nez p4, :cond_3

    invoke-static {p1, v2, p3}, Landroid/net/ConnectivityModuleConnector;->access$100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid network stack UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Could not check network stack UID; package not found."

    invoke-direct {v3, v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
