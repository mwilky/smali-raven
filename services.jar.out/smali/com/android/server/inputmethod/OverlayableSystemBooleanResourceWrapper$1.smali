.class public Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "OverlayableSystemBooleanResourceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->create(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/function/Consumer;)Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$boolResId:I

.field public final synthetic val$callback:Ljava/util/function/Consumer;

.field public final synthetic val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

.field public final synthetic val$userContext:Landroid/content/Context;

.field public final synthetic val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/function/Consumer;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$userContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$boolResId:I

    iput-object p3, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$callback:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$userContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$boolResId:I

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->-$$Nest$smevaluate(Landroid/content/Context;I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$valueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$callback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;->val$object:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
