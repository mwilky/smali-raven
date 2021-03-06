.class Lcom/android/server/pm/SettingsXml$WriteSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$WriteSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteSectionImpl"
.end annotation


# instance fields
.field private final mTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmlSerializer:Landroid/util/TypedXmlSerializer;


# direct methods
.method private constructor <init>(Landroid/util/TypedXmlSerializer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->closeCompletely()V

    return-void
.end method

.method private closeCompletely()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-object p0
.end method

.method public attribute(Ljava/lang/String;J)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-object p0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
