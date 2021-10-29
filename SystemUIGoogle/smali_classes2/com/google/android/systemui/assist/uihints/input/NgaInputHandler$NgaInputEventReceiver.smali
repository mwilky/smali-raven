.class Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "NgaInputHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NgaInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;-><init>(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/InputChannel;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler$NgaInputEventReceiver;->this$0:Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;->access$100(Lcom/google/android/systemui/assist/uihints/input/NgaInputHandler;Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
