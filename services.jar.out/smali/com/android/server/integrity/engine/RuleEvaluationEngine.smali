.class public Lcom/android/server/integrity/engine/RuleEvaluationEngine;
.super Ljava/lang/Object;
.source "RuleEvaluationEngine.java"


# static fields
.field public static sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;


# instance fields
.field public final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    return-void
.end method

.method public static declared-synchronized getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    .locals 3

    const-class v0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;-><init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public final loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->initialized()Z

    move-result v0

    const-string v1, "RuleEvaluation"

    if-nez v0, :cond_0

    const-string p0, "Integrity rule files are not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Error loading rules."

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
