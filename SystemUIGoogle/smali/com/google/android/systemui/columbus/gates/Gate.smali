.class public abstract Lcom/google/android/systemui/columbus/gates/Gate;
.super Ljava/lang/Object;
.source "Gate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/Gate$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1849#2,2:94\n*S KotlinDebug\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate\n*L\n84#1:94,2\n*E\n"
.end annotation


# instance fields
.field public active:Z

.field public final context:Landroid/content/Context;

.field public isBlocked:Z

.field public final listeners:Ljava/util/LinkedHashSet;

.field public final notifyHandler:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/Gate;->notifyHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final isBlocking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract onActivate()V
.end method

.method public abstract onDeactivate()V
.end method

.method public final registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->onActivate()V

    :cond_0
    return-void
.end method

.method public final setBlocking(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocked:Z

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/gates/Gate$Listener;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->notifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;

    invoke-direct {v2, v0, p0}, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;-><init>(Lcom/google/android/systemui/columbus/gates/Gate$Listener;Lcom/google/android/systemui/columbus/gates/Gate;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->onDeactivate()V

    :cond_0
    return-void
.end method
