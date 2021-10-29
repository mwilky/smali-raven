.class public Lcom/android/server/display/config/SensorDetails;
.super Ljava/lang/Object;
.source "SensorDetails.java"


# instance fields
.field private name:Ljava/lang/String;

.field private refreshRate:Lcom/android/server/display/config/RefreshRateRange;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/SensorDetails;

    invoke-direct {v0}, Lcom/android/server/display/config/SensorDetails;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_4

    if-eq v4, v6, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/SensorDetails;->setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    if-ne v4, v6, :cond_5

    return-object v0

    :cond_5
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "SensorDetails is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-object v0
.end method

.method hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-void
.end method
