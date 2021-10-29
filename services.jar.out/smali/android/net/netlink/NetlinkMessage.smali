.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;I)Landroid/net/netlink/NetlinkMessage;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget v3, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-short v4, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v5, 0xf

    if-gt v4, v5, :cond_3

    invoke-static {v1, p0, v3}, Landroid/net/netlink/NetlinkMessage;->parseCtlMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;I)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2

    return-object v2

    :cond_3
    sget v4, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    if-ne p1, v4, :cond_4

    invoke-static {v1, p0}, Landroid/net/netlink/NetlinkMessage;->parseRtMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2

    return-object v2

    :cond_4
    sget v4, Landroid/system/OsConstants;->NETLINK_INET_DIAG:I

    if-ne p1, v4, :cond_5

    invoke-static {v1, p0}, Landroid/net/netlink/NetlinkMessage;->parseInetDiagMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2

    return-object v2

    :cond_5
    sget v4, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    if-ne p1, v4, :cond_6

    invoke-static {v1, p0}, Landroid/net/netlink/NetlinkMessage;->parseNfMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2

    return-object v2

    :cond_6
    return-object v2

    :cond_7
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v2
.end method

.method private static parseCtlMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;I)Landroid/net/netlink/NetlinkMessage;
    .locals 1

    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object v0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static parseInetDiagMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 1

    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-static {p0, p1}, Landroid/net/netlink/InetDiagMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private static parseNfMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 1

    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    invoke-static {p0, p1}, Landroid/net/netlink/ConntrackMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseRtMessage(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 1

    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    invoke-static {p0, p1}, Landroid/net/netlink/NduseroptMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NduseroptMessage;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-static {p0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
