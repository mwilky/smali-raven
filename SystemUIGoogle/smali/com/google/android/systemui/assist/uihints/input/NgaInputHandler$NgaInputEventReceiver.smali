.class public final Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "NgaInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NgaInputEventReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 8

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iget-object v4, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideRegions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;

    invoke-interface {v5}, Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda9;

    const/4 v7, 0x5

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchActionRegions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;

    invoke-interface {v5}, Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;->getTouchActionRegion()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
