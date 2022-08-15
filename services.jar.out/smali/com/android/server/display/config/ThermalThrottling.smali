.class public Lcom/android/server/display/config/ThermalThrottling;
.super Ljava/lang/Object;
.source "ThermalThrottling.java"


# instance fields
.field public brightnessThrottlingMap:Lcom/android/server/display/config/BrightnessThrottlingMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/ThermalThrottling;

    invoke-direct {v0}, Lcom/android/server/display/config/ThermalThrottling;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightnessThrottlingMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThrottlingMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/config/ThermalThrottling;->setBrightnessThrottlingMap(Lcom/android/server/display/config/BrightnessThrottlingMap;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ThermalThrottling is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrightnessThrottlingMap()Lcom/android/server/display/config/BrightnessThrottlingMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Lcom/android/server/display/config/BrightnessThrottlingMap;

    return-object p0
.end method

.method public final setBrightnessThrottlingMap(Lcom/android/server/display/config/BrightnessThrottlingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/ThermalThrottling;->brightnessThrottlingMap:Lcom/android/server/display/config/BrightnessThrottlingMap;

    return-void
.end method
