.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->execute()V

    return-void
.end method
