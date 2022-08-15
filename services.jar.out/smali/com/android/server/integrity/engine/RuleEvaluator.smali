.class public final Lcom/android/server/integrity/engine/RuleEvaluator;
.super Ljava/lang/Object;
.source "RuleEvaluator.java"


# direct methods
.method public static synthetic $r8$lambda$-bnpkV8rd_UVNoV7W_dUvmV2nrE(Landroid/content/integrity/Rule;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GJDMRD8Iqxqinj3POpBqo6Ha8Us(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xtm0wfLEyGa-Ejtza6VErwktC_M(Landroid/content/integrity/Rule;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method

.method public static evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 1
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

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow()Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
