.class Lcom/android/server/BluetoothDeviceConfigListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceConfigListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceConfigListener"


# instance fields
.field private final mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mLogDebug:Z

.field private final mService:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/BluetoothDeviceConfigListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothDeviceConfigListener$1;-><init>(Lcom/android/server/BluetoothDeviceConfigListener;)V

    iput-object v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mDeviceConfigChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    iput-object p1, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mService:Lcom/android/server/BluetoothManagerService;

    iput-boolean p2, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mLogDebug:Z

    sget-object v1, Lcom/android/server/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/BluetoothDeviceConfigListener$$ExternalSyntheticLambda0;

    const-string v2, "bluetooth"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothDeviceConfigListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mLogDebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/BluetoothDeviceConfigListener;)Lcom/android/server/BluetoothManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BluetoothDeviceConfigListener;->mService:Lcom/android/server/BluetoothManagerService;

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
