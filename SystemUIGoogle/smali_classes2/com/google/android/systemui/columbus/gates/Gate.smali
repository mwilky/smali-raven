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
    value = "SMAP\nGate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1819#2,2:94\n*E\n*S KotlinDebug\n*F\n+ 1 Gate.kt\ncom/google/android/systemui/columbus/gates/Gate\n*L\n84#1,2:94\n*E\n"
.end annotation


# instance fields
.field private active:Z

.field private final context:Landroid/content/Context;

.field private isBlocked:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/Gate;->notifyHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method private final maybeActivate()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->onActivate()V

    :cond_0
    return-void
.end method

.method private final maybeDeactivate()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->onDeactivate()V

    :cond_0
    return-void
.end method

.method private final notifyListeners()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate$Listener;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/Gate;->notifyHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;

    invoke-direct {v3, v1, p0}, Lcom/google/android/systemui/columbus/gates/Gate$notifyListeners$1$1;-><init>(Lcom/google/android/systemui/columbus/gates/Gate$Listener;Lcom/google/android/systemui/columbus/gates/Gate;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    return-object p0
.end method

.method public isBlocking()Z
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

.method protected abstract onActivate()V
.end method

.method protected abstract onDeactivate()V
.end method

.method public registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->maybeActivate()V

    return-void
.end method

.method protected final setBlocking(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocked:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaClass.simpleName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->maybeDeactivate()V

    return-void
.end method
