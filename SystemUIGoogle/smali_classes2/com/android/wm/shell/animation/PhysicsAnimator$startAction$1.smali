.class final synthetic Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PhysicsAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/wm/shell/animation/PhysicsAnimator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;)V"
        }
    .end annotation

    const-class v3, Lcom/android/wm/shell/animation/PhysicsAnimator;

    const/4 v1, 0x0

    const-string v4, "startInternal"

    const-string v5, "startInternal$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->startInternal$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell()V

    return-void
.end method
