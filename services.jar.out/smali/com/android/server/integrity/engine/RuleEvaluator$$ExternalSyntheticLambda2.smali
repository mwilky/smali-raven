.class public final synthetic Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->$r8$lambda$Xtm0wfLEyGa-Ejtza6VErwktC_M(Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method
