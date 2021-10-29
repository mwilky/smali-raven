.class public Lcom/android/server/display/config/DisplayQuirks;
.super Ljava/lang/Object;
.source "DisplayQuirks.java"


# instance fields
.field private quirk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/DisplayQuirks;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayQuirks;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_2

    if-eq v4, v6, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "quirk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_2
    if-ne v4, v6, :cond_3

    return-object v0

    :cond_3
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DisplayQuirks is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getQuirk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/DisplayQuirks;->quirk:Ljava/util/List;

    return-object v0
.end method
