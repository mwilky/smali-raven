.class public abstract Lcom/android/systemui/util/condition/Condition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/condition/Condition$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/util/condition/Condition$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/condition/Condition$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field public mIsConditionMet:Z

.field public mStarted:Z

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/condition/Condition;->mIsConditionMet:Z

    iput-boolean v0, p0, Lcom/android/systemui/util/condition/Condition;->mStarted:Z

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/util/condition/Condition$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    const-string v1, "adding callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/util/condition/Condition;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/util/condition/Condition$Callback;->onConditionChanged()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/condition/Condition;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/condition/Condition;->mStarted:Z

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/util/condition/Condition$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/condition/Condition;->addCallback(Lcom/android/systemui/util/condition/Condition$Callback;)V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/util/condition/Condition$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "removing callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/condition/Condition$Callback;

    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/util/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/util/condition/Condition;->mStarted:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/condition/Condition;->stop()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/util/condition/Condition;->mStarted:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/util/condition/Condition$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/condition/Condition;->removeCallback(Lcom/android/systemui/util/condition/Condition$Callback;)V

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public final updateCondition(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/util/condition/Condition;->mIsConditionMet:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/condition/Condition;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating condition to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/util/condition/Condition;->mIsConditionMet:Z

    iget-object p0, p0, Lcom/android/systemui/util/condition/Condition;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/condition/Condition$Callback;

    if-nez p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/util/condition/Condition$Callback;->onConditionChanged()V

    goto :goto_0

    :cond_3
    return-void
.end method
