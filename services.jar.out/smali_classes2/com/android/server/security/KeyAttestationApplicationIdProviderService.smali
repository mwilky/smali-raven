.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x434

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "This service can only be used by Keystore or Credstore"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    array-length v6, v4

    new-array v6, v6, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    move-object v1, v6

    const/4 v6, 0x0

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v8, v4, v6

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    new-instance v8, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v9, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    iget-object v12, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V

    aput-object v8, v1, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v4, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {v4, v1}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object v4

    :cond_3
    :try_start_1
    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "No packages for uid"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v5, Landroid/os/RemoteException;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
