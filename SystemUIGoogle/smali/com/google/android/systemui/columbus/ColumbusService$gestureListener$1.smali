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
    value = "SMAP\nColumbusService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService$gestureListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1849#2,2:177\n*S KotlinDebug\n*F\n+ 1 ColumbusService.kt\ncom/google/android/systemui/columbus/ColumbusService$gestureListener$1\n*L\n53#1:177,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusService;->wakeLock:Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;

    const-wide/16 v1, 0x7d0

    iget-object v0, v0, Lcom/google/android/systemui/columbus/PowerManagerWrapper$WakeLockWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateActiveAction()Lcom/google/android/systemui/columbus/actions/Action;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService$gestureListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/columbus/actions/Action;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService;->effects:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    invoke-interface {v0, p1, p2}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
