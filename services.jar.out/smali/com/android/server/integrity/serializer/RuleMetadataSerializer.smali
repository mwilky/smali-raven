.class public Lcom/android/server/integrity/serializer/RuleMetadataSerializer;
.super Ljava/lang/Object;
.source "RuleMetadataSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v0, v2, v1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "V"

    invoke-static {v0, v2, v1}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method private static serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
