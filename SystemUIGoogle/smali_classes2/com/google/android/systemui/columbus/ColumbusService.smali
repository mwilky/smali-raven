.class public Lcom/google/android/systemui/columbus/ColumbusService;
.super Ljava/lang/Object;
.source "ColumbusService.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1819#2,2:178\n1819#2,2:180\n1819#2,2:182\n1819#2,2:185\n1819#2,2:187\n1819#2,2:189\n1819#2,2:191\n1#3:184\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService\n*L\n64#1,2:178\n72#1,2:180\n78#1,2:182\n97#1,2:185\n147#1,2:187\n157#1,2:189\n165#1,2:191\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusService$Companion;


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final effects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final gateListener:Lcom/google/android/systemui/columbus/ColumbusService$gateListener$1;

.field private final gates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

.field private final gestureListener:Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

.field private lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

.field private final wakeLock:Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusService;->Companion:Lcom/google/android/systemui/columbus/ColumbusService$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/columbus/sensors/GestureController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;)V
    .locals 1
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

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effects"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gates"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    const/4 p2, 0x1

    const-string p3, "Columbus/Service"

    invoke-virtual {p5, p2, p3}, Lcom/google/android/systemui/columbus/PowerManagerWrapper;->newWakeLock(ILjava/lang/String;)Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    move-result-object p2

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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/actions/Action;

    iget-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actionListener:Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;

    invoke-virtual {p2, p3}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureListener:Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureController;->setGestureListener(Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateSensorListener()V

    return-void
.end method

.method public static final synthetic access$getEffects$p(Lcom/google/android/systemui/columbus/ColumbusService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getWakeLock$p(Lcom/google/android/systemui/columbus/ColumbusService;)Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->wakeLock:Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    return-object p0
.end method

.method public static final synthetic access$updateActiveAction(Lcom/google/android/systemui/columbus/ColumbusService;)Lcom/google/android/systemui/columbus/actions/Action;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateSensorListener(Lcom/google/android/systemui/columbus/ColumbusService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateSensorListener()V

    return-void
.end method

.method private final activateGates()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

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

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final blockingGate()Lcom/google/android/systemui/columbus/gates/Gate;
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/google/android/systemui/columbus/gates/Gate;

    return-object v0
.end method

.method private final deactivateGates()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

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
    return-void
.end method

.method private final firstAvailableAction()Lcom/google/android/systemui/columbus/actions/Action;
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/google/android/systemui/columbus/actions/Action;

    return-object v0
.end method

.method private final startListening()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->startListening()Z

    move-result p0

    return p0
.end method

.method private final stopListening()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->stopListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-interface {v1, v3, v2}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->firstAvailableAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching action from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Columbus/Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    return-object v0
.end method

.method private final updateSensorListener()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object v0

    const-string v1, "Columbus/Service"

    if-nez v0, :cond_0

    const-string v0, "No available actions"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->deactivateGates()V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->stopListening()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->activateGates()V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->blockingGate()Lcom/google/android/systemui/columbus/gates/Gate;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "Gated by "

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->stopListening()V

    return-void

    :cond_1
    const-string v2, "Unblocked; current action: "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->startListening()Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " state:"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gates:Ljava/util/Set;

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

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->getActive()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v2, "- "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "  Actions:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_4

    :cond_3
    move-object v5, v2

    :goto_4
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->lastActiveAction:Lcom/google/android/systemui/columbus/actions/Action;

    const-string v1, "  Active: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Feedback Effects:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->gestureController:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
