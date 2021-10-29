.class public Lcom/android/server/compat/overrides/ChangeOverrides;
.super Ljava/lang/Object;
.source "ChangeOverrides.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/overrides/ChangeOverrides$Raw;,
        Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;,
        Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    }
.end annotation


# instance fields
.field private changeId:Ljava/lang/Long;

.field private deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

.field private raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

.field private validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "changeId"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/overrides/ChangeOverrides;->setChangeId(J)V

    :cond_0
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

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "validated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/compat/overrides/ChangeOverrides;->setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V

    goto :goto_1

    :cond_2
    const-string v5, "deferred"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/compat/overrides/ChangeOverrides;->setDeferred(Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "raw"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/compat/overrides/ChangeOverrides;->setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    if-ne v4, v6, :cond_6

    return-object v0

    :cond_6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "ChangeOverrides is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getChangeId()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    return-object v0
.end method

.method public getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    return-object v0
.end method

.method public getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    return-object v0
.end method

.method hasChangeId()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasDeferred()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasRaw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasValidated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setChangeId(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    return-void
.end method

.method public setDeferred(Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    return-void
.end method

.method public setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    return-void
.end method

.method public setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    return-void
.end method

.method write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasChangeId()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " changeId=\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string v0, "\""

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->increaseIndent()V

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasValidated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v1

    const-string/jumbo v2, "validated"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasDeferred()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v1

    const-string v2, "deferred"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->hasRaw()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v1

    const-string/jumbo v2, "raw"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->decreaseIndent()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
