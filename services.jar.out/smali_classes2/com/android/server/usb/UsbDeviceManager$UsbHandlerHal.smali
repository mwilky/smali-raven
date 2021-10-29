.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerHal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
    }
.end annotation


# static fields
.field private static final ENUMERATION_TIME_OUT_MS:I = 0x7d0

.field protected static final GADGET_HAL_FQ_NAME:Ljava/lang/String; = "android.hardware.usb.gadget@1.0::IUsbGadget"

.field private static final SET_FUNCTIONS_LEEWAY_MS:I = 0x1f4

.field private static final SET_FUNCTIONS_TIMEOUT_MS:I = 0xbb8

.field private static final USB_GADGET_HAL_DEATH_COOKIE:I = 0x7d0


# instance fields
.field private mCurrentRequest:I

.field protected mCurrentUsbFunctionsRequested:Z

.field private mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

.field private final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 9

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    :try_start_0
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v3

    const-string v4, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v5, ""

    invoke-interface {v3, v4, v5, v2}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to register usb gadget service start notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v7, 0x7d0

    invoke-interface {v5, v6, v7, v8}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mUsbSpeed:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v4, v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbGadgetHalVersion()V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb Gadget hal not responding"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usb gadget hal not found"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return v0
.end method

.method private setUsbConfig(JZ)V
    .locals 11

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUsbConfig mGadgetProxy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_1
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    goto :goto_0

    :cond_1
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    :goto_0
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    move-object v8, v3

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v1, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mConnected:Z

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v0, p3, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->sendMessageDelayed(IZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto/16 :goto_5

    :cond_0
    nop

    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    invoke-static {v2}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    monitor-exit v0

    goto/16 :goto_5

    :cond_1
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    monitor-exit v0

    goto/16 :goto_5

    :cond_2
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    monitor-exit v0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :cond_3
    nop

    :try_start_2
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v1, v2}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get UsbSpeed failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reset Usb Gadget mGadgetProxy is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_5

    :cond_5
    nop

    :try_start_5
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset Usb Gadget failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    move v0, v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v5, 0x7d0

    invoke-interface {v2, v4, v5, v6}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_7
    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_8
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb Gadget hal not responding"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Usb gadget hal not found"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_3
    monitor-exit v3

    goto/16 :goto_5

    :goto_4
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_a

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_5

    :pswitch_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "prcessing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsReceived:Z

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updating mCurrentFunctions"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFunctions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "applied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_8

    move v1, v2

    :cond_8
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->finishBoot()V

    goto :goto_5

    :pswitch_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_a

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_5

    :pswitch_8
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    nop

    :cond_a
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setEnabledFunctions(JZ)V
    .locals 5

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentGadgetHalVersion:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not set unsupported function for the GadgetHal"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting USB config to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctions:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentFunctionsApplied:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->getAppliedFunctions(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mBootCompleted:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->updateUsbStateBroadcastIfNeeded(J)V

    :cond_3
    return-void
.end method
