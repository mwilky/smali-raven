.class public Lcom/android/server/policy/devicestate/config/SensorCondition;
.super Ljava/lang/Object;
.source "SensorCondition.java"


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
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

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/SensorCondition;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/policy/devicestate/config/SensorCondition;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/SensorCondition;-><init>()V

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

    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->setType(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0, v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/NumericRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/NumericRange;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    if-ne v4, v6, :cond_5

    return-object v0

    :cond_5
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "SensorCondition is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/NumericRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    return-object v0
.end method

.method hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    return-void
.end method
