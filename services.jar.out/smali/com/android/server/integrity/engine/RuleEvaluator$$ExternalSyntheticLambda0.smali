.class public final synthetic Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/integrity/AppInstallMetadata;


# direct methods
.method public synthetic constructor <init>(Landroid/content/integrity/AppInstallMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;->f$0:Landroid/content/integrity/AppInstallMetadata;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/integrity/engine/RuleEvaluator$$ExternalSyntheticLambda0;->f$0:Landroid/content/integrity/AppInstallMetadata;

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->$r8$lambda$GJDMRD8Iqxqinj3POpBqo6Ha8Us(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z

    move-result p0

    return p0
.end method
