.class public Lcom/android/server/display/config/HighBrightnessMode;
.super Ljava/lang/Object;
.source "HighBrightnessMode.java"


# instance fields
.field private allowInLowPowerMode_all:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private minimumLux_all:Ljava/math/BigDecimal;

.field private refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

.field private thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

.field private timing_all:Lcom/android/server/display/config/HbmTiming;

.field private transitionPoint_all:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-direct {v0}, Lcom/android/server/display/config/HighBrightnessMode;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setEnabled(Z)V

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_8

    if-eq v4, v6, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "transitionPoint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTransitionPoint_all(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "minimumLux"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumLux_all(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "timing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/display/config/HbmTiming;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTiming_all(Lcom/android/server/display/config/HbmTiming;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "thermalStatusLimit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V

    goto :goto_1

    :cond_6
    const-string v5, "allowInLowPowerMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setAllowInLowPowerMode_all(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto/16 :goto_0

    :cond_8
    if-ne v4, v6, :cond_9

    return-object v0

    :cond_9
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "HighBrightnessMode is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAllowInLowPowerMode_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMinimumLux_all()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-object v0
.end method

.method public final getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method

.method public getTiming_all()Lcom/android/server/display/config/HbmTiming;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-object v0
.end method

.method public final getTransitionPoint_all()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasAllowInLowPowerMode_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumLux_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalStatusLimit_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTiming_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTransitionPoint_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAllowInLowPowerMode_all(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setMinimumLux_all(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-void
.end method

.method public setTiming_all(Lcom/android/server/display/config/HbmTiming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-void
.end method

.method public final setTransitionPoint_all(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-void
.end method
