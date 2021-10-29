.class public Landroid/net/netlink/ConntrackMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "ConntrackMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/netlink/ConntrackMessage$TupleProto;,
        Landroid/net/netlink/ConntrackMessage$TupleIpv4;,
        Landroid/net/netlink/ConntrackMessage$Tuple;
    }
.end annotation


# static fields
.field public static final CTA_IP_V4_DST:S = 0x2s

.field public static final CTA_IP_V4_SRC:S = 0x1s

.field public static final CTA_PROTO_DST_PORT:S = 0x3s

.field public static final CTA_PROTO_NUM:S = 0x1s

.field public static final CTA_PROTO_SRC_PORT:S = 0x2s

.field public static final CTA_STATUS:S = 0x3s

.field public static final CTA_TIMEOUT:S = 0x7s

.field public static final CTA_TUPLE_IP:S = 0x1s

.field public static final CTA_TUPLE_ORIG:S = 0x1s

.field public static final CTA_TUPLE_PROTO:S = 0x2s

.field public static final CTA_TUPLE_REPLY:S = 0x2s

.field public static final DYING_MASK:I = 0x21e

.field public static final ESTABLISHED_MASK:I = 0x1e

.field public static final IPS_ASSURED:I = 0x4

.field public static final IPS_CONFIRMED:I = 0x8

.field public static final IPS_DST_NAT:I = 0x20

.field public static final IPS_DST_NAT_DONE:I = 0x100

.field public static final IPS_DYING:I = 0x200

.field public static final IPS_EXPECTED:I = 0x1

.field public static final IPS_FIXED_TIMEOUT:I = 0x400

.field public static final IPS_HELPER:I = 0x2000

.field public static final IPS_HW_OFFLOAD:I = 0x8000

.field public static final IPS_OFFLOAD:I = 0x4000

.field public static final IPS_SEEN_REPLY:I = 0x2

.field public static final IPS_SEQ_ADJUST:I = 0x40

.field public static final IPS_SRC_NAT:I = 0x10

.field public static final IPS_SRC_NAT_DONE:I = 0x80

.field public static final IPS_TEMPLATE:I = 0x800

.field public static final IPS_UNTRACKED:I = 0x1000

.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field public final nfGenMsg:Landroid/net/netlink/StructNfGenMsg;

.field public final status:I

.field public final timeoutSec:I

.field public final tupleOrig:Landroid/net/netlink/ConntrackMessage$Tuple;

.field public final tupleReply:Landroid/net/netlink/ConntrackMessage$Tuple;


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    new-instance v0, Landroid/net/netlink/StructNfGenMsg;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Landroid/net/netlink/StructNfGenMsg;-><init>(B)V

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->nfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->tupleOrig:Landroid/net/netlink/ConntrackMessage$Tuple;

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->tupleReply:Landroid/net/netlink/ConntrackMessage$Tuple;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netlink/ConntrackMessage;->status:I

    iput v0, p0, Landroid/net/netlink/ConntrackMessage;->timeoutSec:I

    return-void
.end method

.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;Landroid/net/netlink/StructNfGenMsg;Landroid/net/netlink/ConntrackMessage$Tuple;Landroid/net/netlink/ConntrackMessage$Tuple;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    iput-object p2, p0, Landroid/net/netlink/ConntrackMessage;->nfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    iput-object p3, p0, Landroid/net/netlink/ConntrackMessage;->tupleOrig:Landroid/net/netlink/ConntrackMessage$Tuple;

    iput-object p4, p0, Landroid/net/netlink/ConntrackMessage;->tupleReply:Landroid/net/netlink/ConntrackMessage$Tuple;

    iput p5, p0, Landroid/net/netlink/ConntrackMessage;->status:I

    iput p6, p0, Landroid/net/netlink/ConntrackMessage;->timeoutSec:I

    return-void
.end method

