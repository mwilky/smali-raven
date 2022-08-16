.class public final Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;
.super Ljava/lang/Object;
.source "KeyboardMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mOnKeyboardShowingChanged:Landroid/app/PendingIntent;

.field public mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;)V

    invoke-virtual {p2, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mOnKeyboardShowingChanged:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onKeyboardShowingChange:Landroid/app/PendingIntent;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mOnKeyboardShowingChanged:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->trySendKeyboardShowing()V

    :cond_0
    return-void
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mShowing:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mShowing:Z

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->trySendKeyboardShowing()V

    :cond_1
    return-void
.end method

.method public final trySendKeyboardShowing()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mOnKeyboardShowingChanged:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mShowing:Z

    const-string v2, "is_keyboard_showing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mOnKeyboardShowingChanged:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/KeyboardMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KeyboardMonitor"

    const-string v1, "onKeyboardShowingChanged pending intent cancelled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
