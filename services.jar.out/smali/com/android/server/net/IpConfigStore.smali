.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x3

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    return-object v1
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v5, :cond_0

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    if-eq v3, v6, :cond_0

    const-string v5, "Bad version on IP configuration file, ignore read"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    return-object v5

    :cond_0
    :goto_2
    const/4 v7, 0x0

    :try_start_2
    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v10, Landroid/net/StaticIpConfiguration;

    invoke-direct {v10}, Landroid/net/StaticIpConfiguration;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    :goto_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v17

    :try_start_3
    const-string v6, "id"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v5, v19

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    if-ge v3, v6, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v7, v19

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    move-object v3, v0

    goto/16 :goto_e

    :cond_2
    const/4 v6, 0x3

    :try_start_6
    const-string v6, "ipAssignment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v21, v3

    move-object v8, v6

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    goto/16 :goto_c

    :cond_3
    :try_start_8
    const-string/jumbo v6, "linkAddress"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_5

    :try_start_9
    new-instance v6, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v19, v10

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-direct {v6, v4, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v6

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    if-nez v11, :cond_4

    move-object v11, v4

    goto :goto_4

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-IPv4 or duplicate address: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    move/from16 v21, v3

    move-object/from16 v4, v18

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object v3, v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v19, v10

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object v3, v0

    goto/16 :goto_e

    :cond_5
    move-object/from16 v19, v10

    :try_start_b
    const-string v4, "gateway"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-ne v3, v10, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object v6, v10

    if-nez v12, :cond_6

    move-object v12, v6

    move/from16 v21, v3

    goto/16 :goto_6

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move/from16 v21, v3

    :try_start_d
    const-string v3, "Duplicate gateway: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    move/from16 v21, v3

    goto :goto_7

    :cond_7
    move/from16 v21, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    new-instance v3, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move-object/from16 v22, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v3

    goto :goto_5

    :cond_8
    move-object/from16 v22, v4

    :goto_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v6, v3

    :cond_9
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    if-nez v3, :cond_a

    if-nez v12, :cond_a

    move-object v12, v6

    goto :goto_6

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-IPv4 default or duplicate route: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    move-object/from16 v4, v18

    goto/16 :goto_c

    :catch_5
    move-exception v0

    :goto_7
    move-object v3, v0

    move-object/from16 v4, v18

    goto/16 :goto_e

    :cond_b
    move/from16 v21, v3

    :try_start_e
    const-string v3, "dns"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v4, v18

    :try_start_f
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_c
    move-object/from16 v4, v18

    const-string/jumbo v3, "proxySettings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3

    move-object v9, v3

    goto/16 :goto_c

    :cond_d
    const-string/jumbo v3, "proxyHost"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_c

    :cond_e
    const-string/jumbo v3, "proxyPort"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v15, v3

    goto/16 :goto_c

    :cond_f
    const-string/jumbo v3, "proxyPac"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_c

    :cond_10
    const-string v3, "exclusionList"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_11
    const-string v3, "eos"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v3, :cond_13

    nop

    :try_start_10
    new-instance v3, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v3}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v11}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v3

    if-eqz v7, :cond_12

    new-instance v6, Landroid/net/IpConfiguration;

    invoke-direct {v6}, Landroid/net/IpConfiguration;-><init>()V

    invoke-virtual {v1, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v8}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v18

    aget v10, v10, v18

    packed-switch v10, :pswitch_data_0

    const-string v10, "Ignore invalid ip assignment while reading."

    goto :goto_8

    :pswitch_0
    const-string v10, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_9

    :pswitch_1
    invoke-virtual {v6, v8}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_9

    :pswitch_2
    invoke-virtual {v6, v3}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    invoke-virtual {v6, v8}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    goto :goto_9

    :goto_8
    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    :goto_9
    sget-object v10, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v18

    aget v10, v10, v18

    packed-switch v10, :pswitch_data_1

    const-string v10, "Ignore invalid proxy settings while reading"

    goto :goto_a

    :pswitch_3
    const-string v10, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_b

    :pswitch_4
    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_b

    :pswitch_5
    nop

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v10

    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_b

    :pswitch_6
    nop

    invoke-static/range {v16 .. v16}, Lcom/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v13, v15, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v10

    invoke-virtual {v6, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_b

    :goto_a
    invoke-static {v10}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v6, v10}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_12
    :goto_b
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move/from16 v3, v21

    goto/16 :goto_2

    :cond_13
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore unknown key "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "while reading"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_c
    move-object/from16 v18, v4

    move-object/from16 v10, v19

    move/from16 v3, v21

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v3, v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move/from16 v21, v3

    :goto_d
    move-object/from16 v4, v18

    move-object v3, v0

    goto :goto_e

    :catch_9
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v19, v10

    move-object/from16 v4, v18

    move-object v3, v0

    goto :goto_e

    :catch_a
    move-exception v0

    move/from16 v21, v3

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v19, v10

    move-object v3, v0

    :goto_e
    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore invalid address while reading"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v18, v4

    move-object/from16 v10, v19

    move/from16 v3, v21

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object/from16 v4, p0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_10

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v2, :cond_15

    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    :goto_f
    goto :goto_13

    :catch_c
    move-exception v0

    goto :goto_f

    :goto_10
    if-eqz v2, :cond_14

    :try_start_15
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :goto_11
    goto :goto_12

    :catch_d
    move-exception v0

    goto :goto_11

    :cond_14
    :goto_12
    throw v3

    :catch_e
    move-exception v0

    if-eqz v2, :cond_15

    :try_start_16
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_f

    :cond_15
    :goto_13
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v1
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result v0

    return v0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ipAssignment"

    packed-switch v1, :pswitch_data_0

    :try_start_1
    const-string v1, "Ignore invalid ip assignment while writing"

    goto/16 :goto_1

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    const-string/jumbo v3, "linkAddress"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "gateway"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    const-string v4, "dns"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    :goto_2
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v2, "proxySettings"

    packed-switch v1, :pswitch_data_1

    :try_start_2
    const-string v1, "Ignore invalid proxy settings while writing"

    goto/16 :goto_3

    :pswitch_3
    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_4

    :pswitch_5
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v2, "proxyPac"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_4

    :pswitch_6
    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v2, "proxyHost"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v2, "proxyPort"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v3, :cond_3

    const-string v2, "exclusionList"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_4

    :goto_3
    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    :goto_4
    if-eqz v0, :cond_5

    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ge p3, v1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_5
    goto :goto_6

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    :goto_6
    const-string v1, "eos"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/server/net/IpConfigStore$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method
