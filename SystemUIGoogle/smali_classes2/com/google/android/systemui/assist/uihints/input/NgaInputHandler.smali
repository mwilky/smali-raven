.class public Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
.super Ljava/lang/Object;
.source "NgaInputHandler.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$EdgeLightsInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;
    }
.end annotation


# instance fields
.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private final mTouchActionRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field private final mTouchInsideRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$L9N5XQmHPRI8cNpD1lxSP1vN1-I(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->lambda$handleMotionEvent$0(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-Av2kwYsQ5LAxdLHGoAGq1M6jA(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->lambda$handleMotionEvent$1(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchActionRegions:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideRegions:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideRegions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;

    invoke-interface {v3}, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchActionRegions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;

    invoke-interface {v3}, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;->getTouchActionRegion()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$handleMotionEvent$0(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private static synthetic lambda$handleMotionEvent$1(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private startMonitoring()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const-string v1, "NgaInputHandler"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;-><init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void

    :cond_1
    :goto_0
    const-string p0, "Already monitoring"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopMonitoring()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method


# virtual methods
.method public onEdgeLightsInfo(Ljava/lang/String;Z)V
    .locals 0

    const-string p2, "HALF_LISTENING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->startMonitoring()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->stopMonitoring()V

    :goto_0
    return-void
.end method
