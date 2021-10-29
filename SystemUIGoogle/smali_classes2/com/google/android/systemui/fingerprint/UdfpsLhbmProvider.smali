.class public Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;
.super Ljava/lang/Object;
.source "UdfpsLhbmProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private volatile mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;

    return-void
.end method

.method private getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "com.google.hardware.pixel.display.IDisplay/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "UdfpsLhbmProvider"

    if-nez v0, :cond_1

    const-string p0, "getDisplayHal | Failed to find the Display HAL"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/google/hardware/pixel/display/IDisplay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getDisplayHal | Failed to link to death"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "UdfpsLhbmProvider"

    const-string v1, "binderDied | Display HAL died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    return-void
.end method

.method public disableLhbm()V
    .locals 2

    const-string v0, "UdfpsLhbmProvider"

    const-string v1, "disableLhbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "disableLhbm | displayHal is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Lcom/google/hardware/pixel/display/IDisplay;->setLhbmState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "disableLhbm | RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableLhbm()V
    .locals 2

    const-string v0, "UdfpsLhbmProvider"

    const-string v1, "enableLhbm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "enableLhbm | displayHal is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p0, v1}, Lcom/google/hardware/pixel/display/IDisplay;->setLhbmState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "enableLhbm | RemoteException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
