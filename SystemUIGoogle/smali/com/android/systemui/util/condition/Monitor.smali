.class public final Lcom/android/systemui/util/condition/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/condition/Monitor$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/util/condition/Monitor$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field public mAllConditionsMet:Z

.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/condition/Monitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mConditionCallback:Lcom/android/systemui/util/condition/Monitor$1;

.field public final mConditions:Ljava/util/HashSet;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mHaveConditionsStarted:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Condition;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/condition/Monitor$Callback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/condition/Monitor;->mAllConditionsMet:Z

    iput-boolean v0, p0, Lcom/android/systemui/util/condition/Monitor;->mHaveConditionsStarted:Z

    new-instance v0, Lcom/android/systemui/util/condition/Monitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/condition/Monitor$1;-><init>(Lcom/android/systemui/util/condition/Monitor;)V

    iput-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mConditionCallback:Lcom/android/systemui/util/condition/Monitor$1;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mConditions:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/condition/Monitor$Callback;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/condition/Monitor;->addCallbackLocked(Lcom/android/systemui/util/condition/Monitor$Callback;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/util/condition/Monitor$Callback;

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final addCallbackLocked(Lcom/android/systemui/util/condition/Monitor$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Monitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "adding callback"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/util/condition/Monitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/android/systemui/util/condition/Monitor;->mAllConditionsMet:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/util/condition/Monitor$Callback;->onConditionsChanged(Z)V

    iget-boolean p1, p0, Lcom/android/systemui/util/condition/Monitor;->mHaveConditionsStarted:Z

    if-nez p1, :cond_3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "starting all conditions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/condition/Monitor;->mConditions:Ljava/util/HashSet;

    new-instance v0, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/condition/Monitor;->updateConditionMetState()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/condition/Monitor;->mHaveConditionsStarted:Z

    :cond_3
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/util/condition/Monitor$Callback;

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateConditionMetState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mConditions:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mConditions:Ljava/util/HashSet;

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/util/condition/Monitor;->mAllConditionsMet:Z

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x3

    const-string v2, "Monitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all conditions met: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/util/condition/Monitor;->mAllConditionsMet:Z

    iget-object v0, p0, Lcom/android/systemui/util/condition/Monitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/condition/Monitor$Callback;

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/util/condition/Monitor;->mAllConditionsMet:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/util/condition/Monitor$Callback;->onConditionsChanged(Z)V

    goto :goto_1

    :cond_5
    return-void
.end method
