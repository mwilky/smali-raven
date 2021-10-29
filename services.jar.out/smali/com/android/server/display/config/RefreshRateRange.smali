.class public Lcom/android/server/display/config/RefreshRateRange;
.super Ljava/lang/Object;
.source "RefreshRateRange.java"


# instance fields
.field private maximum:Ljava/math/BigInteger;

.field private minimum:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/display/config/RefreshRateRange;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateRange;-><init>()V

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

    const-string/jumbo v5, "minimum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/RefreshRateRange;->setMinimum(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "maximum"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/display/config/RefreshRateRange;->setMaximum(Ljava/math/BigInteger;)V

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

    const-string v5, "RefreshRateRange is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getMaximum()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getMinimum()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    return-object v0
.end method

.method hasMaximum()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimum()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setMaximum(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    return-void
.end method

.method public final setMinimum(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    return-void
.end method
