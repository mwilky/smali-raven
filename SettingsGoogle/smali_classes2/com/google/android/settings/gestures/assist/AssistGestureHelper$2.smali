.class Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;
.super Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;
.source "AssistGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/gestures/assist/AssistGestureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastStage:I

.field final synthetic this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;


# direct methods
.method constructor <init>(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/IElmyraServiceGestureListener$Stub;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->mLastStage:I

    return-void
.end method


# virtual methods
.method public onGestureDetected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-static {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->access$100(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-static {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->access$100(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;->onGestureDetected()V

    :cond_0
    return-void
.end method

.method public onGestureProgress(FI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-static {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->access$100(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-static {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->access$100(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$GestureListener;->onGestureProgress(FI)V

    :cond_0
    iget p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->mLastStage:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureHelper;

    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureHelper;->access$400(Lcom/google/android/settings/gestures/assist/AssistGestureHelper;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1
    iput p2, p0, Lcom/google/android/settings/gestures/assist/AssistGestureHelper$2;->mLastStage:I

    return-void
.end method
