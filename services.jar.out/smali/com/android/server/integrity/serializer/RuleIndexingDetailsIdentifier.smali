.class Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;
.super Ljava/lang/Object;
.source "RuleIndexingDetailsIdentifier.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 4

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Invalid formula tag type: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {v0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object v0

    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    invoke-static {v0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetailsForStringAtomicFormula(Landroid/content/integrity/AtomicFormula$StringAtomicFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroid/content/integrity/CompoundFormula;

    invoke-static {v0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetailsForCompoundFormula(Landroid/content/integrity/CompoundFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getIndexingDetailsForCompoundFormula(Landroid/content/integrity/CompoundFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 6

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v3, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {v3, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object v3

    :pswitch_0
    nop

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda2;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    return-object v2

    :cond_0
    nop

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda3;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    return-object v2

    :cond_1
    new-instance v5, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-direct {v5, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getIndexingDetailsForStringAtomicFormula(Landroid/content/integrity/AtomicFormula$StringAtomicFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 3

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getIndexingDetailsForCompoundFormula$0(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getIndexingDetailsForCompoundFormula$1(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$getIndexingDetailsForCompoundFormula$2(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 1

    invoke-static {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getIndexingDetailsForCompoundFormula$3(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/integrity/Rule;

    :try_start_0
    invoke-virtual {v4}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v5}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getIndexType()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->getRuleKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/integrity/Rule;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const-string v1, "Malformed rule identified. [%s]"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index buckets cannot be created for null rule list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
