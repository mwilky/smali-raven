.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-static {v0, p0, p1}, Lcom/android/server/policy/KeyCombinationManager;->$r8$lambda$hxuN-LqbrW8JqNRu8IJTjhDUQFo(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method
