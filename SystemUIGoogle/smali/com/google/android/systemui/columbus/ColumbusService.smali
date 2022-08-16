.class public final Lcom/google/android/systemui/columbus/ColumbusService;
.super Ljava/lang/Object;
.source "ColumbusService.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1849#2,2:177\n1849#2,2:179\n1849#2,2:181\n1849#2,2:184\n1849#2,2:186\n1849#2,2:188\n1849#2,2:190\n1#3:183\n*S KotlinDebug\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService\n*L\n63#1:177,2\n71#1:179,2\n77#1:181,2\n96#1:184,2\n146#1:186,2\n156#1:188,2\n164#1:190,2\n*E\n"
.end annotation


# instance fields
.field public final actionListener:Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final effects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field public final gateListener:Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

.field public final gates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field public final gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

.field public final gestureListener:Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

.field public lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

.field public final wakeLock:Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/columbus/sensors/GestureController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;",
            "Lcom/google/android/systemui/columbus/sensors/GestureController;",
            "Lcom/google/android/systemui/columbus/PowerManagerWrapper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    new-instance p2, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    iget-object p3, p5, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->powerManager:Landroid/os/PowerManager;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    const-string p5, "Columbus/Service"

    invoke-virtual {p3, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    :goto_0
    invoke-direct {p2, p3}, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->wakeLock:Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actionListener:Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gateListener:Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

    new-instance p2, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusService;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureListener:Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actionListener:Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/actions/Action;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureListener:Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

    iput-object p2, p1, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateSensorListener()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "ColumbusService"

    const-string v1, " state:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "X "

    const-string v3, "O "

    const-string v4, "    "

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/systemui/columbus/gates/Gate;->active:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v2, "- "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "  Actions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_4

    :cond_3
    move-object v5, v2

    :goto_4
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    const-string v1, "  Active: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Feedback Effects:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final stopListening()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v1}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v1}, Lcom/google/android/systemui/columbus/sensors/Sensor;->stopListening()V

    iget-object v1, v0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v4, v0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-interface {v1, v2, v3}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/systemui/columbus/actions/Action;

    iget-boolean v3, v3, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eq v1, v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switching action from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Columbus/Service"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    return-object v1
.end method

.method public final updateSensorListener()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object v0

    const-string v1, "Columbus/Service"

    if-nez v0, :cond_1

    const-string v0, "No available actions"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gateListener:Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->stopListening()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gateListener:Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-virtual {v4}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    check-cast v3, Lcom/google/android/systemui/columbus/gates/Gate;

    if-eqz v3, :cond_5

    const-string v0, "Gated by "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->stopListening()V

    return-void

    :cond_5
    const-string v2, "Unblocked; current action: "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {p0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->startListening()V

    :cond_7
    return-void
.end method
