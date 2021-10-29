.class public Lcom/android/server/compat/overrides/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private indent:I

.field private out:Ljava/io/PrintWriter;

.field private outBuffer:Ljava/lang/StringBuilder;

.field private startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    return-void
.end method

.method private printIndent()V
    .locals 3

    nop

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

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
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method decreaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    return-void
.end method

.method increaseIndent()V
    .locals 1

    iget v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    return-void
.end method

.method print(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\n"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/compat/overrides/XmlWriter;->printIndent()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method printXml()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
