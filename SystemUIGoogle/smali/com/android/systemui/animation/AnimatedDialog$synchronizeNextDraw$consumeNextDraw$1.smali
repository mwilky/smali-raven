.class final synthetic Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw$consumeNextDraw(Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/SurfaceControl$Transaction;Lkotlin/jvm/functions/Function0;Landroid/view/ViewRootImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/SurfaceControl$Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $mergedTransactions:Landroid/view/SurfaceControl$Transaction;

.field final synthetic $remainingTransactions:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $then:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/SurfaceControl$Transaction;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$remainingTransactions:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$mergedTransactions:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$then:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$remainingTransactions:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$mergedTransactions:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->$then:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/animation/AnimatedDialog;->access$synchronizeNextDraw$onTransaction(Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/SurfaceControl$Transaction;Lkotlin/jvm/functions/Function0;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/AnimatedDialog$synchronizeNextDraw$consumeNextDraw$1;->accept(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
