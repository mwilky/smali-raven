.class public Lcom/android/server/display/config/HbmTiming;
.super Ljava/lang/Object;
.source "HbmTiming.java"


# instance fields
.field private timeMaxSecs_all:Ljava/math/BigInteger;

.field private timeMinSecs_all:Ljava/math/BigInteger;

.field private timeWindowSecs_all:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/HbmTiming;

    invoke-direct {v0}, Lcom/android/server/display/config/HbmTiming;-><init>()V

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

    const-string/jumbo v5, "timeWindowSecs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HbmTiming;->setTimeWindowSecs_all(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "timeMaxSecs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HbmTiming;->setTimeMaxSecs_all(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "timeMinSecs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HbmTiming;->setTimeMinSecs_all(Ljava/math/BigInteger;)V

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

    const-string v5, "HbmTiming is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getTimeMaxSecs_all()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getTimeMinSecs_all()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getTimeWindowSecs_all()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    return-object v0
.end method

.method hasTimeMaxSecs_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTimeMinSecs_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTimeWindowSecs_all()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setTimeMaxSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    return-void
.end method

.method public final setTimeMinSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    return-void
.end method

.method public final setTimeWindowSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    return-void
.end method
