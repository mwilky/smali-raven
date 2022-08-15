.class public final Lcom/android/server/usb/descriptors/UsbVCHeader;
.super Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;
.source "UsbVCHeader.java"


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    move-result p0

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    return-void
.end method
