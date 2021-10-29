.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotDeserializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Malformed KeyChainSnapshot XML"

    invoke-direct {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v2, 0x2

    const-string/jumbo v3, "keyChainSnapshot"

    invoke-interface {v1, v2, v0, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    move-object v4, v0

    :goto_0
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "serverParams"

    const-string v11, "counterId"

    const-string/jumbo v12, "snapshotVersion"

    const-string/jumbo v13, "thmCertPath"

    const-string/jumbo v14, "recoveryKeyMaterial"

    const-string/jumbo v15, "maxAttempts"

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v5, "keyChainProtectionParamsList"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_2
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_2

    :sswitch_3
    const-string v5, "applicationKeysList"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_4
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_2

    :sswitch_5
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_6
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    goto :goto_2

    :sswitch_7
    const-string v5, "backendPublicKey"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_8
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :goto_1
    move v5, v0

    :goto_2
    packed-switch v5, :pswitch_data_0

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v6, v3, v8

    const-string v5, "Unexpected tag %s in keyChainSnapshot"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKeys(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_1
    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParamsList(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_2
    goto :goto_3

    :pswitch_3
    nop

    :try_start_0
    invoke-static {v1, v13}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readCertPathTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Could not set trustedHardwareCertPath"

    invoke-direct {v2, v3, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_4
    invoke-static {v1, v15}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_5
    invoke-static {v1, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_6
    invoke-static {v1, v11}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readLongTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_7
    nop

    invoke-static {v1, v14}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_3

    :pswitch_8
    invoke-static {v1, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    nop

    :goto_3
    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {v1, v5, v0, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Failed to build KeyChainSnapshot"

    invoke-direct {v2, v3, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x66841336 -> :sswitch_8
        -0x52c1d0fe -> :sswitch_7
        -0x51ae5e2f -> :sswitch_6
        -0x5190b3fe -> :sswitch_5
        0x1caf9a74 -> :sswitch_4
        0x46f25222 -> :sswitch_3
        0x5099d037 -> :sswitch_2
        0x5f2e61bf -> :sswitch_1
        0x6bb456a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%s expected base64 encoded bytes but got \'%s\'"

    invoke-static {v5, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static readCertPathTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse CertPath in tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object v0, v1, v5

    const-string v5, "%s expected int but got \'%s\'"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static readKeyChainProtectionParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyChainProtectionParams"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "userSecretType"

    const-string/jumbo v9, "lockScreenUiType"

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "keyDerivationParams"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    :goto_1
    packed-switch v4, :pswitch_data_0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "Unexpected tag %s in keyChainProtectionParams"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyDerivationParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_2

    :pswitch_1
    invoke-static {p0, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_2

    :pswitch_2
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    nop

    :goto_2
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Failed to build KeyChainProtectionParams"

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_2
        -0x298abfcb -> :sswitch_1
        0x3662dd9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readKeyChainProtectionParamsList(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyChainProtectionParamsList"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static readKeyDerivationParams(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "keyDerivationParams"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "algorithm"

    const-string/jumbo v11, "salt"

    const-string/jumbo v12, "memoryDifficulty"

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v9

    goto :goto_1

    :sswitch_1
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v8

    :goto_1
    packed-switch v6, :pswitch_data_0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v8

    const-string v7, "Unexpected tag %s in keyDerivationParams"

    invoke-static {v2, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0, v11}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    :pswitch_1
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :pswitch_2
    invoke-static {p0, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v0

    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_1

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v5, "Unknown algorithm in keyDerivationParams"

    invoke-direct {v2, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    invoke-static {v4, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    invoke-static {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v1

    nop

    :goto_3
    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v6, v5, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v2, "salt was not set in keyDerivationParams"

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x3a02fc64 -> :sswitch_2
        0x35c056 -> :sswitch_1
        0xd70b46f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static readLongTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v2

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object v0, v1, v5

    const-string v5, "%s expected long but got \'%s\'"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static readStringTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p0, v2, v1, p1}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static readText(Landroid/util/TypedXmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    :cond_0
    return-object v0
.end method

.method private static readWrappedApplicationKey(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKey"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "alias"

    const-string/jumbo v9, "keyMaterial"

    const-string/jumbo v10, "keyMetadata"

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v5, "Unexpected tag %s in wrappedApplicationKey"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0, v10}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_2

    :pswitch_1
    invoke-static {p0, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_2

    :pswitch_2
    invoke-static {p0, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readStringTag(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    nop

    :goto_2
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Failed to build WrappedApplicationKey"

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x660f5152 -> :sswitch_2
        -0x3969675a -> :sswitch_1
        0x5899650 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readWrappedApplicationKeys(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "applicationKeysList"

    invoke-interface {p0, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKey(Landroid/util/TypedXmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v4, v1, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
