.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;
.super Ljava/lang/Object;
.source "KeyguardLifecyclesDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mInvoked:Z

.field public final synthetic val$obj:Ljava/lang/Object;

.field public final synthetic val$traceCookie:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->val$obj:Ljava/lang/Object;

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->val$traceCookie:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->val$obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->mInvoked:Z

    const-string v1, "KeyguardLifecyclesDispatcher"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->mInvoked:Z

    :try_start_0
    const-string v0, "Waiting for KeyguardDrawnCallback#onDrawn"

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->val$traceCookie:I

    invoke-static {v0, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1$1;->val$obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-interface {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Exception calling onDrawn():"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string p0, "KeyguardDrawnCallback#onDrawn() invoked > 1 times"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
