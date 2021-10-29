.class Lcom/android/server/usb/UsbSerialReader;
.super Landroid/hardware/usb/IUsbSerialReader$Stub;
.source "UsbSerialReader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDevice:Ljava/lang/Object;

.field private final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/usb/IUsbSerialReader$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method private enforcePackageBelongsToUid(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does to belong to the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v1, p1}, Lcom/android/server/usb/UsbSerialReader;->enforcePackageBelongsToUid(ILjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/usb/UsbSerialReader;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_USB"

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    instance-of v8, v8, Landroid/hardware/usb/UsbDevice;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v8, v7}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8, v9, p1, v0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/server/usb/UsbSerialReader;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v8, v7}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v8, v9, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v6, Landroid/os/RemoteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbSerialReader;->mSerialNumber:Ljava/lang/String;

    return-object v2
.end method

.method public setDevice(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    return-void
.end method
