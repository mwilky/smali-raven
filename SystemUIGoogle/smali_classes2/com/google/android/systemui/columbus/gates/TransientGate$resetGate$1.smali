.class final Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TransientGate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/TransientGate;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/TransientGate;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;->this$0:Lcom/google/android/systemui/columbus/gates/TransientGate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/TransientGate$resetGate$1;->this$0:Lcom/google/android/systemui/columbus/gates/TransientGate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method
