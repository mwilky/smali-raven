.class final Lcom/android/server/integrity/engine/RuleEvaluator;
.super Ljava/lang/Object;
.source "RuleEvaluator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    nop

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v2

    return-object v2

    :cond_0
    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/android/server/integrity/model/IntegrityCheckResult;->deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow()Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
