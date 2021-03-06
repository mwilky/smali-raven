.class public Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnIkev2Utils$Ikev2VpnNetworkCallback;,
        Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;,
        Lcom/android/server/connectivity/VpnIkev2Utils$IkeSessionCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/VpnIkev2Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ipsec/ike/ChildSessionParams;"
        }
    .end annotation

    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    invoke-static {p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->getChildSaProposals(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/ChildSaProposal;

    invoke-virtual {v0, v2}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_0

    :cond_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object v1

    return-object v1
.end method

.method static buildIkeSessionParams(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .locals 5

    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-direct {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/connectivity/VpnIkev2Utils;->setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    invoke-static {}, Lcom/android/server/connectivity/VpnIkev2Utils;->getIkeSaProposals()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-virtual {v2, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    return-object v3
.end method

.method private static getChildSaProposals(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/ChildSaProposal;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0xc

    const/16 v10, 0xd

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v11, "rfc3686(ctr(aes))"

    invoke-interface {p0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v6, v10, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_0
    const-string v10, "cbc(aes)"

    invoke-interface {p0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v6, v9, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_1
    goto :goto_0

    :cond_2
    const-string v7, "hmac(sha512)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_3
    const-string v7, "hmac(sha384)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v10}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_4
    const-string v7, "hmac(sha256)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_5
    const-string/jumbo v7, "xcbc(aes)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_6
    const-string v7, "cmac(aes)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_7
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    const-string v9, "Missing integrity algorithm when buildling Child SA proposal"

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    const-string/jumbo v7, "rfc7539esp(chacha20,poly1305)"

    invoke-interface {p0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x1c

    invoke-virtual {v6, v7, v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_a
    const-string/jumbo v4, "rfc4106(gcm(aes))"

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x14

    invoke-virtual {v6, v4, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v7, 0x13

    invoke-virtual {v6, v7, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v8, 0x12

    invoke-virtual {v6, v8, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v4, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v7, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v8, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v4, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v7, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-virtual {v6, v8, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    :cond_b
    invoke-virtual {v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method private static getIkeSaProposals()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v2, 0xd

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v5, 0xc0

    invoke-virtual {v1, v2, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v1, v4, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v6, 0x80

    invoke-virtual {v1, v2, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v1, v4, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    new-instance v8, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x14

    invoke-virtual {v8, v9, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v11, 0x13

    invoke-virtual {v8, v11, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v12, 0x12

    invoke-virtual {v8, v12, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v9, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v11, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v12, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v9, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v11, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v8, v12, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v3, 0x2

    new-array v5, v3, [Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    aput-object v1, v5, v10

    const/4 v6, 0x1

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x1f

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x7

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x6

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v6, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v6, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-virtual {v6, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeTrafficSelector;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeTrafficSelector;

    new-instance v3, Lcom/android/net/module/util/IpRange;

    iget-object v4, v2, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v5, v2, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5}, Lcom/android/net/module/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v3}, Lcom/android/net/module/util/IpRange;->asIpPrefixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpPrefix;

    new-instance v5, Landroid/net/RouteInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v4, v7, v7, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 3

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "@#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v1

    :cond_0
    const-string v1, "@@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v1

    :cond_4
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IP version not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    :cond_7
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 3

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auth method set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getRsaPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPresharedKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
