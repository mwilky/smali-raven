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

.method private parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;
    .locals 4
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

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "Unknown key: %d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getBooleanValue(Lcom/android/server/integrity/model/BitInputStream;)Z

    move-result v2

    new-instance v3, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    invoke-direct {v3, v0, v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    return-object v3

    :pswitch_1
    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long v6, v2, v6

    or-long/2addr v6, v4

    new-instance v8, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    invoke-direct {v8, v0, v1, v6, v7}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    return-object v8

    :pswitch_2
    invoke-virtual {p1, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    invoke-static {p1, v3, v2}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-direct {v5, v0, v4, v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;Z)V

    return-object v5

    nop

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
    .end packed-switch
.end method

.method private parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;
    .locals 4
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

    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/integrity/CompoundFormula;

    invoke-direct {v3, v0, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    return-object v3
.end method

.method private parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unknown formula separator: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    invoke-direct {v1}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>()V

    return-object v1

    :pswitch_1
    const/4 v1, 0x0

    return-object v1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseCompoundFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/CompoundFormula;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAtomicFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/AtomicFormula;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 8
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

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/integrity/parser/RuleIndexRange;

    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->seek(I)V

    new-instance v3, Lcom/android/server/integrity/model/BitInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Lcom/android/server/integrity/parser/LimitInputStream;

    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getEndIndex()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/integrity/parser/RuleIndexRange;->getStartIndex()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v5, p1, v6}, Lcom/android/server/integrity/parser/LimitInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/integrity/model/BitInputStream;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private parseRule(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/Rule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    new-instance v2, Landroid/content/integrity/Rule;

    invoke-direct {v2, v0, v1}, Landroid/content/integrity/Rule;-><init>(Landroid/content/integrity/IntegrityFormula;I)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A rule must end with a \'1\' bit."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
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

    invoke-direct {p0, p1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseAllRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseIndexedRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    invoke-direct {p0, v0, p2}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/integrity/parser/RuleParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/integrity/parser/RuleParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
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

    invoke-static {p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->ofBytes([B)Lcom/android/server/integrity/parser/RandomAccessObject;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parse(Lcom/android/server/integrity/parser/RandomAccessObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
