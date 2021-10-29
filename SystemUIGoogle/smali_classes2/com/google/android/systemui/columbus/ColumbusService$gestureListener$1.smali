.class public final Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;
.super Ljava/lang/Object;
.source "ColumbusService.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/sensors/GestureController$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusService;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/columbus/sensors/GestureController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService$gestureListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,177:1\n1819#2,2:178\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService$gestureListener$1\n*L\n54#1,2:178\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusService;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureDetected(Lcom/google/android/systemui/columbus/sensors/GestureSensor;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusService;->access$getWakeLock$p(Lcom/google/android/systemui/columbus/ColumbusService;)Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;->acquire(J)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusService;->access$updateActiveAction(Lcom/google/android/systemui/columbus/ColumbusService;)Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->access$getEffects$p(Lcom/google/android/systemui/columbus/ColumbusService;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-interface {p1, p2, p3}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
