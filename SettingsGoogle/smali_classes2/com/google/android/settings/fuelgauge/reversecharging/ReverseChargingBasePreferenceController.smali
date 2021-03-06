.class public abstract Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ReverseChargingBasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;
    }
.end annotation


# static fields
.field private static final AUDIO_CLASS:I = 0x1

.field private static final DELAY_TIME:J = 0x12cL

.field protected static final LOW_BATTERY_LEVEL:I = 0xa

.field private static final MAX_POWER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "RCBasePrefController"


# instance fields
.field protected mCharging:Z

.field protected final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsUsbPlugIn:Z

.field protected mLevel:I

.field protected mLevelChanged:Z

.field protected mPluggedIn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mReceiver:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;

.field mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

.field mThermalService:Landroid/os/IThermalService;

.field final mThresholdObserver:Landroid/database/ContentObserver;

.field final mUpdateStateRunnable:Ljava/lang/Runnable;

.field mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public static synthetic $r8$lambda$c2aX7v6msb5G0gHO9DwovqlAEPA(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->lambda$notifyChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    iput p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mLevel:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    new-instance p2, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$1;

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$1;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mThresholdObserver:Landroid/database/ContentObserver;

    new-instance p2, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$2;

    invoke-direct {p2, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$2;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;)V

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mUpdateStateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    const-class p2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    const-string p2, "thermalservice"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mThermalService:Landroid/os/IThermalService;

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;

    invoke-direct {p1, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;)V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReceiver:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->notifyChanged()V

    return-void
.end method

.method private synthetic lambda$notifyChanged$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->updateState()V

    return-void
.end method

.method private notifyChanged()V
    .locals 1

    new-instance v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUsbDevice()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p0, v1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->setIsUsbPlugin(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isSupportedReverseCharging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getThresholdLevel()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advanced_battery_usage_amount"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method protected isOverheat()Z
    .locals 7

    const-string v0, "RCBasePrefController"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mThermalService:Landroid/os/IThermalService;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object p0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOverheat() current skin status = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", temperature = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/Temperature;->getValue()F

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOverheat() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method protected isPowerSaveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onReverseChargingStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->notifyChanged()V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReceiver:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;

    iget-object v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->registerCallback(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;)V

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_battery_usage_amount"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mThresholdObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->updateUsbDevice()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReceiver:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController$BatteryLevelReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->unregisterCallback(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;)V

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mThresholdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method setIsUsbPlugin(Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    move v2, v0

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    move p1, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_3
    if-eqz v1, :cond_4

    if-nez p1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    iput-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingBasePreferenceController;->mIsUsbPlugIn:Z

    :cond_6
    return-void
.end method

.method public abstract updateState()V
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
