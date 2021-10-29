.class public Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;
.super Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
.source "SystemLocationPowerSaveModeHelper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/injector/LocationPowerSaveModeHelper;",
        "Ljava/util/function/Consumer<",
        "Landroid/os/PowerSaveState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mLocationPowerSaveMode:I

.field private mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public accept(Landroid/os/PowerSaveState;)V
    .locals 3

    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/PowerSaveState;->locationMode:I

    :goto_0
    iget v1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->accept(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public getLocationPowerSaveMode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    return v0
.end method

.method public synthetic lambda$accept$0$SystemLocationPowerSaveModeHelper(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->notifyLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    iput-boolean v1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    return-void
.end method
