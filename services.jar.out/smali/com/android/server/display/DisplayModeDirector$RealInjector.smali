.class Lcom/android/server/display/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method


# virtual methods
.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceConfig()Lcom/android/server/utils/DeviceConfigInterface;
    .locals 1

    sget-object v0, Lcom/android/server/utils/DeviceConfigInterface;->REAL:Lcom/android/server/utils/DeviceConfigInterface;

    return-object v0
.end method

.method public getThermalService()Landroid/os/IThermalService;
    .locals 1

    nop

    const-string/jumbo v0, "thermalservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v0

    return-object v0
.end method

.method public isDozeState(Landroid/view/Display;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    return v0
.end method

.method public registerBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    sget-object v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->DISPLAY_BRIGHTNESS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    sget-object v0, Lcom/android/server/display/DisplayModeDirector$RealInjector;->PEAK_REFRESH_RATE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
