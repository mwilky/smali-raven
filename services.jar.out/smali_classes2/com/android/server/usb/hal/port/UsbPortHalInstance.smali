.class public final Lcom/android/server/usb/hal/port/UsbPortHalInstance;
.super Ljava/lang/Object;
.source "UsbPortHalInstance.java"


# direct methods
.method public static getInstance(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/port/UsbPortHal;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "Querying USB HAL version"

    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const-string v0, "USB HAL HIDL present"

    invoke-static {v2, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/android/server/usb/hal/port/UsbPortAidl;->isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "USB HAL AIDL present"

    invoke-static {v2, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/hal/port/UsbPortAidl;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-object v0

    :cond_1
    return-object v1
.end method
