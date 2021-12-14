.class public Lcom/google/android/systemui/columbus/sensors/GestureController;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;,
        Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;,
        Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureController.kt\ncom/google/android/systemui/columbus/sensors/GestureController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1819#2,2:157\n1819#2,2:159\n*E\n*S KotlinDebug\n*F\n+ 1 GestureController.kt\ncom/google/android/systemui/columbus/sensors/GestureController\n*L\n93#1,2:157\n104#1,2:159\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;


# instance fields
.field private gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

.field private final gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

.field private final gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

.field private final lastTimestampMap:Landroid/util/SparseLongArray;

.field private softGateBlockCount:J

.field private final softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

.field private final softGates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/sensors/GestureController;->Companion:Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    const-string v0, "gestureSensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "softGates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandRegistry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    new-instance p4, Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-direct {p4}, Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;-><init>()V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;)V

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/GestureController$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    const-string p0, "quick-tap"

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getGestureListener$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

    return-object p0
.end method

.method public static final synthetic access$getGestureSensor$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    return-object p0
.end method

.method public static final synthetic access$getGestureSensorListener$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    return-object p0
.end method

.method public static final synthetic access$getSoftGateBlockCount$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    return-wide v0
.end method

.method public static final synthetic access$getSoftGates$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getUiEventLogger$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method public static final synthetic access$isThrottled(Lcom/google/android/systemui/columbus/sensors/GestureController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController;->isThrottled(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setSoftGateBlockCount$p(Lcom/google/android/systemui/columbus/sensors/GestureController;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    return-void
.end method

.method private final isThrottled(I)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    sub-long/2addr v0, v2

    const-wide/16 p0, 0x1f4

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "  Soft Blocks: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    const-string v1, "  Gesture Sensor: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setGestureListener(Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

    return-void
.end method

.method public startListening()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {p0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->startListening()V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public stopListening()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->stopListening()V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/Gate;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
