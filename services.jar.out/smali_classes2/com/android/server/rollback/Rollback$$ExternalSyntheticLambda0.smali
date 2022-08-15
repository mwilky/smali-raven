.class public final synthetic Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/Rollback;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/IntentSender;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    iput-object p2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    iput-object p4, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rollback/Rollback;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/rollback/Rollback;->$r8$lambda$sgpEB66zvRMlxdWP-9OwCWf4NSU(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method
