.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbASFormat.java"


# instance fields
.field public final mFormatType:B


# direct methods
.method public constructor <init>(IBBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result p0

    const/4 p1, 0x1

    const/16 v0, 0x200

    if-eq v4, p1, :cond_3

    const/4 p1, 0x2

    if-eq v4, p1, :cond_1

    const/4 p0, 0x3

    if-eq v4, p0, :cond_0

    new-instance p0, Lcom/android/server/usb/descriptors/UsbASFormat;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;-><init>(IBBBI)V

    return-object p0

    :cond_1
    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatII;-><init>(IBBBI)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;-><init>(IBBBI)V

    return-object p0

    :cond_3
    if-ne p0, v0, :cond_4

    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatI;-><init>(IBBBI)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;-><init>(IBBBI)V

    return-object p0
.end method


# virtual methods
.method public getFormatType()B
    .locals 0

    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbASFormat;->getFormatType()B

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getFormatName(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    return-void
.end method
