.class public abstract Lcom/google/android/systemui/columbus/gates/TransientGate;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "TransientGate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/TransientGate$sam$java_lang_Runnable$0;
    }
.end annotation


# instance fields
.field private final resetGate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final resetGateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resetGateHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGateHandler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;-><init>(Lcom/google/android/systemui/columbus/gates/TransientGate;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGate:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method protected final blockForMillis(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGate:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/google/android/systemui/columbus/gates/TransientGate$sam$java_lang_Runnable$0;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/columbus/gates/TransientGate$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGateHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/TransientGate;->resetGate:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/google/android/systemui/columbus/gates/TransientGate$sam$java_lang_Runnable$0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/gates/TransientGate$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
