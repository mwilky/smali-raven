.class public Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbEndpointDescriptor.java"


# static fields
.field public static final DIRECTION_INPUT:I = 0x80

.field public static final DIRECTION_OUTPUT:I = 0x0

.field public static final MASK_ATTRIBS_SYNCTYPE:B = 0xct

.field public static final MASK_ATTRIBS_TRANSTYPE:I = 0x3

.field public static final MASK_ATTRIBS_USEAGE:I = 0x30

.field public static final MASK_ENDPOINT_ADDRESS:I = 0xf

.field public static final MASK_ENDPOINT_DIRECTION:I = -0x80

.field public static final SYNCTYPE_ADAPTSYNC:B = 0x8t

.field public static final SYNCTYPE_ASYNC:B = 0x4t

.field public static final SYNCTYPE_NONE:B = 0x0t

.field public static final SYNCTYPE_RESERVED:B = 0xct

.field private static final TAG:Ljava/lang/String; = "UsbEndpointDescriptor"

.field public static final TRANSTYPE_BULK:I = 0x2

.field public static final TRANSTYPE_CONTROL:I = 0x0

.field public static final TRANSTYPE_INTERRUPT:I = 0x3

.field public static final TRANSTYPE_ISO:I = 0x1

.field public static final USEAGE_DATA:I = 0x0

.field public static final USEAGE_EXPLICIT:I = 0x20

.field public static final USEAGE_FEEDBACK:I = 0x10

.field public static final USEAGE_RESERVED:I = 0x30


# instance fields
.field private mAttributes:I

.field private mEndpointAddress:I

.field private mInterval:I

.field private mPacketSize:I

.field private mRefresh:B

.field private mSyncAddress:B


# direct methods
.method public constructor <init>(IB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 v0, v0, -0x80

    return v0
.end method

.method public getEndpointAddress()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    return v0
.end method

.method public getPacketSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    return v0
.end method

.method public getRefresh()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    return v0
.end method

.method public getSyncAddress()B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    :cond_0
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getEndpointAddress()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " [out]"

    goto :goto_0

    :cond_0
    const-string v1, " [in]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getAttributes()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "Interrupt"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v1, "Bulk"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "Iso"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v1, "Control"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v1, "Aync: "

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0xc

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "ADAPTIVE ASYNC"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    const-string v1, "ASYNC"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    const-string v1, "NONE"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string v1, "Useage: "

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x30

    sparse-switch v1, :sswitch_data_1

    goto :goto_3

    :sswitch_3
    const-string v1, "RESERVED"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_4
    const-string v1, "EXPLICIT FEEDBACK"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_5
    const-string v1, "FEEDBACK"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_6
    const-string v1, "DATA"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    nop

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getPacketSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x10 -> :sswitch_5
        0x20 -> :sswitch_4
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;
    .locals 5

    new-instance v0, Landroid/hardware/usb/UsbEndpoint;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object v0
.end method
