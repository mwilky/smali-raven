.class public abstract Lcom/google/android/systemui/columbus/actions/Action;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/Action$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Action.kt\ncom/google/android/systemui/columbus/actions/Action\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1819#2,2:88\n1819#2,2:90\n*E\n*S KotlinDebug\n*F\n+ 1 Action.kt\ncom/google/android/systemui/columbus/actions/Action\n*L\n65#1,2:88\n79#1,2:90\n*E\n"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final feedbackEffects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private isAvailable:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/actions/Action$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "+",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/Action;->feedbackEffects:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/Set;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->handler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic updateFeedbackEffects$default(Lcom/google/android/systemui/columbus/actions/Action;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateFeedbackEffects"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    return p0
.end method

.method public onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Triggering"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/columbus/actions/Action;->onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :cond_0
    return-void
.end method

.method public abstract onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
.end method

.method public registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final setAvailable(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/actions/Action$Listener;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/Action;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;

    invoke-direct {v2, v0, p0}, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;-><init>(Lcom/google/android/systemui/columbus/actions/Action$Listener;Lcom/google/android/systemui/columbus/actions/Action;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;-><init>(Lcom/google/android/systemui/columbus/actions/Action;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setAvailable$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

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

.method public unregisterListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action;->feedbackEffects:Ljava/util/Set;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
