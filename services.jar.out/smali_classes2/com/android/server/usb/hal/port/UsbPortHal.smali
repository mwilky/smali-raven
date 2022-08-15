.class public interface abstract Lcom/android/server/usb/hal/port/UsbPortHal;
.super Ljava/lang/Object;
.source "UsbPortHal.java"


# virtual methods
.method public abstract enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
.end method

.method public abstract enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
.end method

.method public abstract enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract getUsbHalVersion()I
    .annotation build Landroid/hardware/usb/UsbManager$UsbHalVersion;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryPortStatus(J)V
.end method

.method public abstract resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
.end method

.method public abstract switchDataRole(Ljava/lang/String;IJ)V
.end method

.method public abstract switchMode(Ljava/lang/String;IJ)V
.end method

.method public abstract switchPowerRole(Ljava/lang/String;IJ)V
.end method

.method public abstract systemReady()V
.end method
