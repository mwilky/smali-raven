.class public Lcom/android/server/compat/overrides/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public out:Ljava/io/PrintWriter;

.field public outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/compat/overrides/XmlWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    return-void
.end method

.method public static write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "overrides"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/compat/overrides/Overrides;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/XmlWriter;->printXml()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method public decreaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    return-void
.end method

.method public increaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/XmlWriter;->printIndent()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final printIndent()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    return-void
.end method

.method public printXml()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
