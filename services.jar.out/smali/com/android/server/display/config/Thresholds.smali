.class public Lcom/android/server/display/config/Thresholds;
.super Ljava/lang/Object;
.source "Thresholds.java"


# instance fields
.field private brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

.field private darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/Thresholds;

    invoke-direct {v0}, Lcom/android/server/display/config/Thresholds;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_3

    if-eq v4, v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "brighteningThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/Thresholds;->setBrighteningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V

    goto :goto_1

    :cond_1
    const-string v5, "darkeningThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/BrightnessThresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/Thresholds;->setDarkeningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_3
    if-ne v4, v6, :cond_4

    return-object v0

    :cond_4
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Thresholds is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-object v0
.end method

.method public final getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-object v0
.end method

.method hasBrighteningThresholds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDarkeningThresholds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setBrighteningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/Thresholds;->brighteningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-void
.end method

.method public final setDarkeningThresholds(Lcom/android/server/display/config/BrightnessThresholds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/Thresholds;->darkeningThresholds:Lcom/android/server/display/config/BrightnessThresholds;

    return-void
.end method