.method private static castToInet4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B
    .locals 10

    new-instance v0, Landroid/net/netlink/StructNlAttr;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    new-array v4, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v5, v1, p3}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    aput-object v5, v4, v6

    invoke-direct {v3, v6, v4}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/net/netlink/StructNlAttr;

    new-instance v8, Landroid/net/netlink/StructNlAttr;

    int-to-byte v9, p0

    invoke-direct {v8, v6, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SB)V

    aput-object v8, v5, v7

    new-instance v7, Landroid/net/netlink/StructNlAttr;

    int-to-short v8, p2

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v1, v8, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v7, v5, v6

    new-instance v7, Landroid/net/netlink/StructNlAttr;

    int-to-short v8, p4

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v4, v8, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v7, v5, v1

    invoke-direct {v3, v1, v5}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v3, v2, v6

    invoke-direct {v0, v6, v2}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    new-instance v1, Landroid/net/netlink/StructNlAttr;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p5, v2}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x14

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v5, Landroid/net/netlink/ConntrackMessage;

    invoke-direct {v5}, Landroid/net/netlink/ConntrackMessage;-><init>()V

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    array-length v8, v3

    iput v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x100

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x105

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iput v6, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {v5, v4}, Landroid/net/netlink/ConntrackMessage;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v4}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v4}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    return-object v3
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage;
    .locals 18

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/net/netlink/StructNfGenMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNfGenMsg;

    move-result-object v8

    const/4 v1, 0x0

    if-nez v8, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/net/netlink/StructNlAttr;->getValueAsBe32(I)I

    move-result v3

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x7

    invoke-static {v3, v0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/net/netlink/StructNlAttr;->getValueAsBe32(I)I

    move-result v3

    move v11, v3

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v3

    invoke-static {v3, v0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Landroid/net/netlink/ConntrackMessage;->parseTuple(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$Tuple;

    move-result-object v3

    move-object v12, v3

    goto :goto_2

    :cond_3
    move-object v12, v3

    :goto_2
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v3

    invoke-static {v3, v0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v13

    const/4 v2, 0x0

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/net/netlink/ConntrackMessage;->parseTuple(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$Tuple;

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :cond_4
    move-object v14, v2

    :goto_3
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v15, 0x14

    move-object/from16 v7, p0

    iget v2, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    add-int/lit8 v2, v2, -0x14

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v6, :cond_5

    return-object v1

    :cond_5
    add-int v1, v9, v6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v16, Landroid/net/netlink/ConntrackMessage;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v4, v12

    move-object v5, v14

    move/from16 v17, v6

    move v6, v10

    move v7, v11

    invoke-direct/range {v1 .. v7}, Landroid/net/netlink/ConntrackMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;Landroid/net/netlink/StructNfGenMsg;Landroid/net/netlink/ConntrackMessage$Tuple;Landroid/net/netlink/ConntrackMessage$Tuple;II)V

    return-object v16
.end method

.method private static parseTuple(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$Tuple;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v4

    invoke-static {v4, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/ConntrackMessage;->parseTupleIpv4(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$TupleIpv4;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v5

    invoke-static {v5, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/ConntrackMessage;->parseTupleProto(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$TupleProto;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Landroid/net/netlink/ConntrackMessage$Tuple;

    invoke-direct {v0, v1, v2}, Landroid/net/netlink/ConntrackMessage$Tuple;-><init>(Landroid/net/netlink/ConntrackMessage$TupleIpv4;Landroid/net/netlink/ConntrackMessage$TupleProto;)V

    return-object v0
.end method

.method private static parseTupleIpv4(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$TupleIpv4;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/ConntrackMessage;->castToInet4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, 0x2

    invoke-static {v5, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/ConntrackMessage;->castToInet4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Landroid/net/netlink/ConntrackMessage$TupleIpv4;

    invoke-direct {v0, v1, v2}, Landroid/net/netlink/ConntrackMessage$TupleIpv4;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    return-object v0
.end method

.method private static parseTupleProto(Ljava/nio/ByteBuffer;)Landroid/net/netlink/ConntrackMessage$TupleProto;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Landroid/net/netlink/StructNlAttr;->getValueAsByte(B)B

    move-result v1

    :cond_1
    sget v7, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-eq v1, v7, :cond_2

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-eq v1, v7, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x2

    invoke-static {v7, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Landroid/net/netlink/StructNlAttr;->getValueAsBe16(S)S

    move-result v2

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x3

    invoke-static {v7, p0}, Landroid/net/netlink/StructNlAttr;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v6}, Landroid/net/netlink/StructNlAttr;->getValueAsBe16(S)S

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    :cond_6
    new-instance v0, Landroid/net/netlink/ConntrackMessage$TupleProto;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/netlink/ConntrackMessage$TupleProto;-><init>(BSS)V

    return-object v0
.end method

.method public static stringForIpConntrackStatus(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "IPS_EXPECTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "IPS_SEEN_REPLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "IPS_ASSURED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "IPS_CONFIRMED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "IPS_SRC_NAT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "IPS_DST_NAT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "IPS_SEQ_ADJUST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "IPS_SRC_NAT_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v1, "IPS_DST_NAT_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "IPS_DYING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "IPS_FIXED_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v1, "IPS_TEMPLATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "IPS_UNTRACKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v1, "IPS_HELPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, "IPS_OFFLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v1, "IPS_HW_OFFLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMessageType()S
    .locals 1

    invoke-virtual {p0}, Landroid/net/netlink/ConntrackMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    iget-short v0, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    and-int/lit16 v0, v0, -0x101

    int-to-short v0, v0

    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->nfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNfGenMsg;->pack(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConntrackMessage{nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    sget v2, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/netlink/StructNlMsgHdr;->toString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nfgenmsg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage;->nfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, tuple_orig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage;->tupleOrig:Landroid/net/netlink/ConntrackMessage$Tuple;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, tuple_reply{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage;->tupleReply:Landroid/net/netlink/ConntrackMessage$Tuple;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, status{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/ConntrackMessage;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/ConntrackMessage;->status:I

    invoke-static {v1}, Landroid/net/netlink/ConntrackMessage;->stringForIpConntrackStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}, timeout_sec{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/netlink/ConntrackMessage;->timeoutSec:I

    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
