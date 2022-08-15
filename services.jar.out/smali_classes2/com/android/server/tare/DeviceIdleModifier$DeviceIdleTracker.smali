.class public final Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/DeviceIdleModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdleTracker"
.end annotation


# instance fields
.field public volatile mDeviceIdle:Z

.field public volatile mDeviceLightIdle:Z

.field public mIsSetup:Z

.field public final synthetic this$0:Lcom/android/server/tare/DeviceIdleModifier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceLightIdle(Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tare/DeviceIdleModifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    iget-object p2, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p2}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p0}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    goto :goto_0

    :cond_0
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    iget-object p2, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p2}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    iget-object p0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p0}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmIrs(Lcom/android/server/tare/DeviceIdleModifier;)Lcom/android/server/tare/InternalResourceService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService;->onDeviceStateChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTracking(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceIdle:Z

    iget-object p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->this$0:Lcom/android/server/tare/DeviceIdleModifier;

    invoke-static {p1}, Lcom/android/server/tare/DeviceIdleModifier;->-$$Nest$fgetmPowerManager(Lcom/android/server/tare/DeviceIdleModifier;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mDeviceLightIdle:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    return-void
.end method

.method public stopTracking(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tare/DeviceIdleModifier$DeviceIdleTracker;->mIsSetup:Z

    return-void
.end method
