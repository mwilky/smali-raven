.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceFold:Z

.field private static sDeviceRotation:I

.field private static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field private static sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private static final sFoldStateLock:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field private static final sRotationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .locals 2

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method static enable()V
    .locals 3

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$enable$0(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->updateFoldState(Z)V

    return-void
.end method

.method private static publishRotation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "publishing device rotation ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (x90deg)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService.RotationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown device rotation"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static updateFoldState(Z)V
    .locals 2

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    if-eq v1, p0, :cond_1

    sput-boolean p0, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    if-eqz p0, :cond_0

    const-string v1, "device_folded=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "device_folded=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static updateOrientation()V
    .locals 3

    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v2, :cond_0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
