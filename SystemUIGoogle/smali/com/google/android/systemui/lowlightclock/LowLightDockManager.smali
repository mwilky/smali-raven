.class public final Lcom/google/android/systemui/lowlightclock/LowLightDockManager;
.super Ljava/lang/Object;
.source "LowLightDockManager.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAmbientLightModeMonitor:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

.field public final mClients:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mIsDocked:Z

.field public mIsLowLight:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenSaverEnabledByDefaultConfig:Z

.field public mScreenSaverEnabledSetting:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "LowLightDockManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/PowerManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsLowLight:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsDocked:Z

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mClients:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mAmbientLightModeMonitor:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mPowerManager:Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.DOCK_EVENT"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$1;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightDockManager;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->processDockEvent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110121

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mScreenSaverEnabledByDefaultConfig:Z

    new-instance p1, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager$2;-><init>(Lcom/google/android/systemui/lowlightclock/LowLightDockManager;)V

    const-string/jumbo p2, "screensaver_enabled"

    const/4 p3, -0x2

    invoke-interface {p4, p2, p1, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->updateScreenSaverEnabledSetting()V

    return-void
.end method


# virtual methods
.method public final addAlignmentStateListener(Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;)V
    .locals 0

    return-void
.end method

.method public final addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/legacysplitscreen/DividerView$3$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView$3$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchDockStateToClients()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->getDockState()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/dock/DockManager$DockEventListener;->onEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getDockState()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsDocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsLowLight:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mScreenSaverEnabledSetting:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsDocked:Z

    return p0
.end method

.method public final isHidden()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->getDockState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processDockEvent(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsDocked:Z

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mIsDocked:Z

    const-string p1, "AmbientLightModeMonitor"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mAmbientLightModeMonitor:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Object;)V

    sget-boolean v3, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "start monitoring ambient light mode"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->lightSensor:Landroid/hardware/Sensor;

    if-nez v4, :cond_4

    if-eqz v3, :cond_7

    const-string v0, "light sensor not available"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->algorithm:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

    invoke-interface {p1, v2}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;->start(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda20;)V

    iget-object p1, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->sensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v2, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->mSensorEventListener:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mAmbientLightModeMonitor:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    sget-boolean v1, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->DEBUG:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "stop monitoring ambient light mode"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->algorithm:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

    invoke-interface {p1}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;->stop()V

    iget-object p1, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->sensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;->mSensorEventListener:Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$mSensorEventListener$1;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->dispatchDockStateToClients()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateScreenSaverEnabledSetting()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mScreenSaverEnabledByDefaultConfig:Z

    const/4 v2, -0x2

    const-string/jumbo v3, "screensaver_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->mScreenSaverEnabledSetting:Z

    if-nez v0, :cond_1

    const-string v0, "LowLightDockManager"

    const-string v1, "Disabling low-light clock because screen saver has been disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;->dispatchDockStateToClients()V

    return-void
.end method
