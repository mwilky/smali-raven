.class public Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiPacketConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbMidiDecoder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->this$0:Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V

    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .locals 3

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v2

    aget v1, v2, v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
