.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-static {p0, p1}, Lcom/android/server/policy/KeyCombinationManager;->$r8$lambda$BJTTk89spCrPRnvcKkcVZFIMOpQ(Lcom/android/server/policy/KeyCombinationManager;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p0

    return p0
.end method
