.class final Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/GestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumbusCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final performTrigger()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->access$getGestureSensorListener$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController;->access$getGestureSensor$p(Lcom/google/android/systemui/columbus/sensors/GestureController;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/systemui/columbus/sensors/GestureController$gestureSensorListener$1;->onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->help(Ljava/io/PrintWriter;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "trigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->performTrigger()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;->help(Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method public help(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "pw"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "usage: quick-tap <command>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Available commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  trigger"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
