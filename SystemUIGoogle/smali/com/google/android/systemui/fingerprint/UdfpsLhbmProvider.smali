.class public final Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;
.super Ljava/lang/Object;
.source "UdfpsLhbmProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public volatile mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string v0, "UdfpsLhbmProvider"

    const-string v1, "binderDied | Display HAL died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    return-void
.end method

.method public final getDisplayHal()Lcom/google/hardware/pixel/display/IDisplay;
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

    sget v1, Lcom/google/hardware/pixel/display/IDisplay$Stub;->$r8$clinit:I

    sget-object v1, Lcom/google/hardware/pixel/display/IDisplay;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/google/hardware/pixel/display/IDisplay;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/hardware/pixel/display/IDisplay;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;

    invoke-direct {v1, v0}, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/UdfpsLhbmProvider;->mDisplayHal:Lcom/google/hardware/pixel/display/IDisplay;

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "getDisplayHal | Failed to link to death"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
