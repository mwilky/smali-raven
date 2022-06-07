.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field private ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field private lightSensor:Lcom/android/server/display/config/SensorDetails;

.field private proxSensor:Lcom/android/server/display/config/SensorDetails;

.field private quirks:Lcom/android/server/display/config/DisplayQuirks;

.field private screenBrightnessDefault:Ljava/math/BigDecimal;

.field private screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field private screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_d

    if-eq v4, v6, :cond_d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "screenBrightnessMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v5, "screenBrightnessDefault"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :cond_2
    const-string v5, "highBrightnessMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "quirks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "screenBrightnessRampFastDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "screenBrightnessRampFastIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v5, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "lightSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "proxSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setProxSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto :goto_1

    :cond_a
    const-string v5, "displayBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto :goto_1

    :cond_b
    const-string v5, "ambientBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto :goto_1

    :cond_c
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto/16 :goto_0

    :cond_d
    if-ne v4, v6, :cond_e

    return-object v0

    :cond_e
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DisplayConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object v0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public final getProxSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object v0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasAmbientBrightnessChangeThresholds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDisplayBrightnessChangeThresholds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasHighBrightnessMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasLightSensor()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasProxSensor()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasQuirks()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessMap()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastDecrease()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastIncrease()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowDecrease()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowIncrease()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setProxSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-void
.end method
