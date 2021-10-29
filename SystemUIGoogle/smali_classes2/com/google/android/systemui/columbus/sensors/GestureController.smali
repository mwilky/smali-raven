.class public Lcom/google/android/systemui/columbus/sensors/GestureController;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;,
        Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/sensors/GestureController$Companion;


# instance fields
.field private gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

.field private final gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

.field private final gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

.field private final lastTimestampMap:Landroid/util/SparseLongArray;

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

.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    const-string v0, "gestureSensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroid/util/SparseLongArray;

    invoke-direct {p2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->lastTimestampMap:Landroid/util/SparseLongArray;

    new-instance p2, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensorListener:Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/columbus/sensors/GestureSensor$Listener;)V

    return-void
.end method

.method public static final synthetic access$getGestureListener$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureListener:Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;

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
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {p0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->startListening()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopListening()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController;->gestureSensor:Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    invoke-interface {p0}, Lcom/google/android/systemui/columbus/sensors/Sensor;->stopListening()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
