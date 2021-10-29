.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private description:Ljava/lang/String;

.field private disabled:Ljava/lang/Boolean;

.field private enableAfterTargetSdk:Ljava/lang/Integer;

.field private enableSinceTargetSdk:Ljava/lang/Integer;

.field private id:Ljava/lang/Long;

.field private loggingOnly:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private overridable:Ljava/lang/Boolean;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    :cond_0
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    :cond_1
    const-string v3, "disabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    :cond_2
    const-string/jumbo v3, "loggingOnly"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    :cond_3
    const-string v3, "enableAfterTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    :cond_4
    const-string v3, "enableSinceTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableSinceTargetSdk(I)V

    :cond_5
    const-string v3, "description"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v3, "overridable"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setOverridable(Z)V

    :cond_7
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object v2, v1

    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableAfterTargetSdk()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableSinceTargetSdk()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverridable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-object v0
.end method

.method hasDescription()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEnableAfterTargetSdk()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEnableSinceTargetSdk()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasLoggingOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasOverridable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setEnableSinceTargetSdk(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    return-void
.end method

.method public setId(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLoggingOnly(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverridable(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-void
.end method
