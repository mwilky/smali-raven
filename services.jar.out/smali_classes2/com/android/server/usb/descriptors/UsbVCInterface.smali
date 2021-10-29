.class public abstract Lcom/android/server/usb/descriptors/UsbVCInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbVCInterface"

.field public static final VCI_EXTENSION_UNIT:B = 0x6t

.field public static final VCI_INPUT_TERMINAL:B = 0x2t

.field public static final VCI_OUTPUT_TERMINAL:B = 0x3t

.field public static final VCI_PROCESSING_UNIT:B = 0x5t

.field public static final VCI_SELECTOR_UNIT:B = 0x4t

.field public static final VCI_UNDEFINED:B = 0x0t

.field public static final VCI_VEADER:B = 0x1t


# instance fields
.field protected final mSubtype:B


# direct methods
.method public constructor <init>(IBB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbVCInterface;->mSubtype:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Video Class Interface subtype: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsbVCInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;-><init>(IBB)V

    return-object v2

    :pswitch_2
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;-><init>(IBB)V

    return-object v2

    :pswitch_3
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;-><init>(IBB)V

    return-object v2

    :pswitch_4
    new-instance v2, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;-><init>(IBB)V

    return-object v2

    :pswitch_5
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setVCInterfaceSpec(I)V

    new-instance v3, Lcom/android/server/usb/descriptors/UsbVCHeader;

    invoke-direct {v3, p2, p3, v0, v2}, Lcom/android/server/usb/descriptors/UsbVCHeader;-><init>(IBBI)V

    return-object v3

    :pswitch_6
    nop

    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
