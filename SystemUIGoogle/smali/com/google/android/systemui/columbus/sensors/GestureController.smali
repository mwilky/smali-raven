.class public final Lcom/google/android/systemui/columbus/sensors/GestureController;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;,
        Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureController.kt\ncom/google/android/systemui/columbus/sensors/GestureController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1849#2,2:156\n1849#2,2:158\n*S KotlinDebug\n*F\n+ 1 GestureController.kt\ncom/google/android/systemui/columbus/sensors/GestureController\n*L\n92#1:156,2\n103#1:158,2\n*E\n"
.end annotation


# instance fields
.field public gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

.field public final gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

.field public final gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

.field public final lastTimestampMap:Landroid/util/SparseLongArray;

.field public softGateBlockCount:J

.field public final softGateListener:Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;

.field public final softGates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0
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

    iput-object p2, p1, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->listener:Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;

    new-instance p1, Lcom/google/android/systemui/columbus/sensors/GestureController$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    const-string/jumbo p0, "quick-tap"

    invoke-virtual {p3, p0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->softGateBlockCount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "  Soft Blocks: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    const-string v1, "  Gesture Sensor: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
