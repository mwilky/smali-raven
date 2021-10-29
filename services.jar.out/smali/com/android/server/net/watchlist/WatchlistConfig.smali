.class Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;,
        Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
    }
.end annotation


# static fields
.field private static final NETWORK_WATCHLIST_DB_FOR_TEST_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist_for_test.xml"

.field private static final NETWORK_WATCHLIST_DB_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist.xml"

.field private static final TAG:Ljava/lang/String; = "WatchlistConfig"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field private volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private mIsSecureConfig:Z

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method

.method private getCrc32(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;
    .locals 1

    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-object v0
.end method

.method private getSha256(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v0, :cond_0

    const-string v2, "hash"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v3, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public containsDomain(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public containsIp(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulCrcs;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchlist config hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Domain CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const-string v1, "Domain SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    const-string v1, "Ip CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32s:Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulCrcs;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    const-string v1, "Ip SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getWatchlistConfigHash()[B
    .locals 4

    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "WatchlistConfig"

    const-string v3, "Unable to get watchlist config hash"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public isConfigSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    return v0
.end method

.method public reloadConfig()V
    .locals 14

    const-string/jumbo v0, "watchlist-config"

    const-string v1, "WatchlistConfig"

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v9, :cond_2

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v11, "crc32-ip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v13, "sha256-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v11, "sha256-domain"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v9

    goto :goto_2

    :sswitch_3
    const-string v11, "crc32-domain"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :goto_1
    move v11, v12

    :goto_2
    packed-switch v11, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :pswitch_1
    invoke-direct {p0, v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :pswitch_2
    invoke-direct {p0, v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :pswitch_3
    invoke-direct {p0, v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    goto :goto_0

    :cond_2
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v8, v3}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulCrcs;

    invoke-direct {v8, v5}, Lcom/android/server/net/watchlist/HarmfulCrcs;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulCrcs;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    const-string v0, "Reload watchlist done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Failed parsing xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f059362 -> :sswitch_3
        -0xe260d6 -> :sswitch_2
        0x31cafa8d -> :sswitch_1
        0x6670a201 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeTestModeConfig()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WatchlistConfig"

    const-string v2, "Unable to delete test config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTestMode(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WatchlistConfig"

    const-string v1, "Setting watchlist testing config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method
