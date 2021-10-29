.class public Lcom/android/server/policy/devicestate/config/NumericRange;
.super Ljava/lang/Object;
.source "NumericRange.java"


# instance fields
.field private maxInclusive_optional:Ljava/math/BigDecimal;

.field private max_optional:Ljava/math/BigDecimal;

.field private minInclusive_optional:Ljava/math/BigDecimal;

.field private min_optional:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/NumericRange;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/policy/devicestate/config/NumericRange;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/NumericRange;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_5

    if-eq v4, v6, :cond_5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "min"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/NumericRange;->setMin_optional(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_1
    const-string v5, "min-inclusive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/NumericRange;->setMinInclusive_optional(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_2
    const-string v5, "max"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/NumericRange;->setMax_optional(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_3
    const-string v5, "max-inclusive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/NumericRange;->setMaxInclusive_optional(Ljava/math/BigDecimal;)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    if-ne v4, v6, :cond_6

    return-object v0

    :cond_6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "NumericRange is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getMaxInclusive_optional()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMax_optional()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMinInclusive_optional()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getMin_optional()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasMaxInclusive_optional()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMax_optional()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinInclusive_optional()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMin_optional()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMaxInclusive_optional(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMax_optional(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMinInclusive_optional(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    return-void
.end method

.method public setMin_optional(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    return-void
.end method
