.class public Lcom/android/server/integrity/parser/RuleBinaryParser;
.super Ljava/lang/Object;
.source "RuleBinaryParser.java"

# interfaces
.implements Lcom/android/server/integrity/parser/RuleParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessObject;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/integrity/parser/RuleParseException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/server/integrity/parser/RandomAccessInputStream;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/parser/RandomAccessInputStream;-><init>(Lcom/android/server/integrity/parser/RandomAccessObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/integrity/parser/RuleParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/integrity/parser/RuleParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/integrity/model/BitInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Unknown key: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getBooleanValue(Lcom/android/server/integrity/model/BitInputStream;)Z

    move-result p1

    new-instance v0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    invoke-direct {v0, p0, p1}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    return-object v0

    :pswitch_1
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result p1

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    or-long/2addr v1, v3

    new-instance p1, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object p1

    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-direct {v0, p0, p1, v1}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/integrity/CompoundFormula;

    invoke-direct {p0, v0, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public final parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    if-ne v1, v0, :cond_0

    new-instance p0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    invoke-direct {p0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Unknown formula separator: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;

    move-result-object p0

    return-object p0
.end method

.method public final parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/integrity/parser/RuleIndexRange;

    invoke-virtual {v1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->seek(I)V

    new-instance v2, Lcom/android/server/integrity/model/BitInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Lcom/android/server/integrity/parser/LimitInputStream;

    invoke-virtual {v1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v1

    sub-int/2addr v5, v1

    invoke-direct {v4, p1, v5}, Lcom/android/server/integrity/parser/LimitInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/content/integrity/Rule;

    invoke-direct {p1, p0, v0}, Landroid/content/integrity/Rule;-><init>(Landroid/content/integrity/IntegrityFormula;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A rule must end with a \'1\' bit."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/parser/RandomAccessInputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/integrity/parser/RuleIndexRange;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->skip(J)J

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
