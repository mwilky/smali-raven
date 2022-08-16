.class public final Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
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
.field public mInputEventReceiver:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public final mTouchActionRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;",
            ">;"
        }
    .end annotation
.end field

.field public final mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field public final mTouchInsideRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Ljava/util/Set;Ljava/util/Set;)V
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


# virtual methods
.method public final onEdgeLightsInfo(Ljava/lang/String;Z)V
    .locals 1

    const-string p2, "HALF_LISTENING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    const-string p2, "NgaInputHandler"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;-><init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "Already monitoring"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputEventReceiver:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_4
    :goto_1
    return-void
.end method
