.class Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;
.super Ljava/lang/Object;
.source "RebootEscrowProviderHalImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RebootEscrowProviderHal"


# instance fields
.field private final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method

.method constructor <init>(Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    return-void
.end method


# virtual methods
.method public clearRebootEscrowKey()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    :try_start_0
    new-array v1, v1, [B

    invoke-interface {v0, v1}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RebootEscrowProviderHal"

    const-string v3, "Could not call RebootEscrow HAL to shred key"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 8

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RebootEscrowProviderHal"

    if-nez v0, :cond_0

    const-string v3, "Had reboot escrow data for users, but RebootEscrow HAL is unavailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/rebootescrow/IRebootEscrow;->retrieveKey()[B

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "Had reboot escrow data for users, but could not retrieve key"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    array-length v4, v3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IRebootEscrow returned key of incorrect size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    aget-byte v7, v3, v6

    or-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    const-string v5, "IRebootEscrow returned an all-zeroes key"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    new-array v5, v5, [B

    invoke-interface {v0, v5}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    invoke-static {v3}, Lcom/android/server/locksettings/RebootEscrowKey;->fromKeyBytes([B)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got service-specific exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception v3

    const-string v4, "Could not retrieve escrow data"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasRebootEscrowSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl$Injector;->getRebootEscrow()Landroid/hardware/rebootescrow/IRebootEscrow;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RebootEscrowProviderHal"

    if-nez v0, :cond_0

    const-string v3, "Escrow marked as ready, but RebootEscrow HAL is unavailable"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKey;->getKeyBytes()[B

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    const-string v3, "Reboot escrow key stored with RebootEscrow HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v3

    const-string v4, "Failed escrow secret to RebootEscrow HAL"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
